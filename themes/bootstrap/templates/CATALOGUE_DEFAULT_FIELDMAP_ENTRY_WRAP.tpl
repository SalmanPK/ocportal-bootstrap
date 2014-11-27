{$,Read the catalogue tutorial for information on custom catalogue layouts}

<div class="table-wrap"><table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results">
	{+START,IF,{$NOT,{$MOBILE}}}
		<colgroup>
			<col class="catalogue_fieldmap_field_name_column" />
			<col class="catalogue_fieldmap_field_value_column" />
		</colgroup>
	{+END}

	<tbody>
		{FIELDS}
	</tbody>
</table></div>

{+START,IF_NON_PASSED_OR_FALSE,ENTRY_SCREEN}
	<div class="clearfix">
		<p class="pull-left">
			<a target="_self" href="#"><img class="top_vertical_alignment" title="{!BACK_TO_TOP}" alt="{!BACK_TO_TOP}" src="{$IMG*,top}" /></a>
		</p>

		{+START,IF_NON_EMPTY,{VIEW_URL}}
			<p class="pull-right">
				<a href="{VIEW_URL*}" title="{!VIEW}: {$STRIP_TAGS*,{FIELD_0}}"><img title="{!VIEW}{+START,IF_PASSED_AND_TRUE,COMMENT_COUNT} ({$STRIP_TAGS,{$COMMENT_COUNT,catalogues,{ID}}}){+END}" alt="{!COMMENTS} / {!VIEW}" class="btn btn-primary btn-pageitem" src="{$IMG*,pageitem/goto}" /></a>
			</p>
		{+END}
	</div>
{+END}
