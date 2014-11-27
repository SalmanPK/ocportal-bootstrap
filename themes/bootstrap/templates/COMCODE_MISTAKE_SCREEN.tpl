{TITLE}

{$REQUIRE_CSS,comcode_mistakes}

<div class="box box___comcode_mistake_screen"><div class="box_inner">
	<h2>{!COMCODE_ERROR_TITLE}</h2>

	<p class="alert alert-danger alert-dismissible" role="error">
		{!COMCODE_ERROR,<a href="#errorat" target="_self">{MESSAGE}</a>,{LINE*}}
	</p>

	<div class="clearfix">
		<div class="comcode_error_help_div">
			<h2>{!WHAT_IS_COMCODE}</h2>

			{!COMCODE_ERROR_HELP_A}
		</div>

		<div class="comcode_error_details_div">
			{+START,IF,{EDITABLE}}
				{FORM}
			{+END}

			<h2>{!ORIGINAL_COMCODE}</h2>

			<div class="table-wrap"><table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results">
				<tbody>
					{LINES}
				</tbody>
			</table></div>
		</div>
	</div>

	<div>
		<h2>{!REPAIR_HELP}</h2>

		<a id="help"></a>

		{!COMCODE_ERROR_HELP_B}
	</div>
</div></div>


