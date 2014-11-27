<section class="panel panel-default panel-block_side_tag_cloud">
	<div class="panel-heading">
		<h3 class="panel-title">{TITLE*}</h3>
	</div>

	<div class="panel-body">
		{+START,LOOP,TAGS}
			<a rel="tag" href="{LINK*}" style="font-size: {EM*}em">{TAG*}</a>
		{+END}
	</div>
</section>
