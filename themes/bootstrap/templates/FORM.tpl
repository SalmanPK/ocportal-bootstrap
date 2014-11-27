{+START,IF_NON_EMPTY,{TEXT}}
	{$PARAGRAPH,{TEXT}}
{+END}

{$REQUIRE_JAVASCRIPT,javascript_validation}
<form title="{!PRIMARY_PAGE_FORM}"{+START,IF_PASSED,TARGET} target="{TARGET*}"{+END}{+START,IF_NON_PASSED_OR_FALSE,GET} method="post" action="{URL*}"{+START,IF,{$IN_STR,{FIELDS},"file"}} enctype="multipart/form-data"{+END}{+END}{+START,IF_PASSED_AND_TRUE,GET} method="get" action="{$URL_FOR_GET_FORM*,{URL}}"{+END}{+START,IF_NON_PASSED,TARGET} target="_top"{+END} class="form-horizontal form-default {+START,IF_PASSED_AND_TRUE,AUTOCOMPLETE} autocomplete{+END}">
	{+START,IF_NON_PASSED_OR_FALSE,GET}{$INSERT_SPAMMER_BLACKHOLE}{+END}

	{+START,IF_PASSED_AND_TRUE,GET}{$HIDDENS_FOR_GET_FORM,{URL}}{+END}

	{+START,IF_PASSED,SKIPPABLE}
		{+START,IF,{$JS_ON}}
			<div class="skip_step_button_wrap">
				<input type="hidden" id="{SKIPPABLE*}" name="{SKIPPABLE*}" value="0">
				<div>
					<input onclick="document.getElementById('{SKIPPABLE;}').value='1'; disable_button_just_clicked(this);" tabindex="151" class="btn btn-primary btn-pageitem" type="submit" value="{!SKIP}" />
				</div>
			</div>
		{+END}
	{+END}


	{HIDDEN}

	{FIELDS}


	{+START,IF_NON_EMPTY,{SUBMIT_NAME}}
		{+START,INCLUDE,FORM_STANDARD_END}{+END}
	{+END}
</form>

