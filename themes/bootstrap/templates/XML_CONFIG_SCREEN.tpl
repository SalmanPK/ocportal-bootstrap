{TITLE}

<form title="{!PRIMARY_PAGE_FORM}" action="{POST_URL*}" method="post">
	<div class="constrain_field">
		<label for="xml" class="sr-only">XML</label>
		<textarea name="xml" id="xml" cols="30" rows="30" class="form-control">{XML*}</textarea>
	</div>

	<p class="proceed_button">
		<input class="btn btn-primary btn-page" id="submit_button" accesskey="u" type="submit" value="{!SAVE}" />
	</p>
</form>

<script language="javascript" type="text/javascript" src="{$BASE_URL*}/data/editarea/edit_area_full.js"></script>
<script>	editAreaLoader.init({
		id : "xml"
		,syntax: "xml"
		,start_highlight: true
		,language: "en"
		,allow_resize: true
		,toolbar: "search, go_to_line, fullscreen, |, undo, redo, |, select_font,|, reset_highlight, word_wrap"
	});
</script>
