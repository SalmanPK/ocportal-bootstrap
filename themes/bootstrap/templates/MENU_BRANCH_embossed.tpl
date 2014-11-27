<a {+START,INCLUDE,MENU_LINK_PROPERTIES}{+END} class="list-group-item {$?,{CURRENT},active,inactive}">
	{+START,IF_NON_EMPTY,{IMG}}{$ICON,{IMG}}{+END}
	{CAPTION}
</a>
