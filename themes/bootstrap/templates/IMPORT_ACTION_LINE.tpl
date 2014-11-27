<tr>
	<th class="form_table_field_name">
		{TEXT*}
	</th>
	<td class="form_table_field_input">
		<div class="sr-only"><label for="i_{NAME*}">{TEXT*}</label></div>
		<input {+START,IF_PASSED_AND_TRUE,DISABLED}disabled="disabled" {+END}type="checkbox" class="form-control" value="1" id="i_{NAME*}" name="{NAME*}"{+START,IF,{CHECKED}} checked="checked"{+END} />
	</td>
</tr>
