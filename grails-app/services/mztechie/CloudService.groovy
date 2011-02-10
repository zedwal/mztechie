package mztechie
import com.zedwal.domain.Article

class CloudService {

  static transactional = true

  def tagCloud = {

    // Categories cluster
    def tagList = Article.withCriteria {

      createAlias ( "tags", "t" )
      cache true

      projections {
        groupProperty ( "t.name" )
        count ( "t.id" )
      }
    }

    def cloud = tagList.inject([ : ]) {
      map, tag ->

      map[ tag[0] ] = tag[1]; map
    }
    return cloud
  }

  def catCloud = {
    // Categories cluster
    def catList = Article.withCriteria {

      createAlias ( "course", "c" )
      cache true

      projections {
        groupProperty ( "c.name" )
        count ( "c.id" )
      }
    }

    def cloud = catList.inject([ : ]) {
      map, tag ->

      map[ tag[0] ] = tag[1]; map
    }
    return cloud
  }
}
