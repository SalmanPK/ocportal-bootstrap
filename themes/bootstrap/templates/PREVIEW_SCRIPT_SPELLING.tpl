<h2>{FIELD*}</h2>

<div class="table-wrap"><table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results">
	<thead>
		<tr>
			<th>{!WORD}</th>
			<th>{!POSSIBLE_CORRECTIONS}</th>
		</tr>
	</thead>
	<tbody>
		{+START,LOOP,MISSPELLINGS}
			<tr>
				<td>{WORD*}</td>
				<td>{CORRECTIONS*}</td>
			</tr>
		{+END}
	</tbody>
</table></div>

