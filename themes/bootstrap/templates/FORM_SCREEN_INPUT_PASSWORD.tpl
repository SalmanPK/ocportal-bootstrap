<div class="constrain_field">
	{+START,IF,{$MATCH_KEY_MATCH,:join}}
		<div style="display: none" title="{!PASSWORD_STRENGTH}" data-toggle="tooltip" id="password_strength_{NAME*}" class="password_strength">
			<div class="password_strength_inner"></div>
		</div>
	{+END}

	<input onchange="password_strength(this);" size="30" maxlength="255" tabindex="{TABINDEX*}" class="form-control input_password{REQUIRED*}" type="password" id="{NAME*}" name="{NAME*}" value="{VALUE*}">
</div>

