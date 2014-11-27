<section class="panel panel-default panel-gallery_image_box">

	{+START,IF_NON_EMPTY,{TITLE}}
		<div class="panel-heading">
			<h2 class="panel-title">{TITLE*}</h2>
		</div>
	{+END}

	<div class="panel-body">
	{$PREG_REPLACE,^\s*<section class="box [^"]+"><div class="box_inner">,,{$PREG_REPLACE,</div></section>\s*$,,{CONTENT}}}

	{+START,IF_NON_EMPTY,{AWARDEE_USERNAME}}
		<p class="additional_details">
			{!AWARDED_TO,<a href="{AWARDEE_PROFILE_URL*}">{AWARDEE_USERNAME*}</a>}
		</p>
	{+END}

	<ul class="list-inline">
		{+START,IF_NON_EMPTY,{SUBMIT_URL}}
			<li><a rel="add" href="{SUBMIT_URL*}">{!ADD}</a></li>
		{+END}
		<li><a href="{ARCHIVE_URL*}" title="{!ARCHIVES}: {TYPE*}">{!ARCHIVES}</a></li>
	</ul>
	</div>
</section>
