{TITLE}

{+START,IF_PASSED,RESULTS}
	<h2>{$?,{$IS_EMPTY,{SEARCH_TERM}},{!SEARCH_RESULTS_ARE_UNNAMED,{NUM_RESULTS*}},{!SEARCH_RESULTS_ARE,{NUM_RESULTS*},{SEARCH_TERM*}}}</h2>

	{+START,IF_EMPTY,{RESULTS}}
		<p class="nothing_here">{!NO_RESULTS_SEARCH}</p>
	{+END}
	{+START,IF_NON_EMPTY,{RESULTS}}
		<div class="clearfix" itemscope="itemscope" itemtype="http://schema.org/SearchResultsPage">
			{RESULTS}
		</div>

		{+START,IF_NON_EMPTY,{PAGINATION}}
			{PAGINATION}
		{+END}
	{+END}
{+END}

<div class="panel panel-default panel-collapsible">
	{+START,IF_PASSED,RESULTS}
		<a href="javascript:" class="panel-heading {+START,IF_NON_EMPTY,{RESULTS}}collapsed{+END}" data-toggle="collapse" data-target="#search_form">
			<h4 class="panel-title">{!SETTINGS}</h4>
		</a>
	{+END}

	<div id="search_form" class="panel-collapse collapse {+START,IF_NON_PASSED,RESULTS}in{+END}">
		<div class="panel-body">
			<p>
				{!SEARCH_HELP}
			</p>

			{$,Load up the staff actions template to display staff actions uniformly (we relay our parameters to it)...}
			{+START,IF,{$AND,{$SHOW_DOCS},{$HAS_PRIVILEGE,see_software_docs}}}
				{+START,INCLUDE,STAFF_ACTIONS}
					STAFF_ACTIONS_TITLE={!STAFF_ACTIONS}
					1_URL={$BRAND_BASE_URL*}/docs{$VERSION*}/pg/tut_search
					1_TITLE={!HELP}
					1_REL=help
				{+END}
			{+END}

			<form title="{!PRIMARY_PAGE_FORM}" action="{$URL_FOR_GET_FORM*,{URL}}" target="_self" method="get" class="form-horizontal form-default form-search-main">
				{$HIDDENS_FOR_GET_FORM,{URL}}

				<div class="form-group">
					<label for="search_content" class="control-label">{!SEARCH_FOR}</label>
					<div class="control-wrap">
						<div class="constrain_field">
							<input maxlength="255" {+START,IF,{$MOBILE}}autocorrect="off" {+END}autocomplete="off" onkeyup="update_ajax_search_list(this,event);" onkeypress="if (enter_pressed(event)) this.form.submit();" class="form-control search_content wide_field" type="search" size="48" id="search_content" name="content" value="{+START,IF_PASSED,CONTENT}{CONTENT*}{+END}" />
						</div>

						{+START,IF,{HAS_TEMPLATE_SEARCH}}
							<p class="help-text">{!MAY_LEAVE_BLANK_ADVANCED}</p>
						{+END}
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">{!OPTIONS}</label>
					<div class="control-wrap">
						{+START,IF,{$NOT,{$VALUE_OPTION,disable_boolean_search}}}
						{+START,IF,{$NOT,{OLD_MYSQL}}}
						<input type="checkbox" id="boolean_search" {+START,IF,{BOOLEAN_SEARCH}}checked="checked" {+END}name="boolean_search" value="1" onclick="document.getElementById('boolean_options').style.display=this.checked?'block':'none'; trigger_resize();" /> <label for="boolean_search">{!BOOLEAN_SEARCH}</label>
						<div style="display: {$JS_ON,none,block}" class="boolean_options" id="boolean_options">
							{+END}
							{+START,IF,{OLD_MYSQL}}
							<p>
								<input type="radio" {+START,IF,{AND}}checked="checked" {+END}id="conjunctive_operator_and" name="conjunctive_operator" value="AND" /><label for="conjunctive_operator_and">{!SEARCH_AND}</label>
								<input type="radio" {+START,IF,{$NOT,{AND}}}checked="checked" {+END}id="conjunctive_operator_or" name="conjunctive_operator" value="OR" /><label for="conjunctive_operator_or">{!SEARCH_OR}</label>
							</p>
							{+END}
							<p>{!BOOLEAN_HELP}</p>
							{+START,IF,{$NOT,{OLD_MYSQL}}}
						</div>
						{+END}
						{+END}
						<p><input type="checkbox" {+START,IF,{ONLY_TITLES}}checked="checked" {+END}id="only_titles" name="only_titles" value="1" /> <label for="only_titles">{!ONLY_TITLES}</label></p>
					</div>
				</div>


				<div class="form-group">
					<label for="search_author" class="control-label">{USER_LABEL*}</label>
					<div class="control-wrap">
						<div class="constrain_field">
							<span class="invisible_ref_point"></span><input {+START,IF,{$MOBILE}}autocorrect="off" {+END}autocomplete="off" maxlength="80" class="form-control" onkeyup="update_ajax_author_list(this,event);" type="text" value="{AUTHOR*}" id="search_author" name="author" />
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="search_days" class="control-label">{DAYS_LABEL*}</label>
					<div class="control-wrap">
						<select id="search_days" class="form-control" name="days">
							<option selected="selected" value="-1">{!NA}</option>
							<option {+START,IF,{$EQ,{DAYS},2}}selected="selected" {+END}value="2">{!SUBMIT_AGE_DAYS,2}</option>
							<option {+START,IF,{$EQ,{DAYS},5}}selected="selected" {+END}value="5">{!SUBMIT_AGE_DAYS,5}</option>
							<option {+START,IF,{$EQ,{DAYS},15}}selected="selected" {+END}value="15">{!SUBMIT_AGE_DAYS,15}</option>
							<option {+START,IF,{$EQ,{DAYS},30}}selected="selected" {+END}value="30">{!SUBMIT_AGE_DAYS,30}</option>
							<option {+START,IF,{$EQ,{DAYS},45}}selected="selected" {+END}value="45">{!SUBMIT_AGE_DAYS,45}</option>
							<option {+START,IF,{$EQ,{DAYS},60}}selected="selected" {+END}value="60">{!SUBMIT_AGE_DAYS,60}</option>
							<option {+START,IF,{$EQ,{DAYS},120}}selected="selected" {+END}value="120">{!SUBMIT_AGE_DAYS,120}</option>
							<option {+START,IF,{$EQ,{DAYS},240}}selected="selected" {+END}value="240">{!SUBMIT_AGE_DAYS,240}</option>
							<option {+START,IF,{$EQ,{DAYS},365}}selected="selected" {+END}value="365">{!SUBMIT_AGE_DAYS,365}</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">{!SORT_BY}</label>
					<div class="control-wrap">
						<div class="sr-only"><label for="search_direction">{!DIRECTION}</label></div>
						<div class="sr-only"><label for="search_sort">{!SORT_BY}</label></div>
						<select id="search_sort" class="form-control form-control-inline search_sort" name="sort">
							<option {+START,IF,{$EQ,{SORT},relevance}}selected="selected" {+END}value="relevance">{!RELEVANCE}</option>
							<option {+START,IF,{$EQ,{SORT},add_date}}selected="selected" {+END}value="add_date">{!DATE}</option>
							<option {+START,IF,{$EQ,{SORT},title}}selected="selected" {+END}value="title">{!TITLE}</option>
							{+START,IF,{CAN_ORDER_BY_RATING}}
							<option {+START,IF,{$EQ,{SORT},rating}}selected="selected" {+END}value="rating">{!RATING}</option>
							{+END}
							{+START,LOOP,EXTRA_SORT_FIELDS}
							<option {+START,IF,{$EQ,{SORT},{_loop_key*}}}selected="selected" {+END}value="{_loop_key*}">{_loop_var*}</option>
							{+END}
						</select>
						<select id="search_direction" class="form-control form-control-inline" name="direction">
							<option {+START,IF,{$EQ,{DIRECTION},ASC}}selected="selected" {+END}value="ASC">{!ASCENDING}</option>
							<option {+START,IF,{$EQ,{DIRECTION},DESC}}selected="selected" {+END}value="DESC">{!DESCENDING}</option>
						</select>
					</div>
				</div>

				{SPECIALISATION}

				<div class="form-group">
					<div class="form-btns">
						<input onclick="disable_button_just_clicked(this);" accesskey="u" class="btn btn-primary btn-block btn-page" type="submit" value="{!SEARCH_TITLE}">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


{+START,SET,commented_out}
	<form title="{!SEARCH}: Google" alass="google_search_box" method="get" action="http://www.google.com/search">
		<div class="box inline-block"><div class="box_inner">
			<div class="google_search_descrip">
				<img src="{$IMG*,google}" alt="Google" />
				 {!GOOGLE_SEARCH_DESCRIPTION,{$SITE_NAME*},<a title="Google: {!LINK_NEW_WINDOW}" rel="external" href="http://www.google.com" target="_blank">Google</a>}
			</div>

			<div class="google_search_button">
				<input type="hidden" name="as_sitesearch" value="{$BASE_URL*}" />
				<div class="sr-only"><label for="q">{!SEARCH}</label></div>
				<input type="text" id="q" name="q" value="{!SEARCH_FOR}" />  <input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-pageitem" type="submit" />
			</div>
		</div></div>
	</form>
{+END}