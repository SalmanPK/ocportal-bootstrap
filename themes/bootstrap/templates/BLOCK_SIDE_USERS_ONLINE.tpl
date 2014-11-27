<section class="panel panel-default panel-block_side_users_online">
	<div class="panel-heading">
		<h3 class="panel-title">{!USERS_ONLINE}</h3>
	</div>
	<div class="panel-body">
	<p>{CONTENT} <span class="help-text">{!NUM_GUESTS,{GUESTS*}}</span></p>

	{+START,IF_NON_EMPTY,{NEWEST}}
		<p>{NEWEST}</p>
	{+END}

	{+START,IF_NON_EMPTY,{BIRTHDAYS}}
		<div>{BIRTHDAYS}</div>
	{+END}

	{+START,IF,{$AND,{$HAS_ACTUAL_PAGE_ACCESS,onlinemembers},{$OCF}}}
		<ul class="list-inline">
			<li><a href="{$PAGE_LINK*,_SEARCH:onlinemembers}" title="{!USERS_ONLINE}">{!DETAILS}</a></li>
		</ul>
	{+END}
	</div>
</section>
