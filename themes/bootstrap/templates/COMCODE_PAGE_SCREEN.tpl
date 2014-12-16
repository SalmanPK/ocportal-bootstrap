{+START,IF,{$NOR,{IS_PANEL},{BEING_INCLUDED}}}
	{+START,IF_EMPTY,{$TRIM,{CONTENT}}}
		<div class="comcode-page comcode-page-{NAME*} {$?,{$EQ,{IS_PANEL},1},is-panel,}">
			<p class="nothing-here">{!NO_PAGE_OUTPUT}</p>
		</div>
	{+END}
{+END}

{+START,IF,{$OR,{$NOT,{IS_PANEL}},{$IS_NON_EMPTY,{$TRIM,{CONTENT}}}}}
<div class="comcode-page comcode-page-{NAME*} {$?,{$EQ,{IS_PANEL},1},is-panel,}">
	{WARNING_DETAILS}
	<div class="comcode-page-content">
		{$TRIM,{CONTENT}}


		{+START,IF,{SHOW_AS_EDIT}}{+START,IF_NON_EMPTY,{EDIT_DATE_RAW}}
		<div class="edited" role="note">
			<i class="fa fa-pencil"></i> {!EDITED}
			<time datetime="{$FROM_TIMESTAMP*,Y-m-d\TH:i:s\Z,{EDIT_DATE_RAW}}" pubdate="pubdate">{$DATE*,,,,{EDIT_DATE_RAW}}</time>
		</div>
		{+END}{+END}
	</div>

	{+START,IF,{$NOR,{IS_PANEL},{$EQ,{NAME},rules,start},{$_GET,wide_high},{IS_PANEL},{BEING_INCLUDED}}}
		{+START,IF,{$CONFIG_OPTION,show_screen_actions}}
			{$BLOCK,failsafe=1,block=main_screen_actions}
		{+END}

		{+START,IF,{$CONFIG_OPTION,show_content_tagging}}{TAGS}{+END}
	{+END}

	{+START,IF_NON_EMPTY,{EDIT_URL}}
		{+START,IF,{IS_PANEL}}
			{+START,IF,{$EQ,{NAME},panel_left,panel_right}}
				<p class="quick-self-edit-link associated-link">
					<img class="comcode-supported-icon" title="{!_COMCODE}" alt="{!_COMCODE}" src="{$IMG*,comcode}">
					<a href="{EDIT_URL*}" title="{!EDIT_ZONE_EDITOR}: {NAME*} ({!IN,&quot;{$?,{$IS_EMPTY,{$ZONE}},{!_WELCOME},{$ZONE*}}&quot;})">{!EDIT_ZONE_EDITOR}</a>
				</p>
			{+END}

			{+START,IF,{$EQ,{NAME},panel_top,panel_bottom}}
				<a class="edit-page-link-inline" href="{EDIT_URL*}">
					<img width="17" height="17" class="comcode_supported_icon" title="{!EDIT_PAGE}: {NAME*}" alt="{!EDIT_PAGE}: {NAME*}" src="{$IMG*,comcode}">
				</a>
			{+END}
		{+END}

		{+START,IF,{$NOT,{IS_PANEL}}}
			{+START,INCLUDE,STAFF_ACTIONS}
				1_URL={EDIT_URL*}
				1_TITLE={$?,{BEING_INCLUDED},&uarr; {!EDIT},{!EDIT_PAGE}}
				1_NOREDIRECT=1
				1_ACCESSKEY=q
				1_REL=edit
				2_URL={$?,{$GET,has_comcode_page_children_block},{ADD_CHILD_URL*}}
				2_TITLE={!ADD_CHILD_PAGE}
				2_REL=add
			{+END}
		{+END}
	{+END}
</div>
{+END}