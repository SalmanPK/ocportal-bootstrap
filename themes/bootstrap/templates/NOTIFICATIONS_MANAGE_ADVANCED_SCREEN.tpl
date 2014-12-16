{TITLE}

<p>
	{!DECIDE_PER_CATEGORY_NOTIFICATIONS}
</p>

<form title="{!NOTIFICATIONS}" method="post" action="{ACTION_URL*}">
	{+START,IF_NON_EMPTY,{$TRIM,{TREE}}}
		<table class="table table-bordered table-striped table-results table-notifications-form">
			<thead>
				<tr>
					<th></th>
					{+START,LOOP,NOTIFICATION_TYPES_TITLES}
						<th>
							<img src="{$BASE_URL*}/data/gd_text.php?color={COLOR*}&amp;text={$ESCAPE,{LABEL},UL_ESCAPED}{$KEEP*}" title="{LABEL*}" alt="{LABEL*}">
						</th>
					{+END}
				</tr>
			</thead>

			<tbody>
				{TREE}
			</tbody>
		</table>

		<p class="proceed-button">
			<input type="submit" class="btn btn-primary btn-page" value="{!SAVE}">
		</p>
	{+END}

	{+START,IF_EMPTY,{$TRIM,{TREE}}}
		<p class="nothing-here">
			{!NO_CATEGORIES}
		</p>
	{+END}
</form>
