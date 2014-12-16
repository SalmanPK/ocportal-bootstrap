{+START,IF,{$JS_ON}}
	{+START,IF_NON_EMPTY,{$MESSAGES_TOP}}
		<div class="global-messages">
			{$MESSAGES_TOP}
		</div>
	{+END}
{+END}

{$REQUIRE_JAVASCRIPT,javascript_validation}
<form title="{!PRIMARY_PAGE_FORM}" method="post" action="{URL*}" enctype="multipart/form-data" class="form-horizontal form-default form-member-profile-edit">
	{HIDDEN}

	<div class="tabs-ocf-member-profile-edit tabs-container">
		<ul class="tabs nav nav-pills">
		{+START,LOOP,TABS}
			<li  class="tab{+START,IF,{TAB_FIRST}} active tab-first{+END}{+START,IF,{TAB_LAST}} tab-last{+END}">
				<a aria-controls="g_edit__{$LCASE,{TAB_TITLE|*}}" role="tab" href="javascript:" id="t_edit__{$LCASE,{TAB_TITLE|*}}" onclick="select_tab('g','edit__{$LCASE,{TAB_TITLE|*}}');">{TAB_TITLE*}</a>
			</li>
		{+END}
		</ul>
		<div class="tab-content">
			{+START,LOOP,TABS}
				<div aria-labeledby="t_edit__{$LCASE,{TAB_TITLE|*}}" role="tabpanel" id="g_edit__{$LCASE,{TAB_TITLE|*}}" style="display: {$?,{$OR,{TAB_FIRST},{$NOT,{$JS_ON}}},block,none}">
					<a id="tab__edit__{$LCASE,{TAB_TITLE|*}}"></a>

					{+START,IF_NON_EMPTY,{TAB_TEXT}}
						{$PARAGRAPH,{TAB_TEXT}}
					{+END}

					{TAB_FIELDS}
				</div>
			{+END}
		</div>
	</div>

	{+START,IF_NON_EMPTY,{SUBMIT_NAME}}
		{+START,INCLUDE,FORM_STANDARD_END}{+END}
	{+END}
</form>
