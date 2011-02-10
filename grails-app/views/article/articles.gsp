<meta name="layout" content="main" />
<g:if test="${flash.message}">
  <g:render template="/flash" model="[msg: flash.message]" />
</g:if>

<g:if test="${articles?.size()}">
  <g:each var="article" in="${articles}">
    <g:render template="article"
              model="[article:article]" />
  </g:each>

  <div class="paginateme">
    <g:paginate max="5"
                maxsteps="0" controller="article"
                action="index" total="${totalCount}" />
  </div>
</g:if>
<g:else>
  <h2> No Article Found </h2>
</g:else>
<!-- <g:link controller="article"> Add New Article</g:link> -->
