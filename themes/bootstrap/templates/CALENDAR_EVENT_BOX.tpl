<h3>{TITLE*}</h3>

{+START,IF_NON_EMPTY,{SUMMARY}}
	<div class="clearfix">
		{SUMMARY`}
	</div>
{+END}
{+START,IF_EMPTY,{SUMMARY}}
	<p>
		{!NO_SUMMARY}
	</p>
{+END}

<ul class="list-inline">
	<li><a title="{TITLE*}: {!READ_MORE}" class="more" href="{URL*}">{!READ_MORE}</a></li>
</ul>
