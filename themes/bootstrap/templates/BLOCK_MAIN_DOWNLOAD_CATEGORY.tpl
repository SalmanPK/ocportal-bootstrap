{+START,SET,DC_CONTENT}
	{+START,IF_NON_EMPTY,{SUBCATEGORIES}}
		<section class="panel panel-default panel-block_main_download_category">
			<div class="panel-heading">
				<h3 class="panel-title">{!SUBCATEGORIES_HERE}</h3>
			</div>
			<div class="panel-body">
				{SUBCATEGORIES}
			</div>
		</section>
	{+END}

	{+START,IF_NON_EMPTY,{DOWNLOADS}}
		{DOWNLOADS}
	{+END}

	{+START,IF_NON_EMPTY,{SUBMIT_URL}}
		<p class="associated-link associated_links_block_group">
			<a rel="add" href="{SUBMIT_URL*}">{!ADD_DOWNLOAD}</a>
		</p>
	{+END}
{+END}

<section class="panel panel-default panel-block_main_download_category">
	<div class="panel-heading">
	{+START,IF_NON_EMPTY,{TITLE}}<h3 class="panel-title">{TITLE}</h3>{+END}
	</div>
	<div class="panel-body">
	{$GET,DC_CONTENT}
	</div>
</section>
