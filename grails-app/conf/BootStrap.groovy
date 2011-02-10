import com.zedwal.domain.User
import org.apache.commons.lang.StringUtils

class BootStrap {

  def init = {
    servletContext ->

    def user = User.findByUserId("xyz")
    if (!user) {
      user = new User()
      user.userId = "xyx"
      user.fname = "abc"
      user.lname = "xyz"
      user.role = "admin_p"
      user.password = "dummypassphrase".encodeAsPassword()
      user.personalID = 1234
      println "encoded password: " + user.password
      user.save()
      println "saved admin credentials..... :)"
    }
    // Adding StringUtils class capabalities to native String class
    //String.metaClass.mixin StringUtils

  }

  def destroy = {
  }
}
