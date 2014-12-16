{+START,IF,{$JS_ON}}
	<option value="{URL*}"{+START,IF,{CURRENT}} selected="selected"{+END}>{CAPTION}</option>
{+END}
{+START,IF,{$NOT,{$JS_ON}}}
	<li class="menu-select-item {$?,{CURRENT},active,}">
		<a{+START,INCLUDE,MENU_LINK_PROPERTIES}{+END}>{CAPTION}</a>
	</li>
{+END}
{CHILDREN}
