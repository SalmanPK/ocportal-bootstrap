{+START,IF_ARRAY_NON_EMPTY,CHILDREN}
	<div class="panel panel-default panel-block_main_comcode_page_children">
		<div class="panel-body">
			<p class="lonely_label">{!CHILD_PAGES}:</p>
			<ul class="category_list">
				{+START,LOOP,CHILDREN}
					<li>
						<div class="clearfix">
							&bull; <a href="{$PAGE_LINK*,{ZONE}:{PAGE}}">{TITLE}</a>
						</div>
					</li>
				{+END}
			</ul>
		</div>
	</div>
{+END}

{$SET,has_comcode_page_children_block,1}
