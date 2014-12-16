{+START,IF,{$NOT,{IMMEDIATE}}}
<a {+START,IF_PASSED,REL}rel="{REL*}" {+END}{+START,IF_PASSED,JAVASCRIPT}onclick="{JAVASCRIPT*}" {+END}href="{URL*}" class="btn btn-primary btn-sm btn-pageitem-{IMG|}"  title="{TITLE*}">
	{$TEXT,pageitem/{IMG}}
</a>
{+END}

{+START,IF,{IMMEDIATE}}
<form title="{TITLE*}" class="inline" action="{URL*}" method="post">
	<button type="submit" name="submit" class="btn btn-primary btn-sm btn-pageitem-{IMG|}" title="{TITLE*}">
		{$TEXT,pageitem/{IMG}}
	</button>
</form>
{+END}
