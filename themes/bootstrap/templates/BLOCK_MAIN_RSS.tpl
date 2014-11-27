<section class="panel panel-default panel-block_main_rss">
	<div class="panel-heading">
		<h3>{$?,{$IS_NON_EMPTY,{TITLE}},{!NEWS_FROM}: {TITLE}}</h3>
	</div>
	<div class="panel-body">
		<div class="xhtml_validator_off">
			{+START,IF_NON_EMPTY,{AUTHOR}}
				<p>{AUTHOR`}</p>
			{+END}

			{CONTENT`}

			{+START,IF_NON_EMPTY,{COPYRIGHT}}
				<p>{COPYRIGHT`}</p>
			{+END}
		</div>
	</div>
</section>

