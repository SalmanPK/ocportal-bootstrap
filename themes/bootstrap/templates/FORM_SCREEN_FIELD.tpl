{$,If editing this template, make sure that the set_required Javascript function is updated}

{$SET,randomised_id,{$?,{$IS_EMPTY,{NAME*}},{$RAND},{NAME*}}}

<div id="form-group-{$GET*,randomised_id}" class="form-group">
	<label class="control-label {+START,IF,{REQUIRED}} required{+END}"  for="{NAME*}">

		{$SET,show_label,{$AND,{$IS_NON_EMPTY,{NAME}},{$NOT,{SKIP_LABEL}}}}

		{+START,IF,{$GET,show_label}}
			{PRETTY_NAME*}
		{+END}

		{+START,IF,{$NOT,{$GET,show_label}}}
			{PRETTY_NAME*}
		{+END}

		{+START,IF_NON_EMPTY,{COMCODE}}
			<div class="comcode_supported">
				<input type="hidden" name="comcode__{$GET,randomised_id}" value="1">
				{COMCODE}
			</div>
		{+END}

		{+START,IF_PASSED,DESCRIPTION_SIDE}{+START,IF_NON_EMPTY,{DESCRIPTION_SIDE}}
			<p class="help-text">{DESCRIPTION_SIDE}</p>
		{+END}{+END}
	</label>

	<div class="control-wrap {+START,IF,{REQUIRED}} required{+END}">
		{INPUT}

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
			<div class="help-text{+START,IF,{$AND,{$EQ,{$SUBSTR_COUNT,{INPUT}, name="},2},{$EQ,{$SUBSTR_COUNT,{INPUT},type="file"},0},{$EQ,{$SUBSTR_COUNT,{INPUT},type="checkbox"},1}}} field_checkbox_description{+END}">{DESCRIPTION}</div>
		{+END}

		<div id="error_{$GET,randomised_id}" style="display: none" class="alert alert-danger alert-input-error"></div>

		{+START,IF_NON_EMPTY,{NAME}}
			<input type="hidden" id="required_posted__{$GET,randomised_id}" name="require__{NAME*}" value="{$?,{REQUIRED*},1,0}" />
		{+END}

		<script>set_up_change_monitor('form_table_field_input__{$GET,randomised_id}');</script>
	</div>
</div>

