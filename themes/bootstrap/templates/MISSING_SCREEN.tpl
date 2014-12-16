{TITLE}

<p>
	{!MISSING_PAGE,{PAGE*}}
</p>

{+START,IF_PASSED,DID_MEAN}
	<p>
		{!WERE_YOU_LOOKING_FOR,<a href="{$PAGE_LINK*,{$ZONE}:{DID_MEAN}}">{DID_MEAN*}</a>}
	</p>
{+END}

{+START,SET,BUTTONS}
	{+START,IF_NON_EMPTY,{ADD_URL}}
		<a rel="add" href="{ADD_URL*}" class="btn btn-primary btn-page btn-page-new" title="{!REDIRECTING}"> {!ADD} </a>
	{+END}

	{+START,IF_PASSED,ADD_REDIRECT_URL}
		{+START,IF_NON_EMPTY,{ADD_REDIRECT_URL}}
			<a href="{ADD_REDIRECT_URL*}" class="btn btn-primary btn-page btn-page-redirect" title="{!REDIRECTING}"> {!REDIRECTION} </a>
		{+END}
	{+END}
{+END}
{+START,IF_NON_EMPTY,{$TRIM,{$GET,BUTTONS}}}
	<p class="btn-toolbar">
		{$GET,BUTTONS}
	</p>
{+END}

<h2>{!SITE_MAP}</h2>

{$BLOCK,block=main_sitemap,quick_cache=1}

{+START,IF,{$ADDON_INSTALLED,search}}
	<h2>{!SEARCH}</h2>

	{$BLOCK,block=main_search,failsafe=1}
{+END}
