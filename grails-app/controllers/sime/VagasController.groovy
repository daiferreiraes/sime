package sime



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VagasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vagas.list(params), model:[vagasInstanceCount: Vagas.count()]
    }

    def show(Vagas vagasInstance) {
        respond vagasInstance
    }

    def create() {
        respond new Vagas(params)
    }

    @Transactional
    def save(Vagas vagasInstance) {
        if (vagasInstance == null) {
            notFound()
            return
        }

        if (vagasInstance.hasErrors()) {
            respond vagasInstance.errors, view:'create'
            return
        }

        vagasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vagas.label', default: 'Vagas'), vagasInstance.id])
                redirect vagasInstance
            }
            '*' { respond vagasInstance, [status: CREATED] }
        }
    }

    def edit(Vagas vagasInstance) {
        respond vagasInstance
    }

    @Transactional
    def update(Vagas vagasInstance) {
        if (vagasInstance == null) {
            notFound()
            return
        }

        if (vagasInstance.hasErrors()) {
            respond vagasInstance.errors, view:'edit'
            return
        }

        vagasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vagas.label', default: 'Vagas'), vagasInstance.id])
                redirect vagasInstance
            }
            '*'{ respond vagasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Vagas vagasInstance) {

        if (vagasInstance == null) {
            notFound()
            return
        }

        vagasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vagas.label', default: 'Vagas'), vagasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vagas.label', default: 'Vagas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
