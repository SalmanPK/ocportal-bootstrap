{TITLE}

<p>{!SUCCESS}</p>

<div class="table-wrap"><table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results" itemprop="significantLinks">
	<thead>
		<tr>
			<th>{!ACTION}</th>
			<th>{!PARAMETER_A}</th>
			<th>{!PARAMETER_B}</th>
		</tr>
	</thead>

	<tbody>
		{+START,LOOP,OPS}
			<tr>
				<td>{OP*}</td>
				<td class="whitespace_visible">{PARAM_A*}</td>
				<td class="whitespace_visible">{PARAM_B*}</td>
			</tr>
		{+END}
	</tbody>
</table></div>

