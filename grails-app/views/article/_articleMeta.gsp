<div class="meta">
  Posted by
  <a href="#">${article?.author?.name}</a>
  in Category
  <g:link controller="article"
          action="category"
          id="${article?.course?.name}">
    ${article?.course?.name}</g:link>
  on <mz:formatDate date="${article?.published}" />
  &bull;
  <g:link controller="article"
          action="show"
          params="[id: article?.atext?.replaceAll(' ','_'),
                  year: article?.published?.year + 1900,
                  month: mz.padVal(val: article?.published?.month),
                  date: mz.padVal(val: article?.published?.date)]"
          fragment="comments">
    Comments (${article?.comments?.size()})
  </g:link>

</div>
