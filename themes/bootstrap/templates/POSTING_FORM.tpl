<form title="{!PRIMARY_PAGE_FORM}" id="posting_form" method="post" enctype="multipart/form-data" action="{URL*}" class="form-horizontal form-default from-posting {+START,IF_PASSED_AND_TRUE,AUTOCOMPLETE}autocomplete{+END}">
	<input type="hidden" name="comcode__post" value="1">
	<input type="hidden" name="posting_ref_id" value="{$RAND,1,2147483646}">

	{$INSERT_SPAMMER_BLACKHOLE}

	{+START,INCLUDE,POSTING_FIELD}
		NAME=post
		DESCRIPTION=
		WORD_COUNTER=1
	{+END}

	{SPECIALISATION}

	{+START,IF,{$AND,{$IS_NON_EMPTY,{SPECIALISATION2}},{$OR,{$NOT,{$IN_STR,{SPECIALISATION2},<th colspan="2"}},{$LT,{$STRPOS,{SPECIALISATION2},<td},{$STRPOS,{SPECIALISATION2},<th colspan="2"}}}}}
		<h2>{!OTHER_DETAILS}</h2>
	{+END}

	{SPECIALISATION2}

	{+START,INCLUDE,FORM_STANDARD_END}{+END}
</form>

{+START,IF,{$IS_A_COOKIE_LOGIN}}
	<script>
		add_event_listener_abstract(window,'load',function () {
			if (typeof init_form_saving!='undefined') init_form_saving('posting_form');
		});
	</script>
{+END}

{+START,IF_PASSED,EXTRA}
	{EXTRA}
{+END}
