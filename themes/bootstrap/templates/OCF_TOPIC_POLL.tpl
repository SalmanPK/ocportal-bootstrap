{$REQUIRE_JAVASCRIPT,javascript_ocf_forum}

<a id="poll_jump" rel="dovote"></a>
<form class="ocf-topic-poll" title="{!VOTE}" action="{VOTE_URL*}" method="post" onsubmit="return ocf_check_poll(this,{MINIMUM_SELECTIONS*},{MAXIMUM_SELECTIONS*},({MINIMUM_SELECTIONS*}=={MAXIMUM_SELECTIONS*})?'{!POLL_NOT_ENOUGH_ERROR_2;,{MINIMUM_SELECTIONS*}}':'{!POLL_NOT_ENOUGH_ERROR;,{MINIMUM_SELECTIONS*},{MAXIMUM_SELECTIONS*}}');">
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
</form>
