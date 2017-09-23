package sime



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TiposEscolaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TiposEscola.list(params), model:[tiposEscolaInstanceCount: TiposEscola.count()]
    }

    def show(TiposEscola tiposEscolaInstance) {
        respond tiposEscolaInstance
    }

    def create() {
        respond new TiposEscola(params)
    }

    @Transactional
    def save(TiposEscola tiposEscolaInstance) {
        if (tiposEscolaInstance == null) {
            notFound()
            return
        }

        if (tiposEscolaInstance.hasErrors()) {
            respond tiposEscolaInstance.errors, view:'create'
            return
        }

        tiposEscolaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tiposEscola.label', default: 'TiposEscola'), tiposEscolaInstance.id])
                redirect tiposEscolaInstance
            }
            '*' { respond tiposEscolaInstance, [status: CREATED] }
        }
    }

    def edit(TiposEscola tiposEscolaInstance) {
        respond tiposEscolaInstance
    }

    @Transactional
    def update(TiposEscola tiposEscolaInstance) {
        if (tiposEscolaInstance == null) {
            notFound()
            return
        }

        if (tiposEscolaInstance.hasErrors()) {
            respond tiposEscolaInstance.errors, view:'edit'
            return
        }

        tiposEscolaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TiposEscola.label', default: 'TiposEscola'), tiposEscolaInstance.id])
                redirect tiposEscolaInstance
            }
            '*'{ respond tiposEscolaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TiposEscola tiposEscolaInstance) {

        if (tiposEscolaInstance == null) {
            notFound()
            return
        }

        tiposEscolaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TiposEscola.label', default: 'TiposEscola'), tiposEscolaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tiposEscola.label', default: 'TiposEscola'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
