package zedwal
import java.text.SimpleDateFormat

class MzTagLib {
  static namespace = "mz"

  def format(date, dformat) {
    def df = new SimpleDateFormat(dformat)
    return df.format(date)
  }

  def formatDate = {
    attrs->

    def date = attrs?.date
    String dformat = attrs.format?
      attrs.format : "EEE, dd MMM yyyy hh:mm aaa z"
    out << format(date?: new Date(), dformat)
  }

  def shortDesc = {
    attrs->

    String desc = attrs.content
    if (desc.length() >500) {
      out << (desc.substring(0, 500))
      out << ("....")
    }
    else
      out << (desc)
  }

  def padVal = {
    attrs ->

    out << (attrs.val?.toString().padLeft(2,'0'))
  }

  def padme = {
    date ->

    if (!date)
      throw GrailsTagException("Date argument is required")

    def padmap = [ : ]
    padmap['date'] = date.date.toString().padLeft(2,'0')
    padmap['month'] = date.month.toString().padLeft(2,'0')
    padmap['year'] = date.year + 1900

    return padmap
  }


  def truncate = {
    attrs, body ->

    def contents = body()
    if (contents.length() > 500) {

      out << (contents.substring(0, 500))
      out << ("....")
    }
    else
      out << (contents)
  }
}
