<section class="panel panel-default panel-block-main-bottom-bar">
	<div class="panel-heading">
		<h2 class="panel-title">{!_STATISTICS}</h2>
	</div>

	<div class="panel-body">
		<table class="table table-ocf-stats">
			<tbody>
				{+START,IF_NON_EMPTY,{USERS_ONLINE}}
					<tr>
						<th class="col col-first col-stats-usersonline_1">
							<p class="field_name">{!USERS_ONLINE}:</p>
							{+START,IF_NON_EMPTY,{USERS_ONLINE_URL}}<p class="associated-link associated_links_block_group"><a href="{USERS_ONLINE_URL*}" title="{!USERS_ONLINE}">{!DETAILS}</a></p>{+END}
						</th>

						<td class="col col-second col-stats-usersonline-2">
							<p class="users_online ocf_group_colours">{USERS_ONLINE}</p>

							{+START,IF_NON_EMPTY,{GROUPS}}
								<div class="usergroups ocf_group_colours">
									<p>
										<span class="field_name">{!USERGROUPS}:</span>
									</p>
									<ul class="list-inline">
										{+START,LOOP,GROUPS}
											<li><a class="{GCOLOUR*}" href="{$PAGE_LINK*,_SEARCH:groups:view:{GID}}">{GTITLE*}</a></li>
										{+END}
									</ul>
								</div>
							{+END}
						</td>
					</tr>
				{+END}

				<tr>
					<th class="col col-first col-stats-main-1">
						<span class="field_name">{!FORUM_STATISTICS}:</span>
					</th>

					<td class="col col-second col-stats-main-2">
						<ul class="meta-details-list">
							<li>{!FORUM_NUM_TOPICS,{NUM_TOPICS*}}, {!FORUM_NUM_POSTS,{NUM_POSTS*}}, {!FORUM_NUM_MEMBERS,{NUM_MEMBERS*}}</li>
							<li>{!NEWEST_MEMBER,<a href="{NEWEST_MEMBER_PROFILE_URL*}">{NEWEST_MEMBER_USERNAME*}</a>}</li>
						</ul>

						{BIRTHDAYS}
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</section>
