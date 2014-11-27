{$,Forum/private topic search}
{+START,IF,{$EQ,{$PAGE},forumview}}
	{+START,IF,{$EQ,{$_GET,type},pt}}
		<div class="ocf_search_box">
			<form title="{!SEARCH}" action="{$URL_FOR_GET_FORM*,{$PAGE_LINK*,_SEARCH:search:results:ocf_own_pt,1}}" method="get">
				{$HIDDENS_FOR_GET_FORM,{$PAGE_LINK,_SEARCH:search:results:ocf_own_pt,1}}

				<div class="form-group">
					<label class="sr-only" for="member_bar_search">{!_SEARCH_PRIVATE_TOPICS}</label>
					<div class="input-group">
						<input maxlength="255" type="text" name="content" id="member_bar_search" class="form-control input-sm" placeholder="{!_SEARCH_PRIVATE_TOPICS*}">
						<span class="input-group-btn">
							<input class="btn btn-primary btn-sm dropdown-toggle" type="submit" onclick="disable_button_just_clicked(this);" value="{!SEARCH}">
							<a class="btn btn-link btn-sm" href="{$PAGE_LINK*,_SEARCH:search:misc:ocf_own_pt}" title="{!MORE}: {!search:SEARCH_OPTIONS}">{!MORE}</a>
						</span>
					</div>

				</div>
			</form>
		</div>
	{+END}
	{+START,IF,{$NEQ,{$_GET,type},pt}}
		<div class="ocf_search_box">
			<form title="{!SEARCH}" action="{$URL_FOR_GET_FORM*,{$PAGE_LINK*,_SEARCH:search:results:ocf_posts:search_under={$_GET,id},1}}" method="get">
				{$HIDDENS_FOR_GET_FORM,{$PAGE_LINK,_SEARCH:search:results:ocf_posts:search_under={$_GET,id},1}}

				<div class="form-group">
					<label class="sr-only" for="member_bar_search">{!SEARCH_FORUM_POSTS}</label>
					<div class="input-group">
						<input maxlength="255" type="text" name="content" id="member_bar_search" class="form-control input-sm" placeholder="{!SEARCH_FORUM_POSTS*}">
						<span class="input-group-btn">
							<input class="btn btn-primary btn-sm dropdown-toggle" type="submit" onclick="disable_button_just_clicked(this);" value="{!SEARCH}">
							<a class="btn btn-link btn-sm" href="{$PAGE_LINK*,_SEARCH:search:misc:ocf_posts:search_under={$_GET,id}}" title="{!MORE}: {!search:SEARCH_OPTIONS}">{!MORE}</a>
						</span>
					</div>
				</div>
			</form>
		</div>
	{+END}
{+END}

{$,Topic search}
{+START,IF,{$EQ,{$PAGE},topicview}}
	<div class="ocf_search_box">
		<form title="{!SEARCH}" action="{$URL_FOR_GET_FORM*,{$PAGE_LINK,_SEARCH:search:results:ocf_within_topic:search_under={$_GET,id}}}" method="get">
			{$HIDDENS_FOR_GET_FORM,{$PAGE_LINK,_SEARCH:search:results:ocf_within_topic:search_under={$_GET,id}}}

			<div class="form-group">
				<label class="sr-only" for="member_bar_search">{!SEARCH_POSTS_WITHIN_TOPIC}</label>
				<div class="input-group">
					<input maxlength="255" type="text" name="content" id="member_bar_search" class="form-control input-sm" placeholder="{!SEARCH_POSTS_WITHIN_TOPIC*}">
					<span class="input-group-btn">
						<input class="btn btn-primary btn-sm dropdown-toggle" type="submit" onclick="disable_button_just_clicked(this);" value="{!SEARCH}">
						<a class="btn btn-link btn-sm" href="{$PAGE_LINK*,_SEARCH:search:misc:ocf_within_topic:search_under={$_GET,id}}" title="{!MORE}: {!search:SEARCH_OPTIONS}">{!MORE}</a>
					</span>
				</div>

			</div>
		</form>
	</div>
{+END}

{$,General search}
{+START,IF,{$NEQ,{$PAGE},forumview,topicview}}
	<div class="ocf_search_box">
		<form title="{!SEARCH}" action="{$URL_FOR_GET_FORM*,{$PAGE_LINK,_SEARCH:search:results}}" method="get">
			{$HIDDENS_FOR_GET_FORM,{$PAGE_LINK,_SEARCH:search:results}}

			<div class="form-group">
				<label class="sr-only" for="member_bar_search">{!SEARCH}</label>
				<div class="input-group">
					<input maxlength="255" type="text" name="content" id="member_bar_search" class="form-control input-sm" placeholder="{!SEARCH*}">
					<span class="input-group-btn">
						<input class="btn btn-primary btn-sm dropdown-toggle" type="submit" onclick="disable_button_just_clicked(this);" value="{!SEARCH}">
						<a class="btn btn-link btn-sm" href="{$PAGE_LINK*,_SEARCH:search:misc}" title="{!MORE}: {!search:SEARCH_OPTIONS}">{!MORE}</a>
					</span>
				</div>
			</div>
		</form>
	</div>
{+END}
