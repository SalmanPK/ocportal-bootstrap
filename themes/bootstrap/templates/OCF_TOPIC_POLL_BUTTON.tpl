<p>
	<input id="poll_vote_button" class="btn btn-primary btn-sm" type="submit" value="{!VOTE}">
</p>

<p>
	<span class="associated-link">
		<a{+START,IF,{$NOT,{$HAS_PRIVILEGE,view_poll_results_before_voting}}} onclick="var t=this; window.fauxmodal_confirm('{!VOTE_FORFEIGHT}',function(result) { if (result) { click_link(t); } }); return false;"{+END} href="{RESULTS_URL*}">{!POLL_RESULTS}</a>
	</span>
</p>

