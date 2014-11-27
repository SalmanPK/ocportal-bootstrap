<form title="{!SORT_BY}" action="{$URL_FOR_GET_FORM*,{URL}}{+START,IF_PASSED,HASH}#{HASH*}{+END}" method="get" target="_self">
	{$HIDDENS_FOR_GET_FORM,{URL}}

	{$SET,RAND,{$RAND}}

	<div class="inline">
		{+START,IF_PASSED,HIDDEN}
			{HIDDEN}
		{+END}

		{+START,IF_PASSED,FILTER}
			<label for="filter"><span class="field_name">{!SEARCH}:</span> <input value="{FILTER*}" name="filter" id="filter" size="10" /></label>
		{+END}

		<label {+START,IF_NON_PASSED,FILTER}class="sr-only" {+END}for="r_{$GET*;,RAND}">{!SORT_BY}: {$GET*,TEXT_ID}</label>

		<div class="input-group">
			<select{+START,IF,{$NOR,{$GET,show_sort_button},{$NOT,{$JS_ON}}}} onchange="this.form.submit();"{+END} id="r_{$GET*;,RAND}" name="{SORT*}" class="form-control input-sm">
				{SELECTORS}
			</select>

			{+START,IF,{$OR,{$GET,show_sort_button},{$NOT,{$JS_ON}}}}
				{+START,IF_NON_PASSED,FILTER}
					<span class="input-group-btn">
						<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-sm" type="submit" title="{!SORT_BY}: {$GET*,TEXT_ID}" value="{!SORT_BY}">
					</span>
				{+END}
			{+END}
			{+START,IF_PASSED,FILTER}
				<span class="input-group-btn">
					<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-sm" type="submit" title="{!PROCEED}: {$GET*,TEXT_ID}" value="{!PROCEED}">
				</span>
			{+END}
		</div>


	</div>
</form>
