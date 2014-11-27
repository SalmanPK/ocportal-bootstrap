<div class="ocf-forum-grouping">
	<h3 class="ocf-forum-grouping-heading">
		{+START,FRACTIONAL_EDITABLE,{GROUPING_TITLE},title,_SEARCH:admin_ocf_categories:type=__ed:id={GROUPING_ID}}{GROUPING_TITLE*}{+END}

		{+START,IF,{$HAS_ACTUAL_PAGE_ACCESS,admin_ocf_categories}}<span class="help-text">(<a href="{$PAGE_LINK*,_SEARCH:admin_ocf_categories:type=_ed:id={GROUPING_ID}}">{!EDIT}</a>)</span>{+END}

		{+START,IF_NON_EMPTY,{GROUPING_DESCRIPTION}}
			&ndash; <span class="help-text">{GROUPING_DESCRIPTION*}</span>
		{+END}
	</h3>

	<div class="ocf-forum-grouping-body">
		<table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-forum-grouping" itemprop="significantLinks">
			<thead>
				<tr>
					<th class="col-new-post-indicator"></th>
					<th class="col-in-category-forum">
						{!FORUM_NAME}
					</th>
					<th class="col-num-topics">
						{!COUNT_TOPICS}
					</th>
					<th class="col-num-posts">
						{!COUNT_POSTS}
					</th>
					<th class="col-latest-post">
						{!LAST_POST}
					</th>
				</tr>
			</thead>

			<tbody>
				{FORUMS}
			</tbody>

			<tfoot>
				<tr>
					<td class="col-new-post-indicator"></td>
					<td class="col-in-category-forum"></td>
					<td class="col-num-topics"></td>
					<td class="col-num-posts"></td>
					<td class="col-latest-post"></td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>


