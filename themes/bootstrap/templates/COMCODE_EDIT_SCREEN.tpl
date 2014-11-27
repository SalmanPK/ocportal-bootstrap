{TITLE}

{+START,INCLUDE,HANDLE_CONFLICT_RESOLUTION}{+END}
{+START,IF_PASSED,WARNING_DETAILS}
	{WARNING_DETAILS}
{+END}

{TEXT}

{POSTING_FORM}

{+START,IF,{$NOT,{NEW}}}
	<div class="btn-toolbar">
		<a href="{DELETE_URL*}" title="{!DELETE}: {ZONE*}:{FILE*}"><img class="btn btn-primary btn-pageitem" src="{$IMG*,pageitem/delete}" title="{!DELETE}" alt="{!DELETE}" /></a>
		<a class="link_exempt" href="{EXPORT_URL*}"><img class="btn btn-primary btn-pageitem" src="{$IMG*,pageitem/export}" title="{!EXPORT_COMCODE_PAGE}" alt="{!EXPORT_COMCODE_PAGE}" /></a>
	</div>
{+END}

{REVISION_HISTORY}

