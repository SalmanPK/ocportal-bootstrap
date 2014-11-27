<section class="panel panel-default panel-block_side_personal_stats">
	<div class="panel-heading">
		<h3 class="panel-title">{USERNAME*}</h3>
	</div>
	<div class="panel-body">
		{+START,IF_NON_EMPTY,{AVATAR_URL}}
		<div class="personal_stats_avatar"><img src="{AVATAR_URL*}" title="{!AVATAR}" alt="{!AVATAR}" /></div>
		{+END}

		{+START,IF_NON_EMPTY,{DETAILS}}
		<ul class="compact_list">
			{DETAILS}
		</ul>
		{+END}

		{+START,IF_NON_EMPTY,{LINKS}}
		<ul class="associated_links_block_group">
			{LINKS}
		</ul>
		{+END}
	</div>
</section>
