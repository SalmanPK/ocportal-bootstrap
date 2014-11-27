<div class="pointstore_item">
	<div class="box box___pointstore_banners_activate"><div class="box_inner">
		<h2>{!BANNERS_ACTIVATE}</h2>

		<p>
			{!BANNERS_C}
		</p>

		{+START,IF_NON_EMPTY,{ACTIVATE_URL}}
			<ul class="list-inline">
				<li><a href="{ACTIVATE_URL*}">{!BANNERS_ACTIVATE}</a></li>
			</ul>
		{+END}
	</div></div>
</div>

