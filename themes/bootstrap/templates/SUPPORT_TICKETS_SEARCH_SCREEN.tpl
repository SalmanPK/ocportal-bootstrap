{TITLE}

<p>{!SUPPORT_SEARCH_FAQ}</p>

{RESULTS}

<form title="{!PRIMARY_PAGE_FORM}" action="{URL*}" method="post">
	<input type="hidden" name="faq_searched" value="1" />

	{POST_FIELDS}

	<p class="proceed_button">
		<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-page" type="submit" value="{!MAKE_POST}" />
	</p>
</form>
