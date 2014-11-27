<section class="panel panel-default panel-block_side_shoutbox_iframe">
	<div class="panel-heading">
		<h3 class="panel-title">{!SHOUTBOX}</h3>
	</div>

	<div class="panel-body">
	{+START,IF_NON_PASSED,CONTENT}
		{$SET,sbid,{$FIX_ID,{$RAND}}}
		<iframe{$?,{$BROWSER_MATCHES,ie}, frameBorder="0" scrolling="no"} title="{!SHOUTBOX}" id="the_shoutbox{$GET%,sbid}" name="the_shoutbox{$GET%,sbid}" class="expandable_iframe" src="{$FIND_SCRIPT*,shoutbox}?room_id={ROOM_ID*}&amp;num_messages={NUM_MESSAGES*}{$KEEP*}&amp;utheme={$THEME*}">{!SHOUTBOX}</iframe>
		<script>			window.setInterval(function() { resize_frame('the_shoutbox'); },5000);
		</script>
	{+END}
	{+START,IF_PASSED,CONTENT}
		{CONTENT}
	{+END}
	</div>
</section>
