{+START,IF,{$NAND,{$MATCH_KEY_MATCH,_WILD:admin_zones},{$EQ,{B},code,quote,url}}}
<a href="javascript:" class="btn btn-primary btn-comcodeeditor-{B|} comcode_button_{B*}{+START,IF,{DIVIDER}} divider{+END}" onclick="var main_window=(typeof this.ownerDocument.defaultView=='undefined')?this.ownerDocument.parentWindow:this.ownerDocument.defaultView; main_window.do_input_{B%}('{FIELD_NAME*;}'); return false;" title="{TITLE*}">
	{$ICON,comcodeeditor/{B}}
</a>
{+END}

