{+START,IF,{$NOR,{$GET,login_screen},{$MATCH_KEY_MATCH,_WILD:login}}}
	<section class="panel panel-default panel-block_side_personal_stats_no">
		{+START,IF_NON_EMPTY,{TITLE}}<div class="panel-heading"><h3 class="panel-title">{TITLE}</h3></div>{+END}

		<div class="panel-body">
		<form title="{!_LOGIN}" onsubmit="if (check_field_for_blankness(this.elements['login_username'],event)) { disable_button_just_clicked(this); return true; } return false;" action="{LOGIN_URL*}" method="post" class="autocomplete">
			<div>
				<div class="form-group">
					<label for="s_login_username" class="sr-only">{!USERNAME}{+START,IF,{$AND,{$OCF},{$CONFIG_OPTION,one_per_email_address}}} / {!EMAIL_ADDRESS}{+END}</label>
					<input maxlength="80" accesskey="l" class="form-control" type="text" placeholder="{!USERNAME}" id="s_login_username" name="login_username">
				</div>

				<div class="form-group">
					<label for="s_password" class="sr-only">{!PASSWORD}</label>
					<input maxlength="255" class="form-control" type="password" placeholder="{!PASSWORD}" name="password" id="s_password">
				</div>

				<div class="form-group">
					<input type="checkbox" value="1" id="s_remember" name="remember" {+START,IF,{$CONFIG_OPTION,remember_me_by_default}}checked="checked" {+END}{+START,IF,{$NOT,{$CONFIG_OPTION,remember_me_by_default}}}onclick="if (this.checked) { var t=this; window.fauxmodal_confirm('{!REMEMBER_ME_COOKIE;}',function(answer) { if (!answer) { t.checked=false; } }); }" {+END}>
					<label for="s_remember">{!REMEMBER_ME}</label>
				</div>
				<div class="form-group">
					{+START,IF,{$CONFIG_OPTION,is_on_invisibility}}
					<input type="checkbox" value="1" id="login_invisible" name="login_invisible">
					<label for="login_invisible">{!INVISIBLE}</label>
					{+END}
				</div>

				<div class="form-group">
					<input class="btn btn-primary btn-block btn-login" type="submit" value="{!_LOGIN}">
				</div>
			</div>
		</form>

		<ul class="list-inline">
			{+START,IF_NON_EMPTY,{JOIN_URL}}<li><a href="{JOIN_URL*}">{!_JOIN}</a></li>{+END}
			<li><a onclick="return open_link_as_overlay(this);" rel="nofollow" href="{FULL_LOGIN_URL*}" title="{!MORE}: {!_LOGIN}">{!MORE}</a></li>
		</ul>
		</div>
	</section>
{+END}
