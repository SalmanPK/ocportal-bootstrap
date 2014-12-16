{TITLE}

{$SET,login_screen,1}

<div class="login_page">
	<div class="well well-sm well-login_screen"><div class="box_inner">
		{!LOGIN_TEXT,<a href="{JOIN_URL*}"><strong>{!JOIN_HERE}</strong></a>}
	</div></div>

	<form title="{!_LOGIN}" onsubmit="if (check_field_for_blankness(this.elements['login_username'],event)) { disable_button_just_clicked(this); return true; } return false;" action="{LOGIN_URL*}" method="post" class="autocomplete form-horizontal form-default">
		{PASSION}

		<div class="form-group constrain_field">
			<label for="login_username" class="control-label">{!USERNAME}{+START,IF,{$AND,{$NOT,{$MOBILE}},{$OCF},{$CONFIG_OPTION,one_per_email_address}}} / {!EMAIL_ADDRESS}{+END}</label>
			<div class="control-wrap">
				<input maxlength="80" class="form-control" accesskey="l" type="text" value="{USERNAME*}" id="login_username" name="login_username" size="25">
			</div>
		</div>

		<div class="form-group constrain_field">
			<label for="password" class="control-label">{!PASSWORD}</label>
			<div class="control-wrap">
				<input maxlength="255" class="form-control" type="password" id="password" name="password" size="25">
			</div>
		</div>


		<div class="form-group">
			<div class="control-wrap">
				<label for="remember">
				  <input id="remember" type="checkbox" value="1" name="remember" {+START,IF,{$OR,{$EQ,{$_POST,remember},1},{$CONFIG_OPTION,remember_me_by_default}}}checked="checked" {+END}{+START,IF,{$NOT,{$CONFIG_OPTION,remember_me_by_default}}}onclick="if (this.checked) { var t=this; window.fauxmodal_confirm('{!REMEMBER_ME_COOKIE;}',function(answer) { if (!answer) t.checked=false; } ); }" {+END}/>
				  <span class="field_name">{!REMEMBER_ME}</span>
				</label>
				<span class="help-text">{!REMEMBER_ME_TEXT}</span>
			</div>
		</div>

		<div class="form-group">
			<div class="control-wrap">
				{+START,IF,{$CONFIG_OPTION,is_on_invisibility}}
					<label for="login_invisible">
						<input id="login_invisible" type="checkbox" value="1" name="login_invisible">
						<span class="field_name">{!INVISIBLE}</span>
					</label>
					<span class="help-text">{!INVISIBLE_TEXT}</span>
				{+END}
			</div>
		</div>

		<div class="form-group">
			<input class="btn btn-primary btn-page" type="submit" value="{!_LOGIN}">
		</div>

	</form>

	{+START,IF_NON_EMPTY,{EXTRA}}
		<p class="login_note">
			{EXTRA}
		</p>
	{+END}
</div>

<script>	add_event_listener_abstract(window,'real_load',function () {
		if ((typeof document.activeElement=='undefined') || (document.activeElement!=document.getElementById('password')))
			document.getElementById('login_username').focus();
	} );
</script>
