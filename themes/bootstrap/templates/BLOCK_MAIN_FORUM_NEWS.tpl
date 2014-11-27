<section class="panel panel-default panel-block_main_forum_news">
	{+START,IF_NON_EMPTY,{TITLE}}
		<div class="panel-heading">
			<h3 class="panel-title">{TITLE}</h3>
		</div>
	{+END}

	<div class="panel-content">
		<div class="xhtml_validator_off">
			{CONTENT}
		</div>

		{+START,IF_NON_EMPTY,{ARCHIVE_URL}}
			<ul class="list-inline">
				<li><a href="{ARCHIVE_URL*}">{!VIEW_ARCHIVE}</a></li>
			</ul>
		{+END}
	</div>
</section>

