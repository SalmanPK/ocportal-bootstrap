<div class="panel-news-brief-wrap">
	<div class="panel panel-default panel-news-brief">
		<div class="panel-body">
			<span class="right float-separation">{DATE*}</span>

			<span class="horiz_field_sep"><a href="{URL*}">{+START,FRACTIONAL_EDITABLE,{TITLE_PLAIN},title,_SEARCH:cms_news:type=__ed:id={ID},1}{TITLE}{+END}</a></span>
			{+START,IF_PASSED_AND_TRUE,COMMENT_COUNT} <span class="comment-count">{$COMMENT_COUNT,news,{ID}}</span>{+END}
		</div>
	</div>
</div>
