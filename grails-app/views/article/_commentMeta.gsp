<div>
  <p class="meta">
    Posted by
    <g:if test="${comment?.webpage}">
      <g:link url="${comment?.webpage}" target="_blank">
        ${comment.name}
      </g:link>
    </g:if>
    <g:else>
      <b>${comment.name}</b>
    </g:else>
    on <mz:formatDate date="${comment?.date}" />
  </p>
</div>
