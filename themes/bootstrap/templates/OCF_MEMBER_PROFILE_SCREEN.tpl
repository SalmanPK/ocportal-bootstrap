{$SET,name_set_elsewhere,1}

<div itemscope="itemscope" itemtype="http://schema.org/ProfilePage" class="vcard ocf-member-profile-screen">
	{TITLE}

	<div class="tabs-ocf-member-profile tabs-container">
		<ul class="nav nav-tabs" role="tablist">
		{+START,LOOP,TABS}
			<li class="tab {+START,IF,{TAB_FIRST}}active{+END}">
				<a aria-controls="g_{TAB_CODE*}" role="tab" id="t_{TAB_CODE*}" onclick="select_tab('g','{TAB_CODE;*}');" href="javascript:">{TAB_TITLE*}</a>
			</li>
		{+END}
		</ul>
		<div class="tab-content">
			{+START,LOOP,TABS}
				<div aria-labeledby="t_{TAB_CODE*}" role="tabpanel" id="g_{TAB_CODE*}" style="display: {$?,{$OR,{TAB_FIRST},{$NOT,{$JS_ON}}},block,none}">
					<a id="tab__{TAB_CODE*}"></a>

					{+START,IF_PASSED,TAB_CONTENT}
						{TAB_CONTENT}
					{+END}

					{+START,IF_NON_PASSED,TAB_CONTENT}
						<p class="ajax_tree_list_loading"><img src="{$IMG*,loading}" alt=""></p>

						<script>
							function load_tab__{TAB_CODE%}() {
								load_snippet('profile_tab&tab={TAB_CODE%}&member_id={MEMBER_ID%}'+window.location.search.replace('?','&'),null,function(result) {
									set_inner_html(document.getElementById('g_{TAB_CODE*}'),result.responseText);
								});

								// Self destruct loader after this first run
								try { delete window['load_tab__{TAB_CODE*}']; } catch (e) {};
							}
						</script>
					{+END}
				</div>
			{+END}
		</div>
	</div>
</div>

<script>
	add_event_listener_abstract(window,'load',function () {
		find_url_tab();
	});
</script>
