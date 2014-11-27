<div class="xhtml_validator_off">
	<input onkeyup="document.getElementById('{NAME%}_fallback_list').disabled=(this.value!='');" class="input_line{REQUIRED*} form-control" tabindex="{TABINDEX*}" type="text" value="{DEFAULT*}" id="{NAME*}" name="{NAME*}" list="{NAME*}_list" />
	<datalist id="{NAME*}_list">
		<p class="help-text">{!fields:OR_ONE_OF_THE_BELOW}:</p>
		<select size="5" name="{NAME*}" id="{NAME*}_fallback_list" class="input_list{REQUIRED*} form-control" style="display: block; width: 14em">{$,select is for non-datalist-aware browsers}
			{CONTENT}
		</select>
	</datalist>
	<script>		document.getElementById('{NAME%}').onkeyup();
		if (typeof window.HTMLDataListElement=='undefined') document.getElementById('{NAME%}').className='input_line';
	</script>
</div>
