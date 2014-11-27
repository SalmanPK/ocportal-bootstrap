
{+START,IF_PASSED,TITLE}
	<h2{+START,IF,{$JS_ON}}{+START,IF_NON_PASSED_OR_FALSE,FORCE_OPEN} class="toggleable_tray_button" onkeypress="return this.onclick.call(this,event);" onclick="toggle_subordinate_fields(this.parentNode.getElementsByTagName('img')[0],'fes{TITLE|}_help'); return false;"{+END}{+END}>{TITLE*}</h2>
{+END}

{+START,IF_PASSED,HELP}{+START,IF_NON_EMPTY,{HELP}}
	<div{+START,IF_PASSED,TITLE} id="fes{TITLE|}_help"{+END}>
		{$PARAGRAPH,{HELP*}}
	</div>
{+END}{+END}
