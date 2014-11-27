<li>
	{+START,IF_NON_EMPTY,{REP_IMAGE}}
		<div class="right float_separation"><a href="{URL*}">{REP_IMAGE}</a></div>
	{+END}
	<a href="{URL*}">{+START,FRACTIONAL_EDITABLE,{NAME_PLAIN},{NAME_FIELD},{AJAX_EDIT_URL},1}{NAME*}{+END}</a>

	{+START,IF_PASSED,DESCRIPTION}{+START,IF_NON_EMPTY,{DESCRIPTION}}
		<p class="help-text">{$TRUNCATE_LEFT,{DESCRIPTION},100,0,1}</p>
	{+END}{+END}

	<p class="help-text">{CHILDREN}</p>
</li>
