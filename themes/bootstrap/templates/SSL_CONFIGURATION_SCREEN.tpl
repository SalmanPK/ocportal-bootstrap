{TITLE}

<p>
	{!SSL_PAGE_SELECT}
</p>

<form title="{!PRIMARY_PAGE_FORM}" action="{URL*}" method="post">
	<div class="clearfix">
		{CONTENT}
	</div>

	<p class="proceed_button">
		<input accesskey="u" onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-page" type="submit" value="{!SAVE}" />
	</p>
</form>

