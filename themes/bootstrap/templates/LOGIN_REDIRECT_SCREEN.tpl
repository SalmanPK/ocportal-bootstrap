{TITLE}

{$REQUIRE_CSS,messages}

<div class="site_special_message">
	<div class="site_special_message_inner">
		<form title="{!PROCEED}" action="{URL*}" id="redir_form" method="post">
			<div class="well well-sm well-login_redirect_screen"><div class="box_inner">
				{TEXT}

				<p>
					{!PROCEED_TEXT,<input accesskey="c" class="btn btn-link btn-link-simple" type="submit" value="{!HERE}" />}
				</p>

				{POST}
			</div></div>
		 </form>
	</div>
</div>

{REFRESH}
