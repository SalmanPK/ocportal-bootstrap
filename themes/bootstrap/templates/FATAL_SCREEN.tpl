{TITLE}

<p role="alert">
	{MESSAGE*}
</p>

{+START,IF,{$_GET,keep_fatalistic}}
	<div class="well well-sm well-fatal_screen"><div class="box_inner">
		{!MAYBE_NOT_FATAL}
	</div></div>
{+END}

{+START,IF_PASSED,WEBSERVICE_RESULT}
	<h2>Expanded advice</h2>

	{WEBSERVICE_RESULT}
{+END}

<h2>{!STACK_TRACE}</h2>

{TRACE}

<script>	add_event_listener_abstract(window,'load',function () {
		if ((typeof window.trigger_resize!='undefined') && (window.top!=window)) trigger_resize();
	} );
</script>
