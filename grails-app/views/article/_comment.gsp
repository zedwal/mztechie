<div class="cmeta">
  <div class="comment_top">
    <div class="comment_meta">
      <g:render template="commentMeta"
                model="[comment:comment]"/>
    </div>

    <div class="numorder">
      <span class="numero">${num+1}</span>
    </div>

  </div>
  <div style="white-space: -moz-pre-wrap;
              white-space: -pre-wrap;
              white-space: -o-pre-wrap;
              white-space: pre-wrap;
              word-wrap: break-word;">
    ${comment.comment.encodeAsHTML()}
  </div>
</div>
