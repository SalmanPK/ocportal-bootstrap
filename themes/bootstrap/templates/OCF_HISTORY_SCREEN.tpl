{TITLE}

<p>
	{!ABOUT_POST_HISTORY}
</p>

{+START,IF_NON_EMPTY,{CONTENT}}
	<div class="table-wrap"><table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results">
		<tbody>
			{CONTENT}
		</tbody>
	</table></div>
{+END}
{+START,IF_EMPTY,{CONTENT}}
	<p class="nothing_here">
		{!NO_ENTRIES}
	</p>
{+END}

{+START,IF_NON_EMPTY,{PAGINATION}}
	{PAGINATION}
{+END}
