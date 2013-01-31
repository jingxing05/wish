package wish

import org.springframework.dao.DataIntegrityViolationException

class NewlywedsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	def beforeInterceptor = [action:this.&auth,except:['login', 'logout', 'logincheck']]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [newlywedsInstanceList: Newlyweds.list(params), newlywedsInstanceTotal: Newlyweds.count()]
    }

    def create() {
        [newlywedsInstance: new Newlyweds(params)]
    }

    def save() {
        def newlywedsInstance = new Newlyweds(params)
        if (!newlywedsInstance.save(flush: true)) {
            render(view: "create", model: [newlywedsInstance: newlywedsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), newlywedsInstance.id])
        redirect(action: "show", id: newlywedsInstance.id)
    }

    def show(Long id) {
        def newlywedsInstance = Newlyweds.get(id)
        if (!newlywedsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), id])
            redirect(action: "list")
            return
        }

        [newlywedsInstance: newlywedsInstance]
    }

    def edit(Long id) {
        def newlywedsInstance = Newlyweds.get(id)
        if (!newlywedsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), id])
            redirect(action: "list")
            return
        }

        [newlywedsInstance: newlywedsInstance]
    }

    def update(Long id, Long version) {
        def newlywedsInstance = Newlyweds.get(id)
        if (!newlywedsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (newlywedsInstance.version > version) {
                newlywedsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'newlyweds.label', default: 'Newlyweds')] as Object[],
                          "Another user has updated this Newlyweds while you were editing")
                render(view: "edit", model: [newlywedsInstance: newlywedsInstance])
                return
            }
        }

        newlywedsInstance.properties = params

        if (!newlywedsInstance.save(flush: true)) {
            render(view: "edit", model: [newlywedsInstance: newlywedsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), newlywedsInstance.id])
        redirect(action: "show", id: newlywedsInstance.id)
    }

    def delete(Long id) {
        def newlywedsInstance = Newlyweds.get(id)
        if (!newlywedsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), id])
            redirect(action: "list")
            return
        }

        try {
            newlywedsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'newlyweds.label', default: 'Newlyweds'), id])
            redirect(action: "show", id: id)
        }
    }
	
	//登录
	def login(){
		
	}
	
	
	//认证
	def auth(){
		if(session.master == '靖星'){ 
		  flash.message = "Hello 靖星主人!"
		 }else{
			flash.message = "对不起！木有认证."
			redirect(action:"login")
			return false
		 }
		}
	
	
	 //认证
		def logincheck(){
			if(params.authcode.toString()=='Zeng!@#qing)(*feng05'){ 
			  session.master = '靖星'
              flash.message = "Hello 主人!"
              redirect(action:"list") 
             }else{
				flash.message = "对不起！密码错误，请重试."
				redirect(action:"login") 
			 }
			}
		
		//登出
		def logout = {
			flash.message = "Goodbye 主人"
			session.authcode = null
			redirect(controller:"wish")
			}
}
