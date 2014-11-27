<tr>
	<td class="col-new-post-indicator">
		<img title="{LANG_NEW_POST_OR_NOT*}" alt="{LANG_NEW_POST_OR_NOT*}" src="{$IMG*,ocf_general/{NEW_POST_OR_NOT*}}">
	</td>
	<td class="col-in-category-forum">
		<a class="field_name" href="{FORUM_URL*}">{+START,FRACTIONAL_EDITABLE,{FORUM_NAME},name,_SEARCH:admin_ocf_forums:type=__ed:id={ID}}{FORUM_NAME*}{+END}</a>

		{+START,IF_NON_EMPTY,{EDIT_URL}}
			<a class="horiz_field_sep associated-link suggested_link" rel="edit" href="{EDIT_URL*}" title="{!EDIT}: {FORUM_NAME*}">{!EDIT}</a>
		{+END}
		{+START,IF_NON_EMPTY,{FORUM_RULES_URL}}
			<a class="horiz_field_sep associated-link suggested_link" target="_blank" onclick="window.faux_open(maintain_theme_in_link('{FORUM_RULES_URL;*}'),'','width=600,height=500,status=yes,resizable=yes,scrollbars=yes'); return false;" href="{FORUM_RULES_URL*}" title="{!FORUM_RULES}: {FORUM_NAME*} {!LINK_NEW_WINDOW}">{!FORUM_RULES}</a>
		{+END}
		{+START,IF_NON_EMPTY,{INTRO_QUESTION_URL}}
			<a class="horiz_field_sep associated-link suggested_link" target="_blank" onclick="window.faux_open(maintain_theme_in_link('{INTRO_QUESTION_URL;*}'),'','width=600,height=500,status=yes,resizable=yes,scrollbars=yes'); return false;" href="{INTRO_QUESTION_URL*}" title="{!INTRO_QUESTION}: {FORUM_NAME*} {!LINK_NEW_WINDOW}">{!INTRO_QUESTION}</a>
		{+END}

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
			<div class="ocf_forum_description">
				{DESCRIPTION}
			</div>
		{+END}

		{+START,IF_NON_EMPTY,{SUBFORUMS}}
			<div class="ocf_forum_subforums">
				<p><span class="field_name">{!SUBFORUMS}:</span> {SUBFORUMS}</p>
			</div>
		{+END}

		<ul class="list-num-topics-posts horizontal-meta-details help-text" role="contentinfo">
			<li><span class="field_name">{!COUNT_TOPICS}:</span> {$PREG_REPLACE,([^<>/\s\w]),\1 ,{NUM_TOPICS*}}</li>
			<li><span class="field_name">{!COUNT_POSTS}:</span> {$PREG_REPLACE,([^<>/\s\w]),\1 ,{NUM_POSTS*}}</li>
		</ul>
	</td>
	<td class="col-num-topics">
		{$PREG_REPLACE,([^<>/\s\w]),\1 ,{NUM_TOPICS*}}
	</td>
	<td class="col-num-posts">
		{$PREG_REPLACE,([^<>/\s\w]),\1 ,{NUM_POSTS*}}
	</td>
	<td class="col-latest-post">
		{LATEST}
	</td>
</tr>


