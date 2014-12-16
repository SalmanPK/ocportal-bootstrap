<tr>
	<th class="col-radio">
		<label for="vote_{I*}">
			{+START,FRACTIONAL_EDITABLE,{ANSWER},answer_{I},_SEARCH:cms_polls:type=_edit_poll:id={ID}}{ANSWER*}{+END}
		</label>
	</th>
	<td class="col-radio-2">
		<input type="radio" id="vote_{I*}" name="vote" value="{I*}" {+START,IF,{$NOT,{REAL_BUTTON}}}disabled{+END}>
	</td>
</tr>
