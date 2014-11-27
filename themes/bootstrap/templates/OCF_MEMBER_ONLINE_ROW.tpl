{+START,SET,location}
	{+START,SET,_location}
		{+START,IF_NON_EMPTY,{LOCATION}}
			{LOCATION}
		{+END}
		{+START,IF_EMPTY,{LOCATION}}
			<em>{!OTHER}</em>
		{+END}
	{+END}

	{+START,IF_EMPTY,{AT_URL}}
		{$GET,_location}
	{+END}
	{+START,IF_NON_EMPTY,{AT_URL}}
		<a href="{AT_URL*}">{$TRIM,{$GET,_location}}</a>
	{+END}
{+END}

<tr>
	<td>
		{MEMBER}
	</td>
	<td>
		{!MINUTES_AGO,{TIME*}}

		{+START,IF,{$MOBILE}}
			{+START,IF,{$HAS_PRIVILEGE,show_user_browsing}}
				<p class="help-text">
					{$GET,location}
				</p>
			{+END}
		{+END}
	</td>
	{+START,IF,{$NOT,{$MOBILE}}}
		{+START,IF,{$HAS_PRIVILEGE,show_user_browsing}}
			<td>
				{$GET,location}
			</td>
		{+END}
	{+END}
	{+START,IF,{$HAS_PRIVILEGE,see_ip}}
		<td>
			<a href="{$PAGE_LINK*,adminzone:admin_lookup:misc:{IP}}">{IP*}</a>
		</td>
	{+END}
</tr>
