<tr class="{$CYCLE,zebra,zebra_0,zebra_1}">
	<td>
		<label class="sr-only" for="key_{UID*}">{!MATCH_KEY}</label>
		<div class="constrain_field">
			<input class="form-control" maxlength="255" type="text" id="key_{UID*}" name="key_{UID*}" value="{KEY*}" />
		</div>
	</td>
	{CELLS}
	<td>
		{+START,IF,{$JS_ON}}
			<input class="btn btn-primary btn-sm" type="button" value="{+START,IF,{ALL_OFF}}+{+END}{+START,IF,{$NOT,{ALL_OFF}}}-{+END}" onclick="{CODE*}; this.value=(this.value=='-')?'+':'-';" />
		{+END}
	</td>
</tr>
