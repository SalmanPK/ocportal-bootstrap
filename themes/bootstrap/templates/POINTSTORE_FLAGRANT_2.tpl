<div class="pointstore-item">
	<div class="well well-pointstore-flagrant-2"><div class="box_inner">
		<h2>{!FLAGRANT_MESSAGE}</h2>

		<p>
			{!FLAGRANT_MESSAGE_DESCRIPTION}
		</p>

		{+START,IF_NON_EMPTY,{TEXT_URL}}
			<ul class="list-inline">
				<li><a title="{!ENTER}: {!FLAGRANT_MESSAGE}" href="{TEXT_URL*}">{!ENTER}</a></li>
			</ul>
		{+END}
	</div></div>
</div>
