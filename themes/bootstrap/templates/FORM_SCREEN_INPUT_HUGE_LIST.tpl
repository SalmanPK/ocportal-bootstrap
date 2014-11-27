<div class="form-group {+START,IF,{REQUIRED}} required{+END}">
	{$SET,randomised_id,{$?,{$IS_EMPTY,{NAME*}},{$RAND},{NAME*}}}
	<div class="control-label">
		<input type="hidden" name="label_for__{NAME*}" value="{$STRIP_TAGS,{PRETTY_NAME*}}">

		<label for="{NAME*}">{PRETTY_NAME*}</label>

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
			<div class="help-text">{DESCRIPTION}</div>
		{+END}
	</div>

	<div class="control-wrap">
		{+START,IF,{INLINE_LIST}}
		<select size="{+START,IF_PASSED,SIZE}{SIZE*}{+END}{+START,IF_NON_PASSED,SIZE}15{+END}" tabindex="{TABINDEX*}" class="form-control input_list{REQUIRED*} wide_field" id="{NAME*}" name="{NAME*}">
		{+END}
		{+START,IF,{$NOT,{INLINE_LIST}}}
		<select tabindex="{TABINDEX*}" class="form-control input_list" id="{NAME*}" name="{NAME*}">
		{+END}
		{CONTENT}
		</select>

		<script>
			set_up_change_monitor('form_table_field_input__{$GET,randomised_id}');
		</script>
	</div>
</div>



