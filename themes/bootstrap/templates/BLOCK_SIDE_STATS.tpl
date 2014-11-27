<section class="panel panel-default panel-block_side_stats">
	<div class="panel-heading">
		<h3 class="panel-title">{!STATISTICS}</h3>
	</div>
	<div class="panel-body">
		{CONTENT}
		{+START,IF_EMPTY,{CONTENT}}
			<p class="nothing_here">{!NONE}</p>
		{+END}
	</div>
</section>
