<tr>
	{+START,IF,{$CONFIG_OPTION,is_on_topic_emoticons}}
		<td class="col col-topic-emoticons">
			{+START,IF_EMPTY,{EMOTICON}}
				<img class="vertical-alignment" alt="" src="{$IMG*,ocf_emoticons/none}">
			{+END}
			{EMOTICON}
		</td>
	{+END}

	<td class="col col-topic-title">
		<a class="link-preview" data-tooltip="{$TRUNCATE_LEFT*,{POST},1000,0,1}" href="{URL*}">{!PREVIEW}</a>

		{TOPIC_ROW_LINKS}

		<a href="{URL*}" title="{$ALTERNATOR_TRUNCATED,{TITLE},60,{!TOPIC_STARTED_DATE_TIME,{HOVER*;~}},,1}" class="link-topic-title {$?,{UNREAD},is-unread,}">
			{+START,FRACTIONAL_EDITABLE,{TITLE},title,_SEARCH:topics:type=_edit_topic:id={ID}}
				{$TRUNCATE_LEFT,{TITLE},46,1}
			{+END}
		</a>

		{+START,IF_NON_EMPTY,{TOPIC_ROW_MODIFIERS}}{TOPIC_ROW_MODIFIERS}{+END}

		{PAGES}

		{+START,IF_PASSED,BREADCRUMBS}{+START,IF_NON_EMPTY,{BREADCRUMBS}}
			<ol class="breadcrumb" itemprop="breadcrumb" role="navigation"><li>{BREADCRUMBS}</li></ol>
		{+END}{+END}

		{+START,IF_NON_EMPTY,{DESCRIPTION}}{+START,IF,{$NEQ,{TITLE},{DESCRIPTION}}}
			<p class="ocf-forum-topic-description">{DESCRIPTION*}</p>
		{+END}{+END}

		<ul class="list-num-posts-views horizontal-meta-details help-text" role="contentinfo">
			<li><span class="field-name">{!COUNT_POSTS}:</span> {NUM_POSTS*}</li>
			<li><span class="field-name">{!COUNT_VIEWS}:</span> {NUM_VIEWS*}</li>
		</ul>
	</td>

	<td class="col col-starter-title">{POSTER}</td>
	<td class="col col-num-posts">{NUM_POSTS*}</td>
	<td class="col col-num-views">{NUM_VIEWS*}</td>
	<td class="col col-last-post">{LAST_POST}</td>

	{MARKER}
</tr>

