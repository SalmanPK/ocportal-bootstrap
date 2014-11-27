{TITLE}

{$SET,DEFER_RESULTS_TABLE_PAGINATION,1}

{+START,IF_PASSED,TEXT}
	{$PARAGRAPH,{TEXT}}
{+END}

{+START,IF_PASSED,POST_URL}{+START,IF_PASSED,SUBMIT_NAME}
	<form title="{!PRIMARY_PAGE_FORM}" {+START,IF_NON_PASSED_OR_FALSE,GET}method="post" {+END}{+START,IF_PASSED_AND_TRUE,GET}method="get" {+END}action="{POST_URL*}">
		{$SET,DEFER_RESULTS_TABLE_BROWSER,1}
		{TABLE}
		{$SET,DEFER_RESULTS_TABLE_BROWSER,0}

		{+START,IF_PASSED,FIELDS}
			<div class="table-wrap"><table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results">
				{+START,IF,{$NOT,{$MOBILE}}}
					<colgroup>
						<col class="field_name_column" />
						<col class="field_input_column" />
					</colgroup>
				{+END}

				<tbody>
					{FIELDS}
				</tbody>
			</table></div>
		{+END}

		{+START,IF_PASSED,HIDDEN}
			<div>
				{HIDDEN}
			</div>
		{+END}

		{+START,IF_PASSED,SUBMIT_NAME}
			<p class="proceed_button"><input class="btn btn-primary btn-page" type="submit" value="{SUBMIT_NAME*}" /></p>
		{+END}
	</form>

	{$GET,RESULTS_TABLE_BROWSER}
{+END}{+END}

{+START,IF_NON_PASSED,SUBMIT_NAME}
	{TABLE}
{+END}

{$GET,RESULTS_TABLE_PAGINATION}

{$SET,DEFER_RESULTS_TABLE_PAGINATION,0}
