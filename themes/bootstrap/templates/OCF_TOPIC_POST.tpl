<div class="ocf-post">

	{$SET,bound_catalogue_entry,{$CATALOGUE_ENTRY_FOR,post,{ID}}}
	{+START,IF_NON_EMPTY,{$GET,bound_catalogue_entry}}
	{$CATALOGUE_ENTRY_ALL_FIELD_VALUES,{$GET,bound_catalogue_entry},1}
	{+END}

	<div class="ocf-post-body">
		<div class="ocf-topic-post-member-details" role="contentinfo">
			{+START,IF_NON_EMPTY,{POSTER}}
			<p class="ocf-topic-poster-name">
				{POSTER}
			</p>

			<div class="ocf-topic-poster-stuff">
				<p class="ocf-topic-avatar">{POST_AVATAR}</p>
				{+START,IF_NON_EMPTY,{POSTER_TITLE}}<p class="ocf-topic-poster-title">{POSTER_TITLE*}</p>{+END}
				{+START,IF_NON_EMPTY,{RANK_IMAGES}}<p class="ocf-topic-poster-rank-images">{RANK_IMAGES}</p>{+END}
			</div>
			{+END}
		</div>

		<div class="ocf-topic-post-area ocf-post-main-column">
			<div class="ocf-post-heading ocf-post-details" role="contentinfo">
				<div class="ocf-forum-box-left{+START,IF_NON_EMPTY,{CLASS}} {CLASS*}{+END}">
					<h2 class="sr-only">{!FORUM_POST}</h2>

					{EMPHASIS*}

					{+START,IF_NON_EMPTY,{ID}}<a id="post_{ID*}"></a>{+END}

					{FIRST_UNREAD}
				</div>

				<div class="ocf-post-details-date">
					{!POST_DATE,<time datetime="{$FROM_TIMESTAMP*,Y-m-d\TH:i:s\Z,{POST_DATE_RAW}}">{POST_DATE*}</time>}
				</div>

				{+START,IF_NON_EMPTY,{POSTER}}
				{+START,IF_PASSED,RATING}
				<div class="ocf-post-details-rating">
					{RATING}
				</div>
				{+END}

				{+START,IF_NON_EMPTY,{UNVALIDATED}}
				<div class="ocf-post-details-unvalidated">
					{UNVALIDATED*}
				</div>
				{+END}
				{+END}

				<div class="ocf-post-details-grapple">
					{+START,IF_NON_EMPTY,{URL}}
					{+START,IF_NON_EMPTY,{POST_ID*}}
					<a href="{URL*}">#{POST_ID*}</a>
					{+END}
					{+END}
					{+START,IF,{$EQ,{ID},{TOPIC_FIRST_POST_ID},}}{+START,IF_NON_EMPTY,{TOPIC_ID}}
					{+START,IF_NON_EMPTY,{POST_ID}}({!IN,{!FORUM_TOPIC_NUMBERED,{TOPIC_ID*}}}){+END}
					{+START,IF_EMPTY,{POST_ID}}{!FORUM_TOPIC_NUMBERED,{TOPIC_ID*}}{+END}
					{+END}{+END}

					{+START,IF,{$NOT,{$MOBILE}}}
					{+START,IF,{$JS_ON}}{+START,IF_NON_EMPTY,{ID}}{+START,IF_NON_PASSED_OR_FALSE,PREVIEWING}
					<form title="{!MARKER} #{ID*}" method="post" action="index.php" id="form-mark-{ID*}" class="ocf-off ocf-topic-marker inline">
						{$,Guests don't see this so search engines don't; hopefully people with screen-readers are logged in}
						{+START,IF,{$NOT,{$IS_GUEST}}}<label for="mark_{ID*}"><span class="sr-only">{!MARKER} #{ID*}</span></label>{+END}

						<input {+START,IF,{$NOT,{$IS_GUEST}}}title="{!MARKER} #{ID*}" {+END}value="1" type="checkbox" id="mark_{ID*}" name="mark_{ID*}" onclick="change_class(this,'form-mark-{ID*}','ocf-on ocf-topic-marker inline','ocf-off ocf-topic-marker inline')">
					</form>
					{+END}{+END}{+END}
					{+END}
				</div>
			</div>

			{+START,IF_NON_EMPTY,{POST_TITLE}}{+START,IF,{$NEQ,{TOPIC_FIRST_POST_ID},{ID}}}
			<h3>
				{POST_TITLE*}
			</h3>
			{+END}{+END}

			{+START,IF_PASSED,DESCRIPTION}{+START,IF_NON_EMPTY,{DESCRIPTION}}
			<h3>
				{DESCRIPTION*}
			</h3>
			{+END}{+END}

			<div class="ocf-post-contents">
				{POST}
			</div>

			{LAST_EDITED}

			{+START,IF_NON_EMPTY,{SIGNATURE}}
			<div class="ocf-signature">
				<hr class="ocf_sig_barrier">

				<div class="ocf-member-signature">
					{SIGNATURE}
				</div>
			</div>
			{+END}
		</div>
	</div>

	<div class="ocf-post-footer clearfix">
		<div class="ocf-left-post-buttons {CLASS*}">
			{EMPHASIS*}
		</div>

		<div class="btn-toolbar ocf-post-buttons">
			{BUTTONS}
		</div>
	</div>
</div>
