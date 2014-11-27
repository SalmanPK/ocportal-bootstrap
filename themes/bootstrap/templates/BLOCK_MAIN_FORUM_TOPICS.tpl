<section id="tray_{TITLE|}" class="panel panel-default panel-collapsible panel-block_main_forum_topics">
	<a class="panel-heading" href="javascript:" data-toggle="collapse" data-target="#collapse-forum-topics-{TITLE|}">
		<h3 class="panel-title">{TITLE}</h3>
	</a>

	<div class="panel-collapse collapse in" id="collapse-forum-topics-{TITLE|}">
		<div class="panel-body">
			{CONTENT}

			{+START,IF_NON_EMPTY,{SUBMIT_URL}}
			<ul class="list-inline">
				<li><a href="{SUBMIT_URL*}">{!ADD_TOPIC}</a></li>
			</ul>
			{+END}
		</div>
	</div>
</section>

{+START,IF,{$JS_ON}}
	<script>		handle_tray_cookie_setting('{TITLE|}');
	</script>
{+END}
