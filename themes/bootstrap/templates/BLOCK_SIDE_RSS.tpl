{+START,IF,{$NOT,{TICKER}}}
	<section id="tray_{TITLE|}" class="panel panel-default panel-block_side_rss">
		<div class="panel-heading">
			<h3 class="toggleable_tray_title panel-title">
				<a class="toggleable_tray_button" href="#" onclick="return toggleable_tray(this.parentNode.parentNode,false,'{TITLE|}');"><img alt="{!CONTRACT}: {$STRIP_TAGS,{TITLE}}" title="{!CONTRACT}" src="{$IMG*,contract}" /></a>

				{+START,IF_NON_EMPTY,{TITLE}}
					<a class="toggleable_tray_button" href="#" onclick="return toggleable_tray(this.parentNode.parentNode,false,'{TITLE|}');">{TITLE}</a>
				{+END}
			</h3>
		</div>

		<div class="toggleable_tray panel-body">
			{+START,IF_EMPTY,{CONTENT}}
				<p class="nothing_here">{!NO_NEWS}</p>
			{+END}
			{+START,IF_NON_EMPTY,{CONTENT}}
				<div class="xhtml_validator_off">
					{CONTENT}
				</div>
			{+END}
		</div>
	</section>

	{+START,IF,{$JS_ON}}
		<script>			handle_tray_cookie_setting('{TITLE|}');
		</script>
	{+END}
{+END}

{+START,IF,{TICKER}}
	{$SET,side_news_id,{$RAND}}

	<section class="panel panel-default panel-block_side_rss">
		{+START,IF_NON_EMPTY,{TITLE}}<div class="panel-heading"><h3 class="panel-title">{TITLE}</h3></div>{+END}

		<div class="panel-body">
			{+START,IF_EMPTY,{CONTENT}}
				<p class="nothing_here">{!NO_NEWS}</p>
			{+END}
			{+START,IF_NON_EMPTY,{CONTENT}}
				<div onmouseover="this.paused=true;" onmouseout="this.paused=false;" class="xhtml_validator_off wide_ticker" id="news_scroller{$GET%,side_news_id}">
					{CONTENT}
				</div>
			{+END}
		</div>
	</section>

	<script>		var scroll_speed=60;
		var scroller=document.getElementById('news_scroller{$GET%,side_news_id}');
		if (scroller) {$,If there is a news post}
		{
			scroller.paused=false;
			if (scroller.scrollHeight<300) scroll_speed=300; // Slow, as not much to scroll
			window.setTimeout(function() {
				window.setInterval(function() {
					var scroller=document.getElementById('news_scroller{$GET%,side_news_id}');
					if (scroller.paused) return;
					if (scroller.scrollTop+find_height(scroller)>=scroller.scrollHeight-1)
						scroller.scrollTop=0;
					else
						scroller.scrollTop++;
				} , scroll_speed);
			} ,2000);
		}
	</script>
{+END}
