<div class="news-piece-summary">
	<div class="news-piece-summary-body">
		<h3 class="news-piece-summary-title">
			<a title="{$STRIP_TAGS,{$TRUNCATE_LEFT,{NEWS_TITLE},70,1,1}}: #{ID*}" href="{FULL_URL*}">{$TRUNCATE_LEFT,{NEWS_TITLE},70,1,1}</a>
		</h3>

		<div class="news-piece-summary-area">
			<div class="news-piece-summary-details" role="contentinfo">
					{+START,SET,author_details}
						{+START,IF,{$IS_NON_EMPTY,{AUTHOR_URL}}}
							{!BY_SIMPLE,<a href="{AUTHOR_URL*}" title="{!AUTHOR}: {AUTHOR*}">{AUTHOR*}</a>}
							{+START,INCLUDE,MEMBER_TOOLTIP}{+END}
						{+END}

						{+START,IF,{$IS_EMPTY,{AUTHOR_URL}}}
						{+START,IF_NON_EMPTY,{$USERNAME*,{SUBMITTER}}}
							{!BY_SIMPLE,<a rel="author" href="{$MEMBER_PROFILE_URL*,{SUBMITTER}}">{$USERNAME*,{SUBMITTER}}</a>}
							{+START,INCLUDE,MEMBER_TOOLTIP}{+END}
						{+END}
						{+END}
					{+END}
					{+START,IF_NON_EMPTY,{$GET,author_details}}
						{$GET,author_details}
					{+END}

					{!POSTED_TIME_SIMPLE,{DATE*}}
			</div>

			<div class="news-piece-summary-contents">
				{+START,IF_NON_EMPTY,{NEWS}}
					{+START,IF,{TRUNCATE}}{$TRUNCATE_LEFT,{NEWS},400,0,1,0,0.4}{+END}
					{+START,IF,{$NOT,{TRUNCATE}}}{NEWS}{+END}
				{+END}

				{+START,IF_PASSED,TAGS}
					{+START,IF,{$CONFIG_OPTION,show_content_tagging_inline}}{TAGS}{+END}
				{+END}
			</div>

			<p class="news-piece-summary-goto">
				<a title="{!READ_MORE}: #{ID*}" href="{FULL_URL*}">{!READ_MORE}</a>
				{+START,IF,{$NOT,{$MATCH_KEY_MATCH,forum:topicview,forum:forumview}}}
					{+START,IF_PASSED_AND_TRUE,COMMENT_COUNT}<span class="comment-count">{$COMMENT_COUNT,news,{ID}}</span>{+END}
				{+END}
			</p>
		</div>

		{+START,IF,{$AND,{$NOT,{BLOG}},{$IS_NON_EMPTY,{AUTHOR_URL}}}}
		<div class="news-piece-summary-avatar news-piece-summary-avatar-category">
			{+START,IF,{$NOT,{$MOBILE}}}{+START,IF_NON_EMPTY,{IMG}}
			<img src="{IMG*}" title="{!CATEGORY}: {CATEGORY*}" alt="{!CATEGORY}: {CATEGORY*}">
			{+END}{+END}
		</div>
		{+END}

		{+START,IF,{$IS_EMPTY,{AUTHOR_URL}}}
		<div class="news-piece-summary-avatar news-piece-summary-avatar-author">
			{+START,IF,{$NOT,{$MOBILE}}}{+START,IF_NON_EMPTY,{$AVATAR,{SUBMITTER}}}
			<img src="{$AVATAR*,{SUBMITTER}}" title="{!AVATAR}" alt="{!AVATAR}">
			{+END}{+END}

			{+START,IF,{$NOT,{$MOBILE}}}{+START,IF,{$OCF}}{+START,IF_NON_EMPTY,{$OCF_RANK_IMAGE,{SUBMITTER}}}
			<p>{$OCF_RANK_IMAGE,{SUBMITTER}}</p>
			{+END}{+END}{+END}
		</div>
		{+END}
	</div>
</div>


