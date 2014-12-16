<div id="ocf-forum-grouping-{GROUPING_ID|*}" class="ocf-forum-grouping ocf-forum-grouping-{$LCASE|*,{GROUPING_TITLE}}">
	<div class="ocf-forum-grouping-heading">
		<h3 class="ocf-forum-grouping-title">
			{+START,FRACTIONAL_EDITABLE,{GROUPING_TITLE},title,_SEARCH:admin_ocf_categories:type=__ed:id={GROUPING_ID}}{GROUPING_TITLE*}{+END}

			{+START,IF,{$HAS_ACTUAL_PAGE_ACCESS,admin_ocf_categories}}
				<span class="help-text">(<a href="{$PAGE_LINK*,_SEARCH:admin_ocf_categories:type=_ed:id={GROUPING_ID}}">{!EDIT}</a>)</span>
			{+END}
		</h3>

		{+START,IF_NON_EMPTY,{GROUPING_DESCRIPTION}}
			<p class="ocf-forum-grouping-description">{GROUPING_DESCRIPTION*}</p>
		{+END}
	</div>

	<div class="ocf-forum-grouping-body">
		<table class="table table-bordered table-striped table-forum-grouping" itemprop="significantLinks">
			<thead>
				<tr>
					<th class="col col-new-post-indicator"></th>
					<th class="col col-in-category-forum">
						{!FORUM_NAME}
					</th>
					<th class="col col-num-topics">
						{!COUNT_TOPICS}
					</th>
					<th class="col col-num-posts">
						{!COUNT_POSTS}
					</th>
					<th class="col col-latest-post">
						{!LAST_POST}
					</th>
				</tr>
			</thead>

			<tbody>
				{FORUMS}
			</tbody>

			<tfoot>
				<tr>
					<td class="col col-new-post-indicator"></td>
					<td class="col col-in-category-forum"></td>
					<td class="col col-num-topics"></td>
					<td class="col col-num-posts"></td>
					<td class="col col-latest-post"></td>
				</tr>
			</tfoot>
		</table>
	</div>
</div>


