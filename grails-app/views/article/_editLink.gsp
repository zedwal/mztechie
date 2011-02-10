<span style="font-size:small;">
  <g:link controller="article"
          action="edit"
          params="[id: article?.atext?.replaceAll(' ','_'),
                  year: article?.published?.year + 1900,
                  month: article?.published?.month,
                  date: article?.published?.date]">
    Edit
  </g:link>
</span>
