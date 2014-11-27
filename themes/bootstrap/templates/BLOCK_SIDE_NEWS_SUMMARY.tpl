<div class="panel panel-default panel-block_side_news_summary">
	<div class="panel-body">
	<p class="tiny_paragraph">
		<a title="{$STRIP_TAGS,{NEWS_TITLE}}" href="{FULL_URL*}">{$TRUNCATE_LEFT,{NEWS_TITLE},30,0,1}</a>
	</p>

	<p class="tiny_paragraph help-text">
		{!BY_SIMPLE,{AUTHOR*}}
	</p>

	<p class="tiny_paragraph help-text">
		{!POSTED_TIME_SIMPLE,{DATE*}}
	</p>
	</div>
</div>
