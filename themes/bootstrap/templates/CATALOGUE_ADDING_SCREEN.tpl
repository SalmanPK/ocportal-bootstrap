{TITLE}

{$PARAGRAPH,{TEXT}}

<form title="{!PRIMARY_PAGE_FORM}" method="post" action="{URL*}" target="_top">
	{$INSERT_SPAMMER_BLACKHOLE}

	<div>
		{HIDDEN}

		{+START,IF_NON_EMPTY,{FIELDS}}
			<div class="table-wrap"><table summary="{!MAP_TABLE}" class="form_table wide_table scrollable_inside">
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

		<h2>{!FIELDS_NEW}</h2>

		<p>{!FIELDS_NEW_HELP}</p>
		{FIELDS_NEW}

		<script>			catalogue_field_change_watching();
		</script>

		{+START,INCLUDE,FORM_STANDARD_END}{+END}
	</div>
</form>

