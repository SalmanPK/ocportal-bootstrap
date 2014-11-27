<section class="panel panel-default panel-block_side_ocf_private_topics">
	<div class="panel-heading">
		<h3>{!UNSEEN_PERSONAL_POSTS}</h3>
	</div>
	<div class="panel-body">
	{+START,IF_NON_EMPTY,{CONTENT}}
		{CONTENT}
	{+END}
	{+START,IF_EMPTY,{CONTENT}}
		<p class="nothing_here">{!NONE}</p>
	{+END}

	{+START,IF_NON_EMPTY,{SEND_URL}{VIEW_URL}}
		<ul class="list-inline">
			{+START,IF_NON_EMPTY,{SEND_URL}}
				<li><a rel="archives" href="{SEND_URL*}">{!NEW_PRIVATE_TOPIC_SHORT}</a></li>
			{+END}
			{+START,IF_NON_EMPTY,{VIEW_URL}}
				<li><a rel="add" href="{VIEW_URL*}">{!VIEW_ARCHIVE}</a></li>
			{+END}
		</ul>
	{+END}
	</div>
</section>

