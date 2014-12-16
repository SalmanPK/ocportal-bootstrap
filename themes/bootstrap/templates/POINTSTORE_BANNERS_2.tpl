<div class="pointstore-item">
	<div class="well well-pointstore-banners-2">
		<h2>{!BANNER_ADS}</h2>

		<p>
			{!BANNER_DESCRIPTION,{$SITE_NAME*}}
		</p>

		{+START,IF_NON_EMPTY,{BANNER_URL}}
			<ul class="list-inline">
				<li><a title="{!ENTER}: {!BANNER_ADS}" href="{BANNER_URL*}">{!ENTER}</a></li>
			</ul>
		{+END}
	</div>
</div>
