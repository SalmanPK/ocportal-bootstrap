{TITLE}

<div class="table-wrap"><table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results">
	<thead>
		<tr>
			<th>{!TYPE}</th>
			<th>{!AMOUNT}, {$CURRENCY_SYMBOL}</th>
		</tr>
	</thead>

	<tbody>
		{+START,LOOP,TYPES}
			<tr>
				<td>
					 {+START,IF,{SPECIAL}}<strong>{TYPE*}</strong>{+END}
					 {+START,IF,{$NOT,{SPECIAL}}}{TYPE*}{+END}
				</td>
				<td>
					 {+START,IF,{SPECIAL}}<strong>{AMOUNT*}</strong>{+END}
					 {+START,IF,{$NOT,{SPECIAL}}}{AMOUNT*}{+END}
				</td>
			</tr>
		{+END}
	</tbody>
</table></div>

