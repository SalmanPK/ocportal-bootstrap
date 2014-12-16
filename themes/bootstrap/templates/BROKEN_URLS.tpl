{+START,IF_ARRAY_NON_EMPTY,FOUND}
	<section class="well well-sm well-broken_urls"><div class="box_inner">
		<h3>{!BROKEN_URLS} {!BROKEN_URLS_FILES}</h3>

		{+START,LOOP,FOUND}
			<p>{URL*} <span class="help-text">({TABLE*}:{FIELD*}:{ID*})</span></p>
		{+END}
	</div></section>
{+END}
{+START,IF_ARRAY_NON_EMPTY,FOUND_404}
	<section class="well well-sm well-broken_urls"><div class="box_inner">
		<h3>{!BROKEN_URLS} {!BROKEN_URLS_404}</h3>

		{+START,LOOP,FOUND_404}
			<p><a href="{URL*}">{URL*}</a>{+START,IF_NON_EMPTY,{SPOT}} <span class="help-text">({!ADVANCED}&hellip; {SPOT*})</span>{+END}</p>
		{+END}
	</div></section>
{+END}

