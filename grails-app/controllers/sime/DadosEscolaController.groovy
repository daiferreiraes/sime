package sime



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured
@Secured('isFullyAuthenticated()')

@Transactional(readOnly = true)
class DadosEscolaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DadosEscola.list(params), model:[dadosEscolaInstanceCount: DadosEscola.count()]
    }

    def show(DadosEscola dadosEscolaInstance) {
        respond dadosEscolaInstance
    }

    def create() {
        respond new DadosEscola(params)
    }

    @Transactional
    def save(DadosEscola dadosEscolaInstance) {
        if (dadosEscolaInstance == null) {
            notFound()
            return
        }

        if (dadosEscolaInstance.hasErrors()) {
            respond dadosEscolaInstance.errors, view:'create'
            return
        }

        dadosEscolaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dadosEscola.label', default: 'DadosEscola'), dadosEscolaInstance.id])
                redirect dadosEscolaInstance
            }
            '*' { respond dadosEscolaInstance, [status: CREATED] }
        }
    }

    def edit(DadosEscola dadosEscolaInstance) {
        respond dadosEscolaInstance
    }

    @Transactional
    def update(DadosEscola dadosEscolaInstance) {
        if (dadosEscolaInstance == null) {
            notFound()
            return
        }

        if (dadosEscolaInstance.hasErrors()) {
            respond dadosEscolaInstance.errors, view:'edit'
            return
        }

        dadosEscolaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DadosEscola.label', default: 'DadosEscola'), dadosEscolaInstance.id])
                redirect dadosEscolaInstance
            }
            '*'{ respond dadosEscolaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DadosEscola dadosEscolaInstance) {

        if (dadosEscolaInstance == null) {
            notFound()
            return
        }

        dadosEscolaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DadosEscola.label', default: 'DadosEscola'), dadosEscolaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dadosEscola.label', default: 'DadosEscola'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
