{+START,IF_PASSED,TEXT_ID}{$SET,TEXT_ID,{TEXT_ID}}{+END}

{+START,IF_EMPTY,{FIELDS}}
	<p class="nothing_here">
		{!NO_ENTRIES}
	</p>
{+END}

{+START,IF_NON_EMPTY,{FIELDS}}
	{MESSAGE}
	<div class="table-wrap">
		<table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results" itemprop="significantLinks">
		{+START,IF,{$NOT,{$MOBILE}}}{+START,IF_NON_EMPTY,{WIDTHS}}
			<colgroup>
				{+START,LOOP,WIDTHS}
					<col style="width: {_loop_var}{+START,IF,{$NOT,{$IN_STR,{_loop_var},px,%}}}px{+END}" />
				{+END}
			</colgroup>
		{+END}{+END}

			<thead>
				<tr>
					{FIELDS_TITLE}
				</tr>
			</thead>
			<tbody>
				{FIELDS}
			</tbody>
		</table>
	</div>

	{+START,SET,RESULTS_TABLE_PAGINATION}
		{+START,IF_NON_EMPTY,{SORT}{PAGINATION}}
			<div class="box results-table-under clearfix">
				<div class="results-table-sorter left">
					{SORT}
				</div>

				{PAGINATION}
			</div>
		{+END}
	{+END}
	{+START,IF,{$NOT,{$GET,DEFER_RESULTS_TABLE_PAGINATION}}}
		{$GET,RESULTS_TABLE_PAGINATION}
	{+END}
{+END}

