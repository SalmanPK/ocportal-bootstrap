<div class="ocf-profile">

	<div class="ocf-profile-main">
		{+START,IF,{$NOT,{VIEW_PROFILES}}}
			<p class="alert alert-danger alert-dismissible" role="alert">
				{!ACCESS_DENIED}
			</p>
		{+END}

		<div class="table-wrap">
			<table class="table table-ocf-profile-fields">
				<tbody>
					{+START,IF,{VIEW_PROFILES}}
						{+START,LOOP,CUSTOM_FIELDS}
							{$SET,is_messenger_field,{$EQ,{NAME},{!DEFAULT_CPF_im_msn_NAME},{!DEFAULT_CPF_im_aim_NAME},{!DEFAULT_CPF_im_yahoo_NAME},{!DEFAULT_CPF_im_skype_NAME},{!DEFAULT_CPF_im_icq_NAME},{!DEFAULT_CPF_im_jabber_NAME},{!DEFAULT_CPF_sn_twitter_NAME},{!DEFAULT_CPF_sn_facebook_NAME},{!DEFAULT_CPF_sn_google_NAME}}}

							{+START,IF,{$NOT,{$GET,is_messenger_field}}}
								<tr>
									<th class="de_th col-name">
										{NAME*}:
									</th>

									<td class="col-value">
										<span{+START,IF,{$EQ,{NAME},{!SPECIAL_CPF__ocp_fullname}}} class="fn given-name"{+END}>
											{+START,IF_EMPTY,{ENCRYPTED_VALUE}}
												{VALUE}
											{+END}
											{+START,IF_NON_EMPTY,{ENCRYPTED_VALUE}}
												{+START,IF,{$JS_ON}}{!DATA_ENCRYPTED} <a href="javascript:decrypt_data('{ENCRYPTED_VALUE;^*}');" title="{!DECRYPT_DATA}: {!DESCRIPTION_DECRYPT_DATA=}">{!DECRYPT_DATA}</a>{+END}
												{+START,IF,{$NOT,{$JS_ON}}}{ENCRYPTED_VALUE*}{+END}
											{+END}
										</span>
									</td>
								</tr>
							{+END}
						{+END}
					{+END}

					{+START,IF_NON_EMPTY,{$TRIM,{SIGNATURE}}}
						<tr>
							<th class="de_th col-name">
								{!SIGNATURE}:
							</th>

							<td class="col-value">
								{SIGNATURE}
							</td>
						</tr>
					{+END}
				</tbody>
			</table>
		</div>

		{+START,IF,{VIEW_PROFILES}}
			<h2>{!DETAILS}</h2>

			<meta itemprop="name" content="{USERNAME*}" />

			<div class="table-wrap">
				<table class="table table-ocf-profile-details">
					<tbody>
						<tr>
							<th class="de_th col-name">{!ONLINE_NOW}:</th>
							<td class="col-value">{ONLINE_NOW*} <span class="help-text">({$DATE_AND_TIME*,1,0,0,{LAST_VISIT_TIME_RAW}})</span></td>
						</tr>

						{+START,IF_NON_EMPTY,{JOIN_DATE}}
							<tr>
								<th class="de_th col-name">{!JOIN_DATE}:</th>
								<td class="col-value">
									<time datetime="{$FROM_TIMESTAMP*,Y-m-d\TH:i:s\Z,{JOIN_DATE_RAW}}" pubdate="pubdate" itemprop="datePublished">{JOIN_DATE*}</time>
								</td>
							</tr>
						{+END}

						{+START,IF_PASSED,ON_PROBATION}
							<tr>
								<th class="de_th col-name">{!ON_PROBATION_UNTIL}:</th>
								<td class="col-value">{$DATE_AND_TIME*,1,0,0,{ON_PROBATION}}</td>
							</tr>
						{+END}

						<tr>
							<th class="de_th col-name">{!TIME_FOR_THEM}:</th>
							<td class="col-value">{TIME_FOR_THEM*}</td>
						</tr>

						{+START,IF_NON_EMPTY,{BANNED}}
							<tr>
								<th class="de_th col-name">{!_BANNED}:</th>
								<td class="col-value">{BANNED*}</td>
							</tr>
						{+END}

						{+START,IF_NON_EMPTY,{DOB}}
							<tr>
								<th class="de_th col-name">{!DATE_OF_BIRTH}:</th>
								<td class="col-value"><span class="bday">{DOB*}</span></td>
							</tr>
						{+END}

						{+START,IF,{$HAS_PRIVILEGE,member_maintenance}}{+START,IF_NON_EMPTY,{EMAIL_ADDRESS}}
							<tr>
								<th class="de_th col-name">{!EMAIL_ADDRESS}:</th>
								<td class="col-value"><a class="email" href="mailto:{EMAIL_ADDRESS*}">{EMAIL_ADDRESS*}</a></td>
							</tr>
						{+END}{+END}

						{+START,LOOP,EXTRA_INFO_DETAILS}
							<tr>
								<th class="de_th col-name">{_loop_key*}:</th>
								<td class="col-value"><span>{_loop_var*}</span></td>
							</tr>
						{+END}
					</tbody>
				</table>
			</div>

			{+START,IF_NON_EMPTY,{PHOTO_URL}}
				<h2>{!PHOTO}</h2>

				<div class="ocf_member_profile_photo">
					<a rel="lightbox" href="{PHOTO_URL*}"><img src="{PHOTO_THUMB_URL*}" alt="{!PHOTO}" class="photo" itemprop="primaryImageOfPage" /></a>
				</div>
			{+END}
		{+END}

		{+START,LOOP,EXTRA_SECTIONS}
			{_loop_var}
		{+END}

		{+START,IF,{VIEW_PROFILES}}
		<div class="stats_overwrap">
			<h2>{!ACTIVITY}</h2>

			<div class="table-wrap">
				<table class="table table-ocf-profile-statistics">
					<tbody>
						{+START,IF,{$ADDON_INSTALLED,ocf_forum}}
							<tr>
								<th class="de_th col-name">{!COUNT_POSTS}:</th>
								<td class="col-value">{COUNT_POSTS*}</td>
							</tr>
						{+END}

						{+START,IF_NON_EMPTY,{MOST_ACTIVE_FORUM}}
							<tr>
								<th class="de_th col-name">{!MOST_ACTIVE_FORUM}:</th>
								<td class="col-value">{MOST_ACTIVE_FORUM*}</td>
							</tr>
						{+END}

						<tr>
							<th class="de_th col-name">{!LAST_SUBMIT_TIME}:</th>
							<td class="col-value">{!DAYS_AGO,{SUBMIT_DAYS_AGO}}</td>
						</tr>

						{+START,IF_NON_EMPTY,{IP_ADDRESS}}
							<tr>
								<th class="de_th col-name">{!IP_ADDRESS}:</th>
								<td class="col-value"><a href="{$PAGE_LINK*,_SEARCH:admin_lookup:param={IP_ADDRESS&}}">{$TRUNCATE_SPREAD,{IP_ADDRESS*},20,1,1}</a></td>
							</tr>
						{+END}

						{+START,IF_PASSED,USER_AGENT}
							<tr>
								<th class="de_th col-name">{!USER_AGENT}:</th>
								<td class="col-value">{USER_AGENT*}</td>
							</tr>
						{+END}

						{+START,IF_PASSED,OPERATING_SYSTEM}
							<tr>
								<th class="de_th col-name">{!USER_OS}:</th>
								<td class="col-value">{OPERATING_SYSTEM*}</td>
							</tr>
						{+END}
					</tbody>
				</table>
			</div>
		</div>
		{+END}
	</div>

	<div class="ocf-profile-column">
		<div class="well">
		{+START,IF_NON_EMPTY,{AVATAR_URL}}
		<div class="ocf_member_profile_avatar">
			<img src="{AVATAR_URL*}" alt="{!AVATAR}" />
		</div>
		{+END}

		<h4>{!USERGROUPS}</h4>

		<ul>
			<li><span class="role">{PRIMARY_GROUP}</span></li>
			{+START,LOOP,SECONDARY_GROUPS}
			<li><a href="{$PAGE_LINK*,_SEARCH:groups:view:{_loop_key}}">{_loop_var*}</a></li>
			{+END}
		</ul>

		<h4>{!MORE_ACCOUNT_LINKS,{USERNAME*}}</h4>

		{+START,IF,{VIEW_PROFILES}}
		{+START,LOOP,CUSTOM_FIELDS}
		{$SET,is_messenger_field,{$EQ,{NAME},{!DEFAULT_CPF_im_msn_NAME},{!DEFAULT_CPF_im_aim_NAME},{!DEFAULT_CPF_im_yahoo_NAME},{!DEFAULT_CPF_im_skype_NAME},{!DEFAULT_CPF_im_icq_NAME},{!DEFAULT_CPF_im_jabber_NAME},{!DEFAULT_CPF_sn_twitter_NAME},{!DEFAULT_CPF_sn_facebook_NAME},{!DEFAULT_CPF_sn_google_NAME}}}
		{+START,IF,{$GET,is_messenger_field}}
		{+START,SET,messenger_fields}
		{$GET,messenger_fields}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_im_msn_NAME}}}<li><a title="{!ADD_AS_FRIEND}: {!LINK_NEW_WINDOW}" href="msnim:add?contact={RAW_VALUE*}">{!ADD_AS_FRIEND}</a> (Windows Live Messenger)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_im_aim_NAME}}}<li><a title="{!MESSAGE_THEM}: {!LINK_NEW_WINDOW}" href="aim:goim?screename={RAW_VALUE*}">{!MESSAGE_THEM}</a> (AOL Instant Messenger)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_im_yahoo_NAME}}}<li><a title="{!ADD_AS_FRIEND}: {!LINK_NEW_WINDOW}" href="ymsgr:addfriend?{RAW_VALUE*}">{!ADD_AS_FRIEND}</a> (Yahoo Messenger)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_im_skype_NAME}}}<li><a title="{!PHONE_THEM_UP}: {!LINK_NEW_WINDOW}" href="skype:{RAW_VALUE*}?call">{!PHONE_THEM_UP}</a> (Skype)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_im_icq_NAME}}}<li><a title="{!MESSAGE_THEM}: {!LINK_NEW_WINDOW}" href="http://www.icq.com/people/cmd.php?uin={RAW_VALUE*}&amp;action=message">{!MESSAGE_THEM}</a> (ICQ)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_im_jabber_NAME}}}<li><a title="{!MESSAGE_THEM}: {!LINK_NEW_WINDOW}" href="xmpp:{RAW_VALUE*}">{!MESSAGE_THEM}</a> (Jabber/XMPP)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_sn_twitter_NAME}}}<li><a title="{!MESSAGE_THEM}: {!LINK_NEW_WINDOW}" href="http://twitter.com/{RAW_VALUE*}" rel="me">@{RAW_VALUE*}</a> (Twitter)</li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_sn_facebook_NAME}}}<li><a title="{!MESSAGE_THEM}: {!LINK_NEW_WINDOW}" href="{RAW_VALUE*}" rel="me">Facebook</a></li>{+END}
		{+START,IF,{$EQ,{NAME},{!DEFAULT_CPF_sn_google_NAME}}}<li><a title="{!MESSAGE_THEM}: {!LINK_NEW_WINDOW}" href="{RAW_VALUE*}" rel="me">Google+</a></li>{+END}
		{+END}
		{+END}
		{+END}
		{+END}
		{+START,IF_NON_EMPTY,{ACTIONS_contact}{$GET,messenger_fields}}
		<div class="panel panel-default panel-collapsible">
			<a class="panel-heading" href="javascript:" data-toggle="collapse" data-target="#collapse-profile-messenger-fields">
				<h3 class="panel-title">{!CONTACT}</h3>
			</a>

			<div class="panel-collapse collapse in" id="collapse-profile-messenger-fields">
				<div class="panel-body">
					<nav role="navigation">
						<ul>
							{ACTIONS_contact}
							{$GET,messenger_fields}
						</ul>
					</nav>
				</div>
			</div>
		</div>
		{+END}

		{+START,IF_NON_EMPTY,{ACTIONS_content}}
		<div class="panel panel-default panel-collapsible">
			<a class="panel-heading collapsed" href="javascript:" data-toggle="collapse" data-target="#collapse-profile-actions">
				<h3 class="panel-title">{!CONTENT}</h3>
			</a>

			<div class="panel-collapse collapse" id="collapse-profile-actions">
				<div class="panel-body">
					<nav role="navigation" aria-expanded="false">
						<ul>
							{ACTIONS_content}
						</ul>
					</nav>
				</div>
			</div>
		</div>
		{+END}

		{+START,IF_NON_EMPTY,{ACTIONS_views}{ACTIONS_profile}}
		<div class="panel panel-default panel-collapsible">
			<a class="panel-heading collapsed" href="javascript:" data-toggle="collapse" data-target="#collapse-profile-views">
				<h3 class="panel-title">{!ACCOUNT}</h3>
			</a>
			<div class="panel-collapse collapse" id="collapse-profile-views">
				<div class="panel-body">
					<nav class="toggleable_tray" role="navigation" aria-expanded="false">
						<ul>
							{ACTIONS_views}
							{ACTIONS_profile}
						</ul>
					</nav>
				</div>
			</div>
		</div>
		{+END}

		{+START,IF_NON_EMPTY,{ACTIONS_usage}}
		<div class="panel panel-default panel-collapsible">
			<a class="panel-heading collapsed" href="javascript:" data-toggle="collapse" data-target="#collapse-profile-usage">
				<h3 class="panel-title">{!USAGE}</h3>
			</a>
			<div class="panel-collapse collapse" id="collapse-profile-usage">
				<div class="panel-body">
					<nav role="navigation" aria-expanded="false">
						<ul>
							{ACTIONS_usage}
						</ul>
					</nav>
				</div>
			</div>
		</div>
		{+END}
		</div>
	</div>
</div>
