{TITLE}

<p>
	{!CUSTOM_ITEM_A,{COST},{REMAINING}}
</p>

<ul role="navigation" class="list-actions">
	<li class="actions_list_strong">
		<form title="{!PRIMARY_PAGE_FORM}" class="inline" method="post" action="{NEXT_URL*}">
			<div class="inline">
				<input type="hidden" name="confirm" value="1" />
				<input class="btn btn-link btn-link-simple" type="submit" value="{!PROCEED}" />
			</div>
		</form>
	</li>
</ul>
