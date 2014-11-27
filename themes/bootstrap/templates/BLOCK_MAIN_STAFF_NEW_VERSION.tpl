<section id="tray_{!VERSION_ABOUT|,{VERSION}}" class="panel panel-default panel-block_main_staff_new_version">
	<div class="panel-heading">
		<h3 class="toggleable_tray_title panel-title">
			<a class="toggleable_tray_button" href="#" onclick="return toggleable_tray(this.parentNode.parentNode,false,'{!VERSION_ABOUT|,{VERSION}}');"><img alt="{!CONTRACT}: {$STRIP_TAGS,{!VERSION_ABOUT,{VERSION*}}}" title="{!CONTRACT}" src="{$IMG*,contract}" /></a>

			<a class="toggleable_tray_button" href="#" onclick="return toggleable_tray(this.parentNode.parentNode,false,'{!VERSION_ABOUT|,{VERSION}}');">{!VERSION_ABOUT,{VERSION*}}</a>
		</h3>
	</div>

	<div class="toggleable_tray panel-body">
		<div class="staff_new_versions">
			{VERSION_TABLE}

			{+START,IF,{HAS_UPDATED_ADDONS}}
				<p class="alert alert-danger alert-dismissible">
					{!addons:SOME_ADDONS_UPDATED,{$PAGE_LINK*,_SEARCH:admin_addons}}
				</p>
			{+END}

			<div class="img_wrap">
				<img src="{$IMG*,pagepics/ocp-logo}" alt="" />
			</div>
		</div>
	</div>
</section>

{+START,IF,{$JS_ON}}
	<script>		handle_tray_cookie_setting('{!VERSION_ABOUT|,{VERSION}}');
	</script>
{+END}
