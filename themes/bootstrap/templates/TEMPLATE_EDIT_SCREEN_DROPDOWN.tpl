<div class="clearfix {$CYCLE,tep,tpl_dropdown_row_a,tpl_dropdown_row_b}">
	<div class="pull-left">
		<div class="sr-only"><label for="f{ID*}{NAME*}">{NAME*}</label></div>
		<select name="f{ID*}{NAME*}" id="f{ID*}{NAME*}">
			<option>---</option>
			{PARAMETERS}
		</select>
	</div>
	{+START,IF,{$JS_ON}}
		<div class="pull-right">
			<input class="btn btn-primary btn-sm" name="f{ID*}dd_{NAME*}" onclick="return template_edit_page('f{ID;*}{NAME;*}','{ID;*}');" type="button" value="{LANG*}" />
		</div>
	{+END}
</div>

