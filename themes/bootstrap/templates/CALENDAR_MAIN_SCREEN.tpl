{TITLE}

<div class="clearfix">
	<div class="calendar_top_navigation">
		<div class="calendar_date_span_link"><div class="calendar_date_span_link_inner">
			{+START,IF_NON_EMPTY,{YEAR_URL}}
				<a href="{YEAR_URL*}">{!YEARLY}</a>
			{+END}
			{+START,IF_EMPTY,{YEAR_URL}}
				<span>{!YEARLY}</span>
			{+END}
		</div></div>
		<div class="calendar_date_span_link"><div class="calendar_date_span_link_inner">
			{+START,IF_NON_EMPTY,{MONTH_URL}}
				<a href="{MONTH_URL*}">{!MONTHLY}</a>
			{+END}
			{+START,IF_EMPTY,{MONTH_URL}}
				<span>{!MONTHLY}</span>
			{+END}
		</div></div>
		<div class="calendar_date_span_link"><div class="calendar_date_span_link_inner">
			{+START,IF_NON_EMPTY,{WEEK_URL}}
				<a href="{WEEK_URL*}">{!WEEKLY}</a>
			{+END}
			{+START,IF_EMPTY,{WEEK_URL}}
				<span>{!WEEKLY}</span>
			{+END}
		</div></div>
		<div class="calendar_date_span_link"><div class="calendar_date_span_link_inner">
			{+START,IF_NON_EMPTY,{DAY_URL}}
				<a href="{DAY_URL*}">{!DAILY}</a>
			{+END}
			{+START,IF_EMPTY,{DAY_URL}}
				<span>{!DAILY}</span>
			{+END}
		</div></div>
	</div>
</div>

<div class="trinav_wrap nograd">
	<div class="trinav_left">
		<a href="{PREVIOUS_URL*}" rel="{+START,IF,{PREVIOUS_NO_FOLLOW}}nofollow {+END}prev" accesskey="j"><img class="btn btn-primary btn-page" src="{$IMG*,page/previous}" title="{!PREVIOUS}" alt="{!PREVIOUS}" /></a>
	</div>
	<div class="trinav_right">
		<a href="{NEXT_URL*}" rel="{+START,IF,{NEXT_NO_FOLLOW}}nofollow {+END}next" accesskey="k"><img class="btn btn-primary btn-page" src="{$IMG*,page/next}" title="{!NEXT}" alt="{!NEXT}" /></a>
	</div>
	{+START,IF,{$NOT,{$MOBILE}}}
		<div class="trinav_mid">
			{+START,IF_NON_EMPTY,{ADD_URL}}
				<a rel="add" href="{ADD_URL*}"><img class="btn btn-primary btn-page" src="{$IMG*,page/add_event}" title="{!ADD_CALENDAR_EVENT}" alt="{!ADD_CALENDAR_EVENT}" /></a>
			{+END}
		</div>
	{+END}
</div>

<div class="horizontal_scrolling">
	{MAIN}
</div>

{+START,IF_NON_EMPTY,{ADD_URL}}
	<p class="btn-toolbar">
		<a rel="add" href="{ADD_URL*}"><img class="btn btn-primary btn-page" src="{$IMG*,page/add_event}" title="{!ADD_CALENDAR_EVENT}" alt="{!ADD_CALENDAR_EVENT}" /></a>
	</p>
{+END}

<div class="panel panel-default panel-collapsible panel-calendar_main_screen_interests">
	<a href="javascript:" class="panel-heading collapsed" data-toggle="collapse" data-target="#calendar-main-interests">
		<h2 class="panel-title">{!INTERESTS}</h2>
	</a>

	<div class="panel-collapse collapse" id="calendar-main-interests">
		<div class="panel-body">
			{+START,IF_NON_EMPTY,{EVENT_TYPES_1}}
			<div class="pull-right event_interest_box">
				<form title="{!INTERESTS}" method="post" action="{INTERESTS_URL*}">
					<p><strong>{!DESCRIPTION_INTERESTS}</strong></p>

					<div class="calendar_main_page_hidden_data">
						{EVENT_TYPES_1}
					</div>

					<p class="proceed_button">
						<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-page" type="submit" value="{!INTERESTS}">
					</p>
				</form>
			</div>
			{+END}
			{+START,IF_NON_EMPTY,{EVENT_TYPES_2}}
			<div class="pull-left event_interest_box">
				<form title="{!FILTER}" action="{$URL_FOR_GET_FORM*,{FILTER_URL}}" method="get">
					{$HIDDENS_FOR_GET_FORM,{FILTER_URL}}

					<p><strong>{!DESCRIPTION_INTERESTS_2}</strong></p>

					<div class="calendar_main_page_hidden_data">
						{EVENT_TYPES_2}
					</div>

					<p class="proceed_button">
						<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-page" type="submit" value="{!FILTER}">
					</p>
				</form>
			</div>
			{+END}
		</div>
	</div>
</div>

