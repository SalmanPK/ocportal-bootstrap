{+START,IF,{$NAND,{$MATCH_KEY_MATCH,_WILD:admin_zones},{$EQ,{B},code,quote,url}}}
<a href="javascript:" class="btn btn-primary btn-comcodeeditor btn-comcodeeditor-{B|} {+START,IF,{DIVIDER}} divider{+END}" onclick="(this.ownerDocument.defaultView || this.ownerDocument.parentWindow).do_input_{B%}('{FIELD_NAME*;}');" title="{TITLE*}" data-toggle="tooltip">
	<span class="sr-only">{TITLE*}</span>
</a>
{+END}

