<section id="tray-{!MEMBER|}" class="ocf-information-bar-outer well well-sm">
	<div class="ocf-information-bar ocf-information-bar-guest">
		<div class="ocf-guest-column ocf-guest-column-login">
			<form title="{!_LOGIN}" onsubmit="if (check_field_for_blankness(this.elements['login_username'],event)) { disable_button_just_clicked(this); return true; } return false;" action="{LOGIN_URL*}" method="post" class="autocomplete form-inline">
				<label for="member_bar_login_username" class="sr-only">{!USERNAME}{+START,IF,{$AND,{$OCF},{$CONFIG_OPTION,one_per_email_address}}} / {!EMAIL_ADDRESS}{+END}</label>
				<label for="member_bar_s_password" class="sr-only">{!PASSWORD}</label>
				<div class="form-group">
					<input accesskey="l" maxlength="80" size="15" type="text"  placeholder="{!USERNAME}" id="member_bar_login_username" name="login_username" class="form-control">
				</div>
				<div class="form-group">
					<input maxlength="255" size="15" type="password"  placeholder="{!PASSWORD}" name="password" id="member_bar_s_password" class="form-control">
				</div>
				<div class="form-group">
					<label for="remember" class="control-label">
						<input {+START,IF,{$CONFIG_OPTION,remember_me_by_default}}checked="checked" {+END}{+START,IF,{$NOT,{$CONFIG_OPTION,remember_me_by_default}}}onclick="if (this.checked) { var t=this; window.fauxmodal_confirm('{!REMEMBER_ME_COOKIE;}',function(answer) { if (!answer) t.checked=false; } );  }" {+END}type="checkbox" value="1" id="remember" name="remember">
						{!REMEMBER_ME}
					</label>
				</div>
				<div class="form-group form-group-actions">
					<input class="btn btn-primary btn-sm btn-login" type="submit" value="{!_LOGIN}">
					<a href="{JOIN_URL*}" class="btn btn-sm btn-link btn-join">{!_JOIN}</a>
					<a onclick="return open_link_as_overlay(this);" rel="nofollow" href="{FULL_LOGIN_URL*}" title="{!MORE}: {!_LOGIN}" class="btn btn-sm btn-link btn-more">{!MORE}</a>
				</div>
			</form>
		</div>
		{+START,IF,{$ADDON_INSTALLED,search}}{+START,IF,{$HAS_ACTUAL_PAGE_ACCESS,search}}
			<div class="ocf-guest-column ocf-guest-column-search">
				<div>
					{+START,INCLUDE,MEMBER_BAR_SEARCH}{+END}
				</div>
			</div>
		{+END}{+END}
	</div>
</section>

