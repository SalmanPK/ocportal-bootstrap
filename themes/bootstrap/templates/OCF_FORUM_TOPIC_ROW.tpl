<tr>
	{+START,IF,{$CONFIG_OPTION,is_on_topic_emoticons}}
		<td class="col-topic-emoticons">
			{+START,IF_EMPTY,{EMOTICON}}
				<img class="vertical_alignment" alt="" src="{$IMG*,ocf_emoticons/none}" />
			{+END}
			{EMOTICON}
		</td>
	{+END}

	<td class="col-title">
		<a class="link-preview" data-tooltip="{$TRUNCATE_LEFT*,{POST},1000,0,1}" href="{URL*}">{!PREVIEW} <span style="display: none">{ID*}</span></a>

		<div>
			{TOPIC_ROW_LINKS}

			{+START,IF_NON_EMPTY,{TOPIC_ROW_MODIFIERS}}{TOPIC_ROW_MODIFIERS}{+END}

			<a href="{URL*}" title="{$ALTERNATOR_TRUNCATED,{TITLE},60,{!TOPIC_STARTED_DATE_TIME,{HOVER*;~}},,1}">{+START,FRACTIONAL_EDITABLE,{TITLE},title,_SEARCH:topics:type=_edit_topic:id={ID}}{+START,IF,{UNREAD}}<span class="ocf_unread_topic_title">{+END}{$TRUNCATE_LEFT,{TITLE},46,1}{+START,IF,{UNREAD}}</span>{+END}{+END}</a>

			{PAGES}

			{+START,IF_PASSED,BREADCRUMBS}{+START,IF_NON_EMPTY,{BREADCRUMBS}}
				<ol class="breadcrumb" itemprop="breadcrumb" role="navigation"><li>{BREADCRUMBS}</li></ol>
			{+END}{+END}
		</div>

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
		{+START,IF,{$NEQ,{TITLE},{DESCRIPTION}}}
			<div class="ocf-forum-topic-description">{DESCRIPTION*}</div>
		{+END}
		{+END}


		<ul class="list-num-posts-views horizontal-meta-details help-text" role="contentinfo">
			<li><span class="field_name">{!COUNT_POSTS}:</span> {NUM_POSTS*}</li>
			<li><span class="field_name">{!COUNT_VIEWS}:</span> {NUM_VIEWS*}</li>
		</ul>
	</td>

	<td class="col-starter-title">{POSTER}</td>
	<td class="col-num-posts">{NUM_POSTS*}</td>
	<td class="col-num-views">{NUM_VIEWS*}</td>
	<td class="col-last-post">{LAST_POST}</td>

	{MARKER}
</tr>

