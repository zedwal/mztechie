<div class="tags">
  <strong>Tags: </strong>
  <g:each var="tag" in="${tags}">
    <g:link controller="article"
            action="tag"
            id="${tag?.name}">${tag?.name}</g:link>
  </g:each>
</div>
