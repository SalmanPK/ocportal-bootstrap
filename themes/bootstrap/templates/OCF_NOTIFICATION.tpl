{$REQUIRE_JAVASCRIPT,javascript_ocf_forum}
{$REQUIRE_JAVASCRIPT,javascript_ajax}

{$SET,rand_id,{$RAND}}
<div class="ocf-notification well" id="ocf-notification-{$GET*,rand_id}">
	<p>
		{!ocf:NEW_PT_NOTIFICATION_DETAILS,<span class="ocf-notification-type">{TYPE*}</span>,{U_TITLE*},{$?,{$IS_EMPTY,{PROFILE_URL}},{BY*},<a href="{PROFILE_URL*}">{BY*}</a>},{TIME*}}
	</p>

	<div class="ocf-notification-post">
		{$TRUNCATE_LEFT,{POST},1000,0,1}
	</div>

	<ul class="list-inline">
		<li><span><a href="{TOPIC_URL*}" title="{!VIEW}: {!ocf:FORUM_POST} #{ID*}">{!VIEW}</a></span>{+START,IF,{$NEQ,{_ADDITIONAL_POSTS},0}} <img title="{!ocf:ADDITIONAL_PT_POSTS,{ADDITIONAL_POSTS}}" data-toggle="tooltip" alt="{!HELP}" src="{$IMG*,help}" class="top_vertical_alignment help_icon">{+END}</li>
		<li><a href="{REPLY_URL*}" title="{!REPLY}: {!ocf:FORUM_POST} #{ID*}">{!REPLY}</a></li>
		<li>
			<a href="{IGNORE_URL*}" title="{!ocf:MARK_READ}: {!ocf:FORUM_POST} #{ID*}" data-ajax="{IGNORE_URL_2*}" data-remove="#ocf-notification-{$GET*,rand_id}">
				{!IGNORE}
			</a>
		</li>
	</ul>
</div>
