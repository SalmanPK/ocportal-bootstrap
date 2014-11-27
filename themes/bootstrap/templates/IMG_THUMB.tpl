{+START,IF,{$NOT,{JS_TOOLTIP}}}
	<img alt="{$STRIP_TAGS,{CAPTION^*~}}" title="{$STRIP_TAGS,{CAPTION^*~}}" class="img_thumb" src="{URL*}">
{+END}
{+START,IF,{JS_TOOLTIP}}
	<img alt="{$STRIP_TAGS,{CAPTION^*~}}" class="img_thumb" {+START,IF_NON_EMPTY,{CAPTION}} title="{CAPTION*}" data-toggle="tooltip" {+END} src="{URL*}">
{+END}
