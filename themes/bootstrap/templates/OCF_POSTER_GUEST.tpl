{+START,IF,{$EQ,{POSTER_USERNAME},{!SYSTEM}}}
	<em>{$SITE_NAME*}</em>
{+END}
{+START,IF,{$NEQ,{POSTER_USERNAME},{!SYSTEM}}}
	{+START,IF_EMPTY,{LOOKUP_IP_URL}}
	<a class="ocf_guest_poster non_link" href="#" title="{POSTER_DETAILS*}" data-toggle="tooltip">{POSTER_USERNAME*}</a>
	{+END}
	{+START,IF_NON_EMPTY,{LOOKUP_IP_URL}}
	<a class="ocf_guest_poster" href="{LOOKUP_IP_URL*}" title="{POSTER_DETAILS*}" data-toggle="tooltip">{POSTER_USERNAME*}</a>
	{+END}
{+END}
