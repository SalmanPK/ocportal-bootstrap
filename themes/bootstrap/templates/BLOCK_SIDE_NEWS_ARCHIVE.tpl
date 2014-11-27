<section class="panel panel-default panel-block_side_news_archive">
	<div class="panel-heading"><h3 class="panel-title">{TITLE*}</h3></div>

	<div class="panel-body">
	<ul class="compact_list">
		{+START,LOOP,YEARS}
			<li>{YEAR}
				<ul class="compact_list help-text">
					{+START,LOOP,TIMES}
						<li>
							<a href="{URL*}">{MONTH_STRING}</a>
						</li>
					{+END}
				</ul>
			</li>
		{+END}
	</ul>
	</div>
</section>
