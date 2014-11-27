<section id="tray_{!TIPS|}" class="panel panel-default panel-block_main_staff_tips">
	<div class="panel-heading">
		<h3 class="toggleable_tray_title panel-title">
			<a class="toggleable_tray_button" href="#" onclick="return toggleable_tray(this.parentNode.parentNode,false,'{!TIPS|}');"><img alt="{!CONTRACT}: {$STRIP_TAGS,{!TIPS}}" title="{!CONTRACT}" src="{$IMG*,contract}" /></a>

			<a class="toggleable_tray_button" href="#" onclick="return toggleable_tray(this.parentNode.parentNode,false,'{!TIPS|}');">{!TIPS}</a>
		</h3>
	</div>

	<div class="toggleable_tray panel-body">
		<p>
			{TIP}
		</p>

		<div class="tips_trail">
			{+START,IF_NON_EMPTY,{TIP_CODE}}
				<ul class="list-inline">
					{+START,IF,{$RUNNING_SCRIPT,staff_tips}}
						<li><a href="{$FIND_SCRIPT*,staff_tips}?dismiss={TIP_CODE*}{$KEEP*}">{!DISMISS_TIP}</a></li>
						<li><a accesskey="k" href="{$FIND_SCRIPT*,staff_tips}{$KEEP*,1}">{!ANOTHER_TIP}</a></li>
					{+END}
					{+START,IF,{$NOT,{$RUNNING_SCRIPT,staff_tips}}}
						<li><a href="{$PAGE_LINK*,adminzone:start:dismiss={TIP_CODE}}">{!DISMISS_TIP}</a></li>
						<li><a accesskey="k" href="{$PAGE_LINK*,adminzone:start}">{!ANOTHER_TIP}</a></li>
					{+END}
				</ul>
			{+END}
		</div>
	</div>
</section>

{+START,IF,{$JS_ON}}
	<script>		handle_tray_cookie_setting('{!TIPS|}');
	</script>
{+END}
