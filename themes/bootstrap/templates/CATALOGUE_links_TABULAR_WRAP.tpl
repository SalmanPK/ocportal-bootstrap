<div class="table-wrap" itemprop="mainContentOfPage" content="true" itemscope="itemscope" itemtype="http://schema.org/Table">
	<table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results">
		{+START,IF,{$NOT,{$MOBILE}}}
			<colgroup>
				{$SET,INC,0}
				{+START,WHILE,{$NEQ,{$GET,INC},{FIELD_COUNT}}}
					<col />
					{$INC,INC}
				{+END}
			</colgroup>
		{+END}

		<thead>
			<tr>
				{HEAD}
			</tr>
		</thead>

		<tbody>
			{CONTENT}
		</tbody>
	</table>
</div>

