package autenticacao

import org.apache.commons.lang.builder.HashCodeBuilder

class AdministradorRegra implements Serializable {

	private static final long serialVersionUID = 1

	Administrador administrador
	Regra regra

	boolean equals(other) {
		if (!(other instanceof AdministradorRegra)) {
			return false
		}

		other.administrador?.id == administrador?.id &&
		other.regra?.id == regra?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (administrador) builder.append(administrador.id)
		if (regra) builder.append(regra.id)
		builder.toHashCode()
	}

	static AdministradorRegra get(long administradorId, long regraId) {
		AdministradorRegra.where {
			administrador == Administrador.load(administradorId) &&
			regra == Regra.load(regraId)
		}.get()
	}

	static boolean exists(long administradorId, long regraId) {
		AdministradorRegra.where {
			administrador == Administrador.load(administradorId) &&
			regra == Regra.load(regraId)
		}.count() > 0
	}

	static AdministradorRegra create(Administrador administrador, Regra regra, boolean flush = false) {
		def instance = new AdministradorRegra(administrador: administrador, regra: regra)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Administrador u, Regra r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = AdministradorRegra.where {
			administrador == Administrador.load(u.id) &&
			regra == Regra.load(r.id)
		}.deleteAll()

		if (flush) { AdministradorRegra.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(Administrador u, boolean flush = false) {
		if (u == null) return

		AdministradorRegra.where {
			administrador == Administrador.load(u.id)
		}.deleteAll()

		if (flush) { AdministradorRegra.withSession { it.flush() } }
	}

	static void removeAll(Regra r, boolean flush = false) {
		if (r == null) return

		AdministradorRegra.where {
			regra == Regra.load(r.id)
		}.deleteAll()

		if (flush) { AdministradorRegra.withSession { it.flush() } }
	}

	static constraints = {
		regra validator: { Regra r, AdministradorRegra ur ->
			if (ur.administrador == null) return
			boolean existing = false
			AdministradorRegra.withNewSession {
				existing = AdministradorRegra.exists(ur.administrador.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['regra', 'administrador']
		version false
	}
}
