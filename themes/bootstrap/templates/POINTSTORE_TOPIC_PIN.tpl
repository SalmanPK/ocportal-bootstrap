<div class="pointstore_item">
	<div class="well well-pointstore_topic_pin"><div class="box_inner">
		<h2>{!TOPIC_PINNING}</h2>

		<p>
			{!TOPIC_PINNING_DESCRIPTION}
		</p>

		{+START,IF_NON_EMPTY,{NEXT_URL}}
			<ul class="list-inline">
				<li><a title="{!ENTER}: {!TOPIC_PINNING}" href="{NEXT_URL*}">{!ENTER}</a></li>
			</ul>
		{+END}
	</div></div>
</div>
