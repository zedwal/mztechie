class UrlMappings {

  static mappings = {
	"/$controller/$action?/$id?"{
	  constraints {
		// apply constraints here
	  }
	}


	"/showArticles/$year?/$month?/$date?/$id?"{
      controller = "article"
      action = "show"
	  constraints {
		// apply constraints here
	  }
	}

	"/editArticle/$year?/$month?/$date?/$id"{
      controller = "article"
      action = "edit"
	  constraints {
		// apply constraints here
	  }
	}


	"/posts/category/$id/"{
      controller = "article"
      action = "category"
	  constraints {
		// apply constraints here
	  }
	}

	"/posts/tag/$id/"{
      controller = "article"
      action = "tag"
	  constraints {
		// apply constraints here
	  }
	}


	"/" (controller: 'article', action:"index")
	"500"(view:'/error')
    "404" (view:'/notFound')

  }
}
