<div class="post">
  <div class="ptitle">
    <h2> ${article?.atext}
      <g:render template="editLink"
                model="[article: article]" />
    </h2>
  </div>

  <g:render template="articleMeta" model="[article:article]" />

  <div class="material">
    <markdown:renderHtml text="${article?.summary}"/>
  </div>

  <div class="pfooter">

    <g:render template="tags"
              model="[tags: article?.tags]" />
    <g:render template="more" model="[article: article]" />
  </div>
  <div class="clear">&nbsp;</div>
  <hr />
</div> <!-- post end's here-->
