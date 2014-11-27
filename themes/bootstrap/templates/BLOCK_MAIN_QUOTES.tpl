<section class="panel panel-default panel-block_main_quotes">
	{+START,IF_NON_EMPTY,{TITLE}}
		<div class="panel-heading">
			<h3 class="panel-title">{TITLE}</h3>
		</div>
	{+END}

	<div class="panel-body">
		<blockquote class="quotes_block">
			{CONTENT}
		</blockquote>

		{+START,IF_NON_EMPTY,{EDIT_URL}}
			<ul class="list-inline">
				<li><a href="{EDIT_URL*}" title="{!EDIT}: {TITLE}">{!EDIT}</a></li>
			</ul>
		{+END}
	</div>
</section>

