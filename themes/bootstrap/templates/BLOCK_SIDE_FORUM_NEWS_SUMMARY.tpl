<div class="panel panel-default panel-block_side_forum_news_summary">
	<div class="panel-body">
		<p class="tiny_paragraph">
			<a title="{$STRIP_TAGS,{NEWS_TITLE}} {!LINK_NEW_WINDOW}" rel="external" target="_blank" href="{FULL_URL*}">{$TRUNCATE_LEFT,{NEWS_TITLE},30,0,1}</a>
		</p>

		<ul class="horizontal-meta-details tiny_paragraph help-text" role="contentinfo">
			<li>{!BY_SIMPLE,{FIRSTUSERNAME*}}</li>
			<li>{!_COMMENTS,{$SUBTRACT,{REPLIES},1}}</li>
		</ul>

		<p class="tiny_paragraph help-text">
			<span class="field_name">{!LAST_POST}:</span> {DATE*}
		</p>
	</div>
</div>
