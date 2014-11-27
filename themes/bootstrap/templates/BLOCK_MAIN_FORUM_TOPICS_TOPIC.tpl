<div class="panel panel-default panel-block_main_forum_topics_topic">
	<div class="panel-body">
	<p class="tiny_paragraph">
		<a title="{$STRIP_TAGS,{TITLE}} {!LINK_NEW_WINDOW}" rel="external" target="_blank" href="{TOPIC_URL*}">{$TRUNCATE_LEFT,{TITLE},30,0,1}</a>
	</p>

	<ul class="tiny_paragraph help-text horizontal-meta-details" role="contentinfo">
		<li>{!BY_SIMPLE,{USERNAME*}}</li>
		<li>{!POST_PLU,{NUM_POSTS*}}</li>
	</ul>

	<p class="tiny_paragraph help-text">
		<span class="field_name">{!LAST_POST}:</span> {DATE*}
	</p>
	</div>
</div>
