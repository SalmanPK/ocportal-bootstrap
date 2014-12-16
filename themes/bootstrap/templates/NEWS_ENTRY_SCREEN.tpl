<div itemscope="itemscope" itemtype="http://schema.org/{$?,{BLOG},BlogPosting,NewsArticle}" class="content-screen content-screen-news-entry">
	<div class="content-screen-contents">
		{TITLE}

		{+START,IF_PASSED,WARNING_DETAILS}
			{WARNING_DETAILS}
		{+END}

		<div class="content-screen-details" role="contentinfo">
			<ul class="list-inline list-news-details">
				{+START,IF,{$INLINE_STATS}}<li class="views"> {!VIEWS_SIMPLE,{VIEWS*}}</li>{+END}
				<li class="date"> {!ADDED_SIMPLE,<time datetime="{$FROM_TIMESTAMP*,Y-m-d\TH:i:s\Z,{ADD_DATE_RAW}}" pubdate itemprop="datePublished">{DATE*}</time>}</li>
				{+START,IF_NON_EMPTY,{AUTHOR_URL}}
				<li class="author">
					<span class="field-name">{!AUTHOR}:</span> <a rel="author" itemprop="author" href="{AUTHOR_URL*}" title="{!AUTHOR}: {AUTHOR*}">{AUTHOR*}</a>
					{+START,INCLUDE,MEMBER_TOOLTIP}{+END}
				</li>
				{+END}
				{+START,IF_EMPTY,{AUTHOR_URL}}{+START,IF_NON_EMPTY,{$USERNAME,{SUBMITTER}}}
				<li class="submitter">
					{!BY_SIMPLE,<a rel="author" href="{$MEMBER_PROFILE_URL*,{SUBMITTER}}" itemprop="author">{$USERNAME*,{SUBMITTER}}</a>}
					{+START,INCLUDE,MEMBER_TOOLTIP}{+END}
				</li>
				{+END}{+END}
			</ul>
		</div>

		<div itemprop="articleBody" class="content-screen-article">
			{NEWS_FULL}

			{+START,IF_NON_EMPTY,{EDIT_DATE_RAW}}
			<div class="edited" role="note">
				<i class="fa fa-pencil"></i>
				{!EDITED}
				<time datetime="{$FROM_TIMESTAMP*,Y-m-d\TH:i:s\Z,{EDIT_DATE_RAW}}">{$DATE*,,,,{EDIT_DATE_RAW}}</time>
				<br><br>
			</div>
			{+END}
		</div>
	</div>

	{$SET,bound_catalogue_entry,{$CATALOGUE_ENTRY_FOR,news,{ID}}}

	{+START,IF_NON_EMPTY,{$GET,bound_catalogue_entry}}{$CATALOGUE_ENTRY_ALL_FIELD_VALUES,{$GET,bound_catalogue_entry}}{+END}

	{+START,IF,{$CONFIG_OPTION,show_content_tagging}}{TAGS}{+END}

	{$,Load up the staff actions template to display staff actions uniformly (we relay our parameters to it)...}
	{+START,INCLUDE,STAFF_ACTIONS}
		1_URL={SUBMIT_URL*}
		1_TITLE={$?,{BLOG},{!ADD_NEWS_BLOG},{!ADD_NEWS}}
		1_REL=add
		1_NOREDIRECT=1
		2_URL={EDIT_URL*}
		2_ACCESSKEY=q
		2_TITLE={!_EDIT_LINK}
		2_REL=edit
		3_URL={NEWSLETTER_URL*}
		3_TITLE={+START,IF_NON_EMPTY,{NEWSLETTER_URL}}{!newsletter:NEWSLETTER_SEND}{+END}
	{+END}

	<div class="content-screen-lined-up-boxes clearfix ">
		{+START,IF_NON_EMPTY,{TRACKBACK_DETAILS}}
			<div class="trackbacks right">
				{TRACKBACK_DETAILS}
			</div>
		{+END}
		{+START,IF_NON_EMPTY,{RATING_DETAILS}}
			<div class="ratings right">
				{RATING_DETAILS}
			</div>
		{+END}

		<aside role="navigation" class="well well-sm well-news-entry-screen left">
			<p class="lonely_label">
				{$?,{BLOG},{!BLOG_NEWS_UNDER_THESE},{!NEWS_UNDER_THESE}}
			</p>
			<ul>
				{+START,LOOP,CATEGORIES}
					<li><a href="{$PAGE_LINK*,_SELF:news:misc:{_loop_key}{$?,{BLOG},:blog=1,}}">{_loop_var*}</a></li>
				{+END}
			</ul>

			{+START,IF,{$NOT,{$_GET,blog}}}
				{$,Actually breadcrumbs will do fine!,<div>
					<a rel="archives" href="\{ARCHIVE_URL*\}"><img class="btn btn-primary btn-page" src="\{$IMG*,page/all2\}" alt="\{!VIEW_ARCHIVE\}" /></a>
				</div>}
			{+END}
		</aside>
	</div>

	<div class="content-screen-comments">
		{COMMENT_DETAILS}
	</div>

	{+START,IF,{$CONFIG_OPTION,show_screen_actions}}{+START,IF_PASSED,_TITLE}{$BLOCK,failsafe=1,block=main_screen_actions,title={_TITLE}}{+END}{+END}
</div>
