{$REQUIRE_JAVASCRIPT,javascript_ocf_forum}

<div class="ocf-topic-poll">
	<h3 class="ocf-topic-poll-heading">
		{+START,FRACTIONAL_EDITABLE,{QUESTION},question,_SEARCH:topics:type=_edit_poll:id={ID}}{QUESTION*}{+END}
	</h3>

	<div class="ocf-topic-poll-body">
		<table summary="{!POLL}" class="table table-bordered table-ocf-topic-poll">
			<tbody>
				{ANSWERS}
			</tbody>
		</table>

		{+START,IF_NON_EMPTY,{BUTTON}}
			<div class="ocf-poll-button text-center">
				{BUTTON}
			</div>
		{+END}

		{+START,IF_NON_EMPTY,{PRIVATE}{NUM_CHOICES}}
			<div class="ocf-poll-meta text-center">
				{PRIVATE}
				{NUM_CHOICES}
			</div>
		{+END}
	</div>
</div>
