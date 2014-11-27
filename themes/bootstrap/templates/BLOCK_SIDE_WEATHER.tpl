<section class="panel panel-default panel-block_side_weather">
	<div class="panel-heading">
		<h3>{!WEATHER_REPORT}</h3>
	</div>
	<div class="panel-body">
	{+START,IF_NON_EMPTY,{IMAGE}}
		<img src="{IMAGE`}" alt="{!WEATHER_IMAGE}" />
	{+END}

	<p><strong>{TITLE`}</strong></p>

	{+START,IF_NON_EMPTY,{COND}}
		<div>{COND`}</div>
	{+END}

	{+START,IF_NON_EMPTY,{FORECAST}}
		<div>{FORECAST`}</div>
	{+END}
	</div>
</section>
