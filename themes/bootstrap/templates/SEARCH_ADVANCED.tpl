{+START,IF,{$OR,{$AND,{UNDERNEATH},{$IS_NON_EMPTY,{TREE}}},{$IS_NON_EMPTY,{OPTIONS}}}}

		<h3 class="search_advanced_title">{!ADVANCED}&hellip;</h3>

		{+START,IF_NON_EMPTY,{OPTIONS}}
			<p><em>{!TEMPLATE_SEARCH_INFO}</em></p>

			{OPTIONS}
		{+END}

		{+START,IF,{UNDERNEATH}}
			<div>
				<div class="search_option">
					<label for="search_under">{!SEARCH_UNDERNEATH}:</label>
				</div>
				<div class="pull-left">
					{+START,IF,{AJAX}}
						{TREE}
					{+END}
					{+START,IF,{$NOT,{AJAX}}}
						<select id="search_under" name="search_under">
							{TREE}
						</select>
					{+END}
				</div>
			</div>
		{+END}
{+END}

{+START,SET,commented_out}
	{+START,IF,{$NOT,{$IS_GUEST}}}

		<h3 class="search_tabular_header">{!SAVE_SEARCH}&hellip;</h3>

		{!SAVE_SEARCH}

		<p>{!SAVE_SEARCH_DESCRIPTION}</p>
		<div class="sr-only"><label for="save_title">{!TITLE}</label></div>
		<input maxlength="255" type="text" size="48" value="" id="save_title" class="form-control" name="save_title">

		<ul class="list-actions" role="navigation">
			<a onclick="return open_link_as_overlay(this);" href="{$PAGE_LINK*,_SELF:_SELF:my}">{!SAVED_SEARCHES}</a>
		</ul>
	{+END}
{+END}
