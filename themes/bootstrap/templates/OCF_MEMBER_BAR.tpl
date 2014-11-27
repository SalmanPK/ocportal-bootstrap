<section id="tray-{!MEMBER|}" class="ocf-information-bar-outer well">
	<div class="ocf-information-bar ocf-information-bar-member clearfix">

		<div class="ocf-member-column ocf-member-column-details">
			{+START,IF_NON_EMPTY,{AVATAR_URL}}
			<div class="ocf-member-avatar">
				<img alt="{!AVATAR}" title="{!AVATAR}" src="{AVATAR_URL*}">
			</div>
			{+END}

			<div class="ocf-member-info">
				<div class="ocf-member-username">
					{!WELCOME_BACK,<a href="{PROFILE_URL*}">{USERNAME*}</a>}

					{+START,IF,{$NOT,{$IS_HTTPAUTH_LOGIN}}}
					<form class="inline" title="{!LOGOUT}" method="post" action="{LOGOUT_URL*}"><input class="btn btn-link btn-link-simple" type="submit" value="{!LOGOUT}"></form>
					{+END}
				</div>

				<dl class="meta-details-list">
					{+START,IF,{$ADDON_INSTALLED,points}}
					<dt class="field_name">{!POINTS}:</dt> <dd><a{+START,IF_PASSED,NUM_POINTS_ADVANCE} title="{!GROUP_ADVANCE,{NUM_POINTS_ADVANCE*}}"{+END} href="{$PAGE_LINK*,site:points:member:{$USER}}">{NUM_POINTS*}</a></dd>
					{+END}
					<dt class="field_name">{!COUNT_POSTS}:</dt> <dd>{NUM_POSTS*}</dd>
					<dt class="field_name">{!PRIMARY_GROUP}:</dt> <dd>{PRIMARY_GROUP*}</dd>
				</dl>
			</div>
		</div>

		<div class="ocf-member-column ocf-member-column-search">
			{+START,IF,{$ADDON_INSTALLED,search}}{+START,IF,{$HAS_ACTUAL_PAGE_ACCESS,search}}
				{+START,INCLUDE,MEMBER_BAR_SEARCH}{+END}
			{+END}{+END}

			<div class="ocf-member-column-last-visit">{!LAST_VISIT,{LAST_VISIT_DATE*}}
				<ul class="meta-details-list">
					<li>{!NEW_TOPICS,{NEW_TOPICS*}}</li>
					<li>{!NEW_POSTS,{NEW_POSTS*}}</li>
				</ul>
			</div>
		</div>

		<nav class="ocf-member-column ocf-member-column-links" role="navigation">
			{$,<p class="ocf-member-column-title">{!VIEW}:</p>}
			<ul role="navigation" class="list-actions">
				<li><a href="{PRIVATE_TOPIC_URL*}">{!PRIVATE_TOPICS}{+START,IF_NON_EMPTY,{PT_EXTRA}} <span class="ocf_member_column_pts">{PT_EXTRA}</span>{+END}</a></li>
				<li><a onclick="return open_link_as_overlay(this);" href="{NEW_POSTS_URL*}">{!POSTS_SINCE_LAST_VISIT}</a></li>
				<li><a onclick="return open_link_as_overlay(this);" href="{UNREAD_TOPICS_URL*}">{!TOPICS_UNREAD}</a></li>
				<li><a onclick="return open_link_as_overlay(this);" href="{RECENTLY_READ_URL*}">{!RECENTLY_READ}</a></li>
				<li><a href="{INLINE_PERSONAL_POSTS_URL*}">{!INLINE_PERSONAL_POSTS}</a></li>
			</ul>
		</nav>
	</div>
</section>

