{+START,IF_NON_EMPTY,{CONTENT}}
	<section class="panel panel-default panel-block_side_root_galleries">
		<div class="panel-heading"><h3 class="panel-title">{!GALLERIES}</h3></div>

		<div class="side_galleries_block panel-body">
			{+START,IF,{$NOT,{DEPTH}}}
				<ul class="compact_list">{CONTENT}</ul>
			{+END}
			{+START,IF,{DEPTH}}
				{CONTENT}
			{+END}
		</div>
	</section>
{+END}

