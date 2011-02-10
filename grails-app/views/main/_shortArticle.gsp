<div class="post">
  <h2 class="title">
    <a> ${article?.articleTitle.encodeAsHTML()} </a>
  </h2>

  <p class="meta">
    Posted by <a href="#">
      ${article?.author?.name?.encodeAsHTML()}
    </a>
    on <mz:formatDate date="${article?.published}" />
	&nbsp;&bull;&nbsp;
    <a href="#" class="comments">Comments
      (${article?.comments?.size()})</a>
    &nbsp;&bull;&nbsp;
    <g:link controller="article"
            action="show" id="${article.id}">
      Full article
    </g:link>
  </p>

  <div class="entry">
	<p>
      <mz:shortDesc content="${article?.description}" />
    </p>
  </div>
</div>
