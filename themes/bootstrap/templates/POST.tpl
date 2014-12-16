{+START,IF,{IS_SPACER_POST}}
	{+START,IF,{$NOT,{$IN_STR,{POST},<div}}}
		<div class="post-wrap">
			<div class="post">{POST}</div>
		</div>
	{+END}

	{+START,IF,{$IN_STR,{POST},<div}}
		{POST}
	{+END}
{+END}

{+START,IF,{$NOT,{IS_SPACER_POST}}}
	<div class="post-wrap {+START,IF,{HIGHLIGHT}}highlighted-post{+END}">
		<div class="post time-{TIME_RAW*}" itemprop="reviews" itemscope="itemscope" itemtype="http://schema.org/Review"  id="post_wrap_{ID*}">
			{+START,IF_NON_EMPTY,{ID}}<a id="post_{ID*}"></a>{+END}

			<div class="post-body">
				{+START,IF_NON_EMPTY,{TITLE}}
					<h3 class="post-title" itemprop="name">{TITLE*}</h3>
				{+END}


				<p class="post-avatar">
					{+START,IF_NON_EMPTY,{$AVATAR,{POSTER_ID}}}
						<img src="{$AVATAR*,{POSTER_ID}}" alt="{!AVATAR}">
					{+END}

					{+START,IF_EMPTY,{$AVATAR,{POSTER_ID}}}
						<img src="{$IMG*,ocf_default_avatars/default_set/ocp_fanatic}" alt="{!AVATAR}">
					{+END}
				</p>

				<div class="post-area">
					<div class="post-details">
						{+START,IF_NON_EMPTY,{POSTER_URL}}{!BY_SIMPLE,<a class="post_poster" href="{POSTER_URL*}">{POSTER_NAME*}</a>} {+START,INCLUDE,MEMBER_TOOLTIP}SUBMITTER={POSTER_ID}{+END}{+END}
						{+START,IF_EMPTY,{POSTER_URL}}{!BY_SIMPLE,{POSTER_NAME*}},{+END}

						<span class="post-time">
							{!POSTED_TIME_SIMPLE_LOWER,<time itemprop="datePublished" datetime="{$FROM_TIMESTAMP*,Y-m-d\TH:i:s\Z,{TIME_RAW}}" pubdate="pubdate">{TIME*}</time>}
						</span>

						{+START,IF_NON_EMPTY,{EMPHASIS}}
							<span class="post-action-link">({EMPHASIS})</span>
						{+END}

						{+START,IF_NON_EMPTY,{UNVALIDATED}}
							<span class="post-action-link">({UNVALIDATED})</span>
						{+END}

						{+START,LOOP,INDIVIDUAL_REVIEW_RATINGS}
							{+START,IF_PASSED,REVIEW_RATING}
								{+START,SET,REVIEWS}
									{+START,IF_NON_EMPTY,{REVIEW_TITLE}}
										<span class="field-title">{REVIEW_TITLE*}:</span>
									{+END}

									{$SET,rating_loop,0}
									{+START,WHILE,{$LT,{$GET,rating_loop},{$ROUND,{$DIV_FLOAT,{REVIEW_RATING},2}}}}
										<img src="{$IMG*,rating}" alt="{$ROUND,{$DIV_FLOAT,{REVIEW_RATING},2}}" />
										{$INC,rating_loop}
									{+END}

									<span itemprop="reviewRating" itemscope="itemscope" itemtype="http://schema.org/Rating"><meta itemprop="ratingValue" content="{REVIEW_RATING*}" /></span>
								{+END}

								<span class="post-action-link">
									({$GET,REVIEWS})
								</span>
							{+END}
						{+END}

						{+START,IF_PASSED,RATING}
							<span class="post-action-link">{RATING}</span>
						{+END}

						{+START,IF,{$NOT,{$MOBILE}}}
							{+START,IF,{$JS_ON}}{+START,IF_NON_EMPTY,{ID}}{+START,IF_NON_PASSED_OR_FALSE,PREVIEWING}{+START,IF,{$MATCH_KEY_MATCH,_SEARCH:topicview}}
								<span id="cell_mark_{ID*}" class="ocf-off post-action-link">
									{+START,IF,{$NOT,{$IS_GUEST}}}<label for="mark_{ID*}" class="sr-only">{!MARKER} #{ID*}</label>{+END}{$,Guests don't see this so search engines don't; hopefully people with screen-readers are logged in}
									<input value="1" type="checkbox" id="mark_{ID*}" name="mark_{ID*}" {+START,IF,{$NOT,{$IS_GUEST}}}title="{!MARKER} #{ID*}" {+END}>
								</span>
							{+END}{+END}{+END}{+END}
						{+END}
					</div>

					<div itemprop="reviewBody" class="post-contents">
						{POST}
					</div>

					{LAST_EDITED}
				</div>
			</div>

			{+START,IF_NON_EMPTY,{BUTTONS}}
				<div class="post-buttons btn-toolbar">
					{BUTTONS}
				</div>
			{+END}
		</div>


		{+START,IF_PASSED,CHILDREN}
			<div id="post_children_{ID*}" class="post-thread-children">{CHILDREN}</div>
		{+END}

		{+START,INCLUDE,POST_CHILD_LOAD_LINK}{+END}
	</div>
{+END}
