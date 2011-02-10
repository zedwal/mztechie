
<div class="post">
  <h2 id="comments" class="title" >Comments</h2>

  <div class="entry" style="padding: 5px;">
    <g:if test="${comments.size()}">
      <g:each status="i" var="comment"
              in="${comments.sort{it.date}}">
        <g:render template="comment"
                  model="[comment: comment,
                         num: i]" />
      </g:each>
    </g:if>
    <g:else>
      <p> No comment posted yet. Be the first to post comment.
    </g:else>
  </div>
</div>
