package com.zedwal.controllers
import com.zedwal.domain.User
import com.zedwal.domain.Article

class MainController {

  def cloudService
  def mailService // injecting mail service

  def beforeInterceptor = {
    log.info "Tracing action ${actionUri}"
  }

  def index = {
    // Popular search text cloud
    def psearches

    // Fetch recent 7 comments only
    def recentComments

    // Month wise clusters
    def articles = Article.list()

    // Categories cluster
    def categories = cloudService.catCloud()

    // Tags cloud
    def tags = cloudService.tagCloud( )

    render (view: "index",
            model: [articles : articles,
                    categories: categories, tags: tags])

  }

  def contact = { render (template:"contactMe") }

  def email = {
    sendMail {
      from "xyz@gmail.com"
      to "abc@gmail.com"
      subject "Hello xyz!"
      html g.render(template: "mailFormat", model: [info: params])
    }

    flash.message = "Thanks for your mail, 'll contact u shortly."
    redirect (action: 'index')
  }

  def loginPage = {
    if (session.user){
      redirect (controller: "archive")
    }

    render (template: "login")
  }

  def authenticate = {
    def user = User.findByUserId(params.userid)
    println "USER FOUND: " + user
    if (user &&
        (user.password == params.password.encodeAsPassword()) &&
        (user.role == "admin_p")) {
      println "found"
      session.user = user
      redirect (action: "index")
    } else {
      println "NOT FOUND"
      flash.message="Invalid credentials."
      redirect (action: "index")
    }
  }

  def logout = {
    session.user = null
    flash.message = "You have logged out successfully."
    redirect (action: "index")
  }
}

  /*
    def longUrl =
      "http://www.ibm.com/developerworks/java/library/j-grails09159/index.html"
    def addr = "http://tinyurl.com/api-create.php?url=${longUrl}"
    println "short url: " + addr.toURL().text
*/
