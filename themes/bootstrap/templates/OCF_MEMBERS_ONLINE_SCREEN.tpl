{TITLE}

<table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-results">
	<thead>
		<tr>
			<th>
				{!USERNAME}
			</th>
			<th>
				{!LAST_ACTIVITY}
			</th>
			{+START,IF,{$NOT,{$MOBILE}}}
				{+START,IF,{$HAS_PRIVILEGE,show_user_browsing}}
					<th>
						{!_LOCATION}
					</th>
				{+END}
			{+END}
			{+START,IF,{$HAS_PRIVILEGE,see_ip}}
				<th>
					{!IP_ADDRESS}
				</th>
			{+END}
		</tr>
	</thead>
	<tbody>
		{ROWS}
	</tbody>
</table>

