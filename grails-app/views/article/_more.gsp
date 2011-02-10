<div class="more">
  <g:link controller="article" action="show"
          params="[id: article?.atext?.replaceAll(' ','_'),
                  year: article?.published?.year + 1900,
                  month: mz.padVal(val: article?.published?.month),
                  date: mz.padVal(val: article?.published?.date)]">more &#187</g:link>
</div>
