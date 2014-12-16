{+START,IF_ARRAY_NON_EMPTY,CHILDREN}
	<div class="panel panel-default panel-block-main-comcode-page-children">
		<div class="panel-body">
			<p class="label-lonely">{!CHILD_PAGES}:</p>
			<ul class="list-category">
				{+START,LOOP,CHILDREN}
					<li><a href="{$PAGE_LINK*,{ZONE}:{PAGE}}">{TITLE}</a></li>
				{+END}
			</ul>
		</div>
	</div>
{+END}

{$SET,has_comcode_page_children_block,1}
