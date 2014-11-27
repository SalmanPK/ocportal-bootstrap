{+START,IF_PASSED,MSG}
	<p>
		{MSG}
	</p>
{+END}

<section class="panel panel-default panel-block_main_newsletter_signup">
	<div class="panel-heading">
		<h3 class="panel-title">{!NEWSLETTER}{$?,{$NEQ,{NEWSLETTER_TITLE},{!GENERAL}},: {NEWSLETTER_TITLE*}}</h3>
	</div>

	<div class="panel-body">
		<form title="{!NEWSLETTER}" onsubmit="if ((check_field_for_blankness(this.elements['address'],event)) &amp;&amp; (this.elements['address{NID*}'].value.match(/^[a-zA-Z0-9\._\-\+]+@[a-zA-Z0-9\._\-]+$/))) { disable_button_just_clicked(this); return true; } window.fauxmodal_alert('{!NOT_A_EMAIL;=*}'); return false;" action="{URL*}" method="post">
			{$INSERT_SPAMMER_BLACKHOLE}

			<p class="sr-only"><label for="baddress">{!EMAIL_ADDRESS}</label></p>

			<div class="form-group">
				<input class="form-control" id="baddress" name="address{NID*}" placeholder="{!EMAIL_ADDRESS}" />
			</div>

			<p class="constrain_field">
				<input class="btn btn-primary btn-block btn-subscribe" type="submit" value="{!SUBSCRIBE}" />
			</p>
		</form>
	</div>
</section>
