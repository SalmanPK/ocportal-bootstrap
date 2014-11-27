{+START,IF_PASSED,SUBMITTER}{+START,IF_NON_EMPTY,{SUBMITTER}}
	{+START,IF,{$OCF}}
		{+START,SET,TOOLTIP}
			{$OCF_MEMBER_HTML,{SUBMITTER}}
		{+END}

		{+START,IF,{$OR,{$ADDON_INSTALLED,ocf_avatars},{$IS_NON_EMPTY,{$AVATAR,{SUBMITTER}}}}}
			<img class="img-text mini-avatar" src="{$?,{$IS_EMPTY,{$AVATAR,{SUBMITTER}}},{$IMG*,ocf_default_avatars/default_set/cool_flare,0,,1},{$AVATAR*,{SUBMITTER}}}" alt="" data-tooltip="{$TRIM*,{$GET,TOOLTIP}}">
		{+END}
	{+END}
{+END}{+END}
