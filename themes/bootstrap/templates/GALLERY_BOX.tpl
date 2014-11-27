{+START,IF_NON_EMPTY,{THUMB}}
	<div class="right float_separation"><a href="{URL*}">{$TRIM,{THUMB}}</a></div>
{+END}
<a href="{URL*}">{+START,FRACTIONAL_EDITABLE,{TITLE},fullname,_SEARCH:cms_galleries:type=__ec:id={ID}}{TITLE*}{+END}</a>

{+START,IF_PASSED,COMMENTS}{+START,IF_NON_EMPTY,{COMMENTS}}
	<p class="help-text">{$TRUNCATE_LEFT,{COMMENTS},100,0,1}</p>
{+END}{+END}

<p class="help-text">
	 ({LANG})
</p>
