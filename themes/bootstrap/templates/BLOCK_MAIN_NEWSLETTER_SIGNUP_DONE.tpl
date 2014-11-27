<section class="panel panel-default panel-block_main_newsletter_signup_done">
	<div class="panel-heading">
		<h3 class="panel-title">{!NEWSLETTER}{$?,{$NEQ,{NEWSLETTER_TITLE},{!GENERAL}},: {NEWSLETTER_TITLE*}}</h3>
	</div>
	<div class="panel-body">
		{!SUCCESS_NEWSLETTER_AUTO,{PASSWORD*}}
	</div>
</section>
