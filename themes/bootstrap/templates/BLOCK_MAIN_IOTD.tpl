<div class="hslice">
	<section class="panel panel-default panel-block_main_iotd">
		<div class="panel-heading">
			<h3 class="panel-title"><span class="entry-title">{!IOTD}</span></h3>
		</div>
		<div class="panel-body"

		<div class="entry-content">
			{CONTENT}
		</div>

		<ul class="list-inline">
			{+START,IF_NON_EMPTY,{FULL_URL}}<li><a href="{FULL_URL*}" title="{!VIEW}: {!IOTD} #{ID*}">{!VIEW}</a>{+START,IF,{$NOT,{$MATCH_KEY_MATCH,forum:topicview}}}{+START,IF_PASSED_AND_TRUE,COMMENT_COUNT} <span class="comment_count">{$COMMENT_COUNT,iotds,{ID}}</span>{+END}{+END}{+END}</li>
			<li><a rel="archives" target="_top" href="{ARCHIVE_URL*}" title="{!VIEW_ARCHIVE}: {!IOTDS}">{!VIEW_ARCHIVE}</a></li>
			{+START,IF_NON_EMPTY,{SUBMIT_URL}}<li><a rel="add" title="{!ADD_IOTD}" target="_top" href="{SUBMIT_URL*}">{!ADD}</a></li>{+END}
		</ul>
		</div>
	</section>
</div>
