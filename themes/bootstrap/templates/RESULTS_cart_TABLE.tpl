{+START,IF_EMPTY,{FIELDS}}
	<p class="nothing_here">
		{!NO_ENTRIES}
	</p>
{+END}
{+START,IF_NON_EMPTY,{FIELDS}}
	{MESSAGE}
	<div class="table-wrap">
		<table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results table-cart">
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
{+END}
