<div id="comments-wrapper" class="comments-wrapper" role="complementary">
	{+START,SET,REVIEWS_TITLE}
		<span class="field-title">{!_REVIEWS,{$META_DATA*,numcomments}}:</span>

		{$SET,rating_loop,0}
		{+START,LOOP,REVIEW_RATING_CRITERIA}
			{+START,IF_NON_EMPTY,{REVIEW_RATING}}
				{+START,IF_EMPTY,{REVIEW_TITLE}}
					{+START,WHILE,{$LT,{$GET,rating_loop},{$ROUND,{$DIV_FLOAT,{REVIEW_RATING},2}}}}
						<img src="{$IMG*,rating}" alt="{$ROUND,{$DIV_FLOAT,{REVIEW_RATING},2}}">
						{$INC,rating_loop}
					{+END}
				{+END}
			{+END}
		{+END}

		{+START,IF,{$NEQ,{$GET,rating_loop},0}}
			<span class="reviews-average horiz_field_sep">({!AVERAGED})</span>
		{+END}

		{+START,IF,{$EQ,{$GET,rating_loop},0}}
			{!UNRATED}
		{+END}
	{+END}

	<div class="panel panel-default panel-comments-wrapper-comments">
		<div class="panel-heading">
			<h2 class="panel-title clearfix">
				<div class="btn-toolbar btn-toolbar-notifications pull-right">
					{+START,INCLUDE,NOTIFICATION_BUTTONS}
					NOTIFICATIONS_TYPE=comment_posted
					NOTIFICATIONS_ID={TYPE}_{ID}
					BUTTON_TYPE=pageitem
					{+END}
				</div>
				{$?,{$IS_NON_EMPTY,{REVIEW_RATING_CRITERIA}},{$GET,REVIEWS_TITLE},{!COMMENTS}}
			</h2>
		</div>

		<div class="panel-body">
			{+START,LOOP,REVIEW_RATING_CRITERIA}
			{+START,IF_NON_EMPTY,{REVIEW_RATING}}
			{+START,IF_NON_EMPTY,{REVIEW_TITLE}}
			<p class="review-title">
				<strong>{REVIEW_TITLE*}:</strong>
				{$SET,rating_loop,0}
				{+START,WHILE,{$LT,{$GET,rating_loop},{$ROUND,{$DIV_FLOAT,{REVIEW_RATING},2}}}}
				<img src="{$IMG*,rating}" alt="{$ROUND,{$DIV_FLOAT,{REVIEW_RATING},2}}" />
				{$INC,rating_loop}
				{+END}
			</p>
			{+END}
			{+END}
			{+END}

			<meta itemprop="interactionCount" content="UserComments:{$META_DATA*,numcomments}" />

			{COMMENTS`}

			{+START,IF_EMPTY,{$TRIM,{COMMENTS}}}
				<p class="nothing-here">{!NO_COMMENTS}</p>
			{+END}
		</div>

		{+START,IF_PASSED,PAGINATION} {PAGINATION} {+END}
	</div>

	{$,If has commenting permission}
	{+START,IF_NON_EMPTY,{FORM}}
		{+START,IF_PASSED,COMMENTS}<a id="last_comment" rel="docomment"></a>{+END}
		<div class="comments-wrapper-form">{FORM}</div>
	{+END}

	{+START,IF_PASSED,SERIALIZED_OPTIONS}{+START,IF_PASSED,HASH}
		<script>
			window.comments_serialized_options='{SERIALIZED_OPTIONS;}';
			window.comments_hash='{HASH;}';
		</script>
	{+END}{+END}


	{$,Load up the staff actions template to display staff actions uniformly (we relay our parameters to it)...}
	{+START,IF_NON_EMPTY,{AUTHORISED_FORUM_URL}}
		{+START,INCLUDE,STAFF_ACTIONS}
			STAFF_ACTIONS_TITLE={!COMMENTS}
			1_URL={AUTHORISED_FORUM_URL*}
			1_TITLE={!VIEW_COMMENT_TOPIC}
		{+END}
	{+END}
</div>
