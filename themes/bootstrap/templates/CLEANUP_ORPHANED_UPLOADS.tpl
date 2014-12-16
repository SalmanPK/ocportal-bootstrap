{+START,IF_ARRAY_NON_EMPTY,FOUND}
	<section class="well well-sm well-cleanup_orphaned_uploads"><div class="box_inner">
		<h3>{!ORPHANED_UPLOADS}</h3>

		{+START,LOOP,FOUND}
			<p><a href="{URL*}">{URL*}</a></p>
		{+END}
	</div></section>
{+END}

