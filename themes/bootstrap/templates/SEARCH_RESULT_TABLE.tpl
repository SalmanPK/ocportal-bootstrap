<div class="table-wrap"><table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results">
	<thead>
		<tr>
			{+START,LOOP,HEADERS}
				<th>{_loop_var*}</th>
			{+END}
		</tr>
	</thead>

	<tbody>
		{+START,LOOP,ROWS}
			<tr>
				{+START,LOOP,R}
					<td>{_loop_var}</td>
				{+END}
			</tr>
		{+END}
	</tbody>
</table></div>
