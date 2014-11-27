<div class="form-group {+START,IF,{REQUIRED}}required{+END}">
	<div class="control-label">
		<input type="hidden" name="comcode__{NAME*}" value="1" />
		<input type="hidden" name="label_for__{NAME*}" value="{$STRIP_TAGS,{PRETTY_NAME*}}" />

		<label for="{NAME*}">{PRETTY_NAME*}</label>

		{COMCODE}
	</div>
	<div class="control-wrap {+START,IF,{REQUIRED}} required{+END}">
		<textarea tabindex="{TABINDEX*}" class="form-control {+START,IF,{SCROLLS}}textarea_scroll{+END} input_text{_REQUIRED} wide_field" cols="70" rows="{ROWS*}" id="{NAME*}" name="{NAME*}">{DEFAULT*}</textarea>

		{+START,IF,{$IN_STR,{REQUIRED},wysiwyg}}
			<script>				if (wysiwyg_on()) document.getElementById('{NAME*;}').readOnly=true;
			</script>
		{+END}
		{+START,IF_PASSED,DEFAULT_PARSED}
			<textarea aria-hidden="true" cols="1" rows="1" style="display: none" readonly="readonly" name="{NAME*}_parsed">{DEFAULT_PARSED*}</textarea>
		{+END}

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
		<div class="help-text">{DESCRIPTION}</div>
		{+END}

		<script>			set_up_change_monitor('form_table_field_input__{$GET,randomised_id}');
		</script>
	</div>
</div>

