<meta name="layout" content="main" />
<div class="post">
  <h2 class="title">
    ${article?.atext}
    <span style="font-size:small;">
      <g:link controller="article"
              action="edit"
              params="${[id: article?.atext?.replaceAll(' ','_')]
                      + mz.padme(article?.published)}">
        Edit
      </g:link>
    </span>
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
                  params: [id: article?.atext?.replaceAll(' ','_')]
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
