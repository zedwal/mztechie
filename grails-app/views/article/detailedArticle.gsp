<meta name="layout" content="main" />
<div class="post">
  <h2 class="title">
    ${article?.atext}
    <span style="font-size:small; margin-right: 10px;">
      <g:link controller="article"
              action="edit"
              params="${[id: article?.atext?.replaceAll(' ','_')]
                      + mz.padme(article?.published)}">
        Edit
      </g:link>
    </span>

    <script src="http://connect.facebook.net/en_US/all.js#xfbml=1">
    </script>
    <fb:like
       href="${createLink(action: 'show',
             controlle: 'article',
             params: [id: article?.atext?.replaceAll(' ','_')]
             + mz.padme(article?.published),
             absolute: true)}"
       layout="button_count"
       show_faces="true" width="auto"></fb:like>

  </h2>

  <g:render template="articleMeta" model="[article:article]" />

  <div class="entry">
    <markdown:renderHtml text="${article?.details}"/>

    <g:render template="tags" model="[tags: article?.tags]" />
    <br/>

    <b:bookmark
       title="${article?.atext}" target="_blank"
       permalink="${createLink(action: 'show',
                  controlle: 'article',
                  params: params
                  + [id: article?.atext?.replaceAll(' ','_')]
                  + mz.padme(article?.published),
                  absolute: true)}"
       type="image"/>

    <hr/>
    <g:render template="postedComments"
              model="[comments: article?.comments]"/>

    <g:render template="addComment"
              model="[articleid: article?.id]"/>
  </div>
</div>
