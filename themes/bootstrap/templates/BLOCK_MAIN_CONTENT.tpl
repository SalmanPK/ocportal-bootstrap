<section class="panel panel-default panel-gallery_image_box">

	{+START,IF_NON_EMPTY,{TITLE}}
	<div class="panel-heading">
		<h2 class="panel-title">{TITLE*}</h2>
	</div>
	{+END}

	<div class="panel-body">
	{$PREG_REPLACE,^\s*<section class="box [^"]+"><div class="box_inner">,,{$PREG_REPLACE,</div></section>\s*$,,{CONTENT}}}

	{+START,IF_NON_EMPTY,{SUBMIT_URL}{ARCHIVE_URL}}
		<ul class="list-inline">
			{+START,IF_NON_EMPTY,{SUBMIT_URL}}
				<li><a rel="add" href="{SUBMIT_URL*}">{!ADD}</a></li>
			{+END}
			{+START,IF_NON_EMPTY,{ARCHIVE_URL}}
				<li><a href="{ARCHIVE_URL*}" title="{!ARCHIVES}: {TYPE*}">{!ARCHIVES}</a></li>
			{+END}
		</ul>
	{+END}
	</div>
</section>
