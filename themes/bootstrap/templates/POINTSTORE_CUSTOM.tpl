<div class="pointstore_item">
	<div class="box box___pointstore_custom"><div class="box_inner">
		<h2>{TITLE*}</h2>

		<p>
			{DESCRIPTION}
		</p>

		{+START,IF_NON_EMPTY,{NEXT_URL}}
			<ul class="list-inline">
				<li><a title="{!ENTER}: {TITLE*}" href="{NEXT_URL*}">{!ENTER}</a></li>
			</ul>
		{+END}
	</div></div>
</div>
