{TITLE}

{WARNING_DETAILS}

<div class="ocf-topic-{$?,{THREADED},threaded,linear}">
	{+START,IF,{$NOT,{$VALUE_OPTION,disable_forum_dupe_buttons}}}
		<div class="non-accessibility-redundancy">
			<div class="clearfix">
				<div class="btn-toolbar ocf-screen-buttons">
					{+START,INCLUDE,NOTIFICATION_BUTTONS}
						NOTIFICATIONS_TYPE=ocf_topic
						NOTIFICATIONS_ID={ID}
						NOTIFICATIONS_PAGELINK=forum:topics:toggle_notifications_topic:{ID}
					{+END}
					{SCREEN_BUTTONS}
				</div>
			</div>
		</div>
	{+END}

	{POLL}

	{$SET,bound_catalogue_entry,{$CATALOGUE_ENTRY_FOR,topic,{ID}}}
	{+START,IF_NON_EMPTY,{$GET,bound_catalogue_entry}}{$CATALOGUE_ENTRY_ALL_FIELD_VALUES,{$GET,bound_catalogue_entry}}{+END}

	{+START,IF,{$NOT,{$VALUE_OPTION,disable_forum_dupe_buttons}}}
		{+START,IF_NON_EMPTY,{PAGINATION}}
			<div class="non-accessibility-redundancy">
				<div class="pagination_spacing clearfix">
					{$REPLACE, id="blp_, id="blp2_,{$REPLACE, for="blp_, for="blp2_,{$REPLACE, id="r_, id="r2_,{$REPLACE, for="r_, for="r2_,{PAGINATION}}}}}
				</div>
			</div>
		{+END}
	{+END}

	{+START,IF,{THREADED}}
		<div class="comments-wrapper">
			<div class="boxless-space">
				{POSTS}
			</div>
		</div>

		{+START,IF_PASSED,SERIALIZED_OPTIONS}{+START,IF_PASSED,HASH}
			<script>
				window.comments_serialized_options='{SERIALIZED_OPTIONS;}';
				window.comments_hash='{HASH;}';
			</script>
		{+END}{+END}
	{+END}
	{+START,IF,{$NOT,{THREADED}}}
		{+START,IF_NON_EMPTY,{POSTS}}
			<div class="ocf-topic">
				{POSTS}
			</div>
		{+END}
	{+END}

	<div class="ocf-topic-screen alert alert-info">
		{+START,IF_NON_EMPTY,{MEMBERS_VIEWING}}
			{+START,IF,{$NEQ,{NUM_MEMBERS},0}}
				{!MEMBERS_VIEWING,{NUM_GUESTS*},{NUM_MEMBERS*},{MEMBERS_VIEWING}}
			{+END}
			{+START,IF,{$EQ,{NUM_MEMBERS},0}}
				{!_MEMBERS_VIEWING,{NUM_GUESTS*},{NUM_MEMBERS*},{MEMBERS_VIEWING}}
			{+END}
		{+END}
		{+START,IF_EMPTY,{MEMBERS_VIEWING}}
			{!TOO_MANY_USERS_ONLINE}
		{+END}
	</div>
	{+START,IF_EMPTY,{POSTS}}
		<p class="nothing_here">
			{!NO_ENTRIES}
		</p>
	{+END}

	{+START,IF,{$OR,{$IS_NON_EMPTY,{MODERATOR_ACTIONS}},{$AND,{$NOT,{$MOBILE}},{$IS_NON_EMPTY,{MARKED_POST_ACTIONS}}},{MAY_CHANGE_MAX}}}
		<div class="ocf-topic-control-functions">
			{+START,IF_NON_EMPTY,{MODERATOR_ACTIONS}}
				<form title="{!TOPIC_ACTIONS}" class="form-inline" action="{$URL_FOR_GET_FORM*,{ACTION_URL}}" method="get">
					{$HIDDENS_FOR_GET_FORM,{ACTION_URL}}
					<label for="tma_type">{!TOPIC_ACTIONS}:</label>

					<div class="input-group">
						<select class="form-control dropdown-actions input-sm" id="tma_type" name="type">
							<option value="misc">-</option>
							{MODERATOR_ACTIONS}
						</select>
						<span class="input-group-btn">
							<input class="btn btn-primary btn-sm btn-pageitem" type="submit" onclick="if (document.getElementById('tma_type').selectedIndex!=-1) { disable_button_just_clicked(this); return true; }  return false;" value="{!PROCEED}">
						</span>
					</div>
				</form>
			{+END}
			{+START,IF,{$NOT,{$MOBILE}}}
				{+START,IF_NON_EMPTY,{MARKED_POST_ACTIONS}}
					{+START,IF,{$JS_ON}}
						<form title="{!MARKED_POST_ACTIONS}" class="form-inline" action="{$URL_FOR_GET_FORM*,{ACTION_URL}}" method="get">
							{$HIDDENS_FOR_GET_FORM,{ACTION_URL}}

							<label for="mpa_type">{!MARKED_POST_ACTIONS}:</label>

							<div class="input-group">
								<select id="mpa_type" name="type" class="form-control dropdown-actions input-sm">
									{+START,IF,{$GT,{$SUBSTR_COUNT,{MARKED_POST_ACTIONS},<option},1}}
									<option value="misc">-</option>
									{+END}
									{MARKED_POST_ACTIONS}
								</select>

								<span class="input-group-btn">
									<input class="btn btn-primary btn-pageitem btn-sm" type="submit" onclick="if (!add_form_marked_posts(this.form,'mark_')) { window.fauxmodal_alert('{!NOTHING_SELECTED=;}'); return false; } if (document.getElementById('mpa_type').selectedIndex!=-1) { disable_button_just_clicked(this); return true; } return false;" value="{!PROCEED}">
								</span>
							</div>
						</form>
					{+END}
				{+END}
			{+END}
			{+START,IF_NON_EMPTY,{PAGINATION}}
				{+START,IF,{MAY_CHANGE_MAX}}
					<form title="{!PER_PAGE}" class="form-inline" action="{$URL_FOR_GET_FORM*,{$SELF_URL,0,1}}" method="get">
						{$HIDDENS_FOR_GET_FORM,{$SELF_URL,0,1},max}
						<label for="max">{!PER_PAGE}: </label>

						<div class="input-group">
							<select name="max" id="max" class="form-control dropdown-actions input-sm">
								<option value="10"{$?,{$EQ,{MAX},10}, selected="selected",}>10</option>
								<option value="20"{$?,{$EQ,{MAX},20}, selected="selected",}>20</option>
								<option value="30"{$?,{$EQ,{MAX},30}, selected="selected",}>30</option>
								<option value="50"{$?,{$EQ,{MAX},50}, selected="selected",}>50</option>
								<option value="100"{$?,{$EQ,{MAX},100}, selected="selected",}>100</option>
								<option value="300"{$?,{$EQ,{MAX},300}, selected="selected",}>300</option>
							</select>

							<span class="input-group-btn">
								<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-sm btn-pageitem" type="submit" value="{!CHANGE}">
							</span>
						</div>
					</form>
				{+END}
			{+END}
		</div>
	{+END}

	{+START,IF_NON_EMPTY,{PAGINATION}}
		{PAGINATION}
	{+END}

	<div class="clearfix">
		<div class="btn-toolbar ocf-screen-buttons">
			{+START,INCLUDE,NOTIFICATION_BUTTONS}
				NOTIFICATIONS_TYPE=ocf_topic
				NOTIFICATIONS_ID={ID}
				NOTIFICATIONS_PAGELINK=forum:topics:toggle_notifications_topic:{ID}
			{+END}
			{SCREEN_BUTTONS}
		</div>

		{+START,IF,{$NOT,{$VALUE_OPTION,disable_forum_dupe_buttons}}}
			<div class="non-accessibility-redundancy clearfix">
				<ol class="breadcrumb" itemprop="breadcrumb" role="navigation">
					<li>{BREADCRUMBS}</li>
				</ol>
			</div>
		{+END}
	</div>

	<div class="ocf_quick_reply">
		{QUICK_REPLY}

		{+START,IF_EMPTY,{QUICK_REPLY}}{+START,IF,{$EQ,{LAST_POSTER},{$USER}}}{+START,IF,{$NOT,{$IS_GUEST}}}{+START,IF,{$NOT,{MAY_DOUBLE_POST}}}
			<div class="box box___ocf_topic_screen"><div class="box_inner">
				{!NO_DOUBLE_POST}
			</div></div>
		{+END}{+END}{+END}{+END}
	</div>

	{+START,IF,{$CONFIG_OPTION,show_screen_actions}}{+START,IF_PASSED,_TITLE}{$BLOCK,failsafe=1,block=main_screen_actions,title={_TITLE}}{+END}{+END}
</div>

