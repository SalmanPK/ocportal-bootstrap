{TITLE}

<p>
	{!QUERIES_WITHOUT_CACHE}
</p>

<div class="table-wrap"><table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results">
	<thead>
		<tr>
			<th>
				{!QUERY}
			</th>
			<th axis="time">
				{!EXECUTE_TIME}
			</th>
		</tr>
	</thead>

	<tfoot>
		<tr>
			<td>
				<strong>{!COUNT_TOTAL}</strong>: {TOTAL}
			</td>
			<td>
				<strong>{TOTAL_TIME}</strong>
			</td>
		</tr>
	</tfoot>

	<tbody>
		{QUERIES}
	</tbody>
</table></div>

