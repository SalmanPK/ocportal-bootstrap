<div class="pointstore_item">
	<div class="well well-pointstore_gambling"><div class="box_inner">
		<h2>{!GAMBLING}</h2>

		<p>
			{!GAMBLING_DESCRIPTION}
		</p>

		{+START,IF_NON_EMPTY,{NEXT_URL}}
			<ul class="list-inline">
				<li><a title="{!ENTER}: {!GAMBLING}" href="{NEXT_URL*}">{!ENTER}</a></li>
			</ul>
		{+END}
	</div></div>
</div>
