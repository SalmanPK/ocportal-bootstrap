<div class="well well-pointstore_pop3_quota"><div class="box_inner">
	<h2>{!PURCHASE_QUOTA}</h2>

	<p>
		{!PURCHASE_POP3_QUOTA,{MAX_QUOTA}}
	</p>

	{+START,IF_NON_EMPTY,{QUOTA_URL}}
		<ul class="list-inline">
			<li><a href="{QUOTA_URL*}">{!PURCHASE_QUOTA}</a></li>
		</ul>
	{+END}
</div></div>

