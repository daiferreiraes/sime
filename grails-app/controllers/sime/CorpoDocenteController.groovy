package sime



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured
@Secured('isFullyAuthenticated()')


@Transactional(readOnly = true)
class CorpoDocenteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CorpoDocente.list(params), model:[corpoDocenteInstanceCount: CorpoDocente.count()]
    }

    def show(CorpoDocente corpoDocenteInstance) {
        respond corpoDocenteInstance
    }

    def create() {
        respond new CorpoDocente(params)
    }

    @Transactional
    def save(CorpoDocente corpoDocenteInstance) {
        if (corpoDocenteInstance == null) {
            notFound()
            return
        }

        if (corpoDocenteInstance.hasErrors()) {
            respond corpoDocenteInstance.errors, view:'create'
            return
        }

        corpoDocenteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'corpoDocente.label', default: 'CorpoDocente'), corpoDocenteInstance.id])
                redirect corpoDocenteInstance
            }
            '*' { respond corpoDocenteInstance, [status: CREATED] }
        }
    }

    def edit(CorpoDocente corpoDocenteInstance) {
        respond corpoDocenteInstance
    }

    @Transactional
    def update(CorpoDocente corpoDocenteInstance) {
        if (corpoDocenteInstance == null) {
            notFound()
            return
        }

        if (corpoDocenteInstance.hasErrors()) {
            respond corpoDocenteInstance.errors, view:'edit'
            return
        }

        corpoDocenteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CorpoDocente.label', default: 'CorpoDocente'), corpoDocenteInstance.id])
                redirect corpoDocenteInstance
            }
            '*'{ respond corpoDocenteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CorpoDocente corpoDocenteInstance) {

        if (corpoDocenteInstance == null) {
            notFound()
            return
        }

        corpoDocenteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CorpoDocente.label', default: 'CorpoDocente'), corpoDocenteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'corpoDocente.label', default: 'CorpoDocente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
