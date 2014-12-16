{+START,IF,{$NEQ,{IMG},search,expand,contract}}
	{+START,IF,{$NOT,{IMMEDIATE}}}
	<a {+START,IF_PASSED,REL}rel="{REL*}" {+END}href="{URL*}" class="btn btn-primary btn-page btn-screen btn-page-{IMG|}" title="{TITLE*}"> {$TEXT,page/{IMG}} </a>
	{+END}

	{+START,IF,{IMMEDIATE}}
	<form title="{TITLE*}" class="inline" action="{URL*}" method="post">
		<button type="submit" name="submit" class="btn btn-primary btn-page btn-page-{IMG|}" title="{TITLE*}">
			{$TEXT,page/{IMG}}
		</button>
	</form>
	{+END}
{+END}
