<section class="panel panel-default panel-block_side_language">
	<div class="panel-heading">
		<h3 class="panel-title">{!LANGUAGE}</h3>
	</div>
	<div class="panel-body">
		<form title="{!LANGUAGE} ({!FORM_AUTO_SUBMITS})" method="get" action="{$URL_FOR_GET_FORM*,{$SELF_URL,0,1}}">
			{$HIDDENS_FOR_GET_FORM,{$SELF_URL,0,1},keep_lang}
			<div>
				<p class="sr-only"><label for="keep_lang">{!LANGUAGE}</label></p>
				<select{+START,IF,{$JS_ON}} onchange="this.form.submit();"{+END} id="keep_lang" name="keep_lang" class="form-control">
					{LANGS}
				</select>
				{+START,IF,{$NOT,{$JS_ON}}}
					<input onclick="disable_button_just_clicked(this);" type="submit" value="{!PROCEED}" class="btn btn-primary btn-block btn-proceed">
				{+END}
			</div>
		</form>
	</div>
</section>
