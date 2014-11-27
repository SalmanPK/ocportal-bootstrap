<section class="panel panel-default panel-block_no_entries_{$LCASE|,{TITLE}}">
	<div class="panel-heading">
		<h3 class="panel-title">{TITLE*}</h3>
	</div>
	<div class="panel-body">
		<p class="nothing_here">{MESSAGE*}</p>

		{+START,IF_PASSED,SUBMIT_URL}{+START,IF_NON_EMPTY,{SUBMIT_URL}}
		<ul class="list-inline">
			<li><a target="_top" href="{SUBMIT_URL*}">{ADD_NAME*}</a></li>
		</ul>
		{+END}{+END}
	</div>
</section>
