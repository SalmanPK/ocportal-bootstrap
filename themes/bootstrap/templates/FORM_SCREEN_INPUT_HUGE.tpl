{$SET,randomised_id,{$?,{$IS_EMPTY,{NAME*}},{$RAND},{NAME*}}}

<div class="form-group {+START,IF,{REQUIRED}} required{+END}">
	<div class="control-label">
		<input type="hidden" name="label_for__{NAME*}" value="{$STRIP_TAGS,{PRETTY_NAME*}}">

		<label for="{NAME*}">{PRETTY_NAME*}</label>
	</div>

	<div class="control-wrap">
		<textarea tabindex="{TABINDEX*}" class="form-control {+START,IF,{SCROLLS}}textarea_scroll{+END} input_text{_REQUIRED} wide_field" cols="70" rows="{ROWS*}" id="{NAME*}" name="{NAME*}">{DEFAULT*}</textarea>

		{+START,IF_PASSED_AND_TRUE,RAW}<input type="hidden" name="pre_f_{NAME*}" value="1" />{+END}

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
			<div class="help-text">{DESCRIPTION}</div>
		{+END}

		<script>		set_up_change_monitor('form_table_field_input__{$GET,randomised_id}');
		</script>
	</div>
</div>

