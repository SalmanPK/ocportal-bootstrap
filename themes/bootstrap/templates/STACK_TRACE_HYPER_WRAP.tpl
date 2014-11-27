<p>
	{!STACK_TRACE_INFORMATION,{$BRAND_NAME*}}
</p>

{CONTENT}

{+START,IF_NON_EMPTY,{POST}}
	<h2>{!PARAMETERS}</h2>

	<div class="table-wrap"><table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results">
		<colgroup>
			<col class="field_name_column" />
			<col class="field_value_column" />
		</colgroup>

		<tbody>
			{+START,LOOP,POST}
				<tr>
					<th>
						{_loop_key*}
					</th>
					<td>
						<div class="whitespace_visible">{+START,IF_PASSED,_loop_var}{_loop_var*}{+END}{+START,IF_NON_PASSED,_loop_var}?{+END}</div>
					</td>
				</tr>
			{+END}
		</tbody>
	</table></div>
{+END}
