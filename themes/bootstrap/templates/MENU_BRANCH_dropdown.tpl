{$,The line below is just a fudge - we need CHILDREN to evaluate first, so it doesn't interfere with our 'RAND' variable}

{$SET,HAS_CHILDREN,{$IS_NON_EMPTY,{CHILDREN}}}

{$SET,HAS_ACTIVE,0}
{+START,IF,{$IN_STR,{CHILDREN},class="active }}
	{$SET,HAS_ACTIVE,1}
{+END}


<li class="{$?,{CURRENT},active,} menu-dropdown-item is-level-{THE_LEVEL*} {$?,{$GET,HAS_ACTIVE},has-active,} {$?,{$IS_NON_EMPTY,{IMG}},has-img,} {+START,IF,{$GET,HAS_CHILDREN}}has-children{+END}">
	<a class="{+START,IF_EMPTY,{URL}}non-link{+END}" {+START,INCLUDE,MENU_LINK_PROPERTIES}{+END}>
		{+START,IF_NON_EMPTY,{IMG}}<img alt="" src="{$IMG*,{IMG}}"> {+END}
		{CAPTION}
	</a>
	{+START,IF,{$GET,HAS_CHILDREN}}
		<ul aria-haspopup="true" class="menu-dropdown-items is-level-{$ADD*,{THE_LEVEL},1}">{CHILDREN}</ul>
	{+END}
</li>
