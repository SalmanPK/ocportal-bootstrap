<tr>
	<th class="col-result">
		<label for="vote_{I*}">
			{+START,FRACTIONAL_EDITABLE,{ANSWER},answer_{I},_SEARCH:topics:type=_edit_poll:id={ID}}{ANSWER*}{+END}
		</label>
	</th>
	<td class="col-result-2">
		<input value="1" type="checkbox" id="vote_{I*}" name="vote_{I*}" {+START,IF,{$NOT,{REAL_BUTTON}}}disabled{+END}>
	</td>
</tr>
