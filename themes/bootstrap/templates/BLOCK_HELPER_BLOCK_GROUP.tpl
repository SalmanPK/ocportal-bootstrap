<h2>{TITLE}</h2>

{+START,IF_PASSED,IMG}
	<img class="pull-right" src="{$BASE_URL*}/{IMG*}" alt=""/>
{+END}

<ul>
	{LINKS}
</ul>
