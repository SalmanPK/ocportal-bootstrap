<section class="panel panel-default panel-block_side_calendar">
	<div class="panel-heading">
		<h3 class="panel-title"><a href="{CALENDAR_URL*}" title="{!CALENDAR}: {MONTH*}">{!CALENDAR}</a> &ndash; {MONTH*}</h3>
	</div>

	<div class="panel-body side_calendar_wrap">
		<div class="wide_table_wrap_internal_borders"><table summary="{!SPREAD_TABLE}" class="autosized_table wide_table side_calendar calendar_year_month_table">
			<colgroup>
				<col class="calendar_weekly_column" />
				<col class="calendar_weekly_column" />
				<col class="calendar_weekly_column" />
				<col class="calendar_weekly_column" />
				<col class="calendar_weekly_column" />
				<col class="calendar_weekly_column" />
				<col class="calendar_weekly_column" />
			</colgroup>
			<thead>
				<tr>
					{+START,IF,{$SSW}}
					<th>{!FC_SUNDAY}</th>
					{+END}
					<th>{!FC_MONDAY}</th>
					<th>{!FC_TUESDAY}</th>
					<th>{!FC_WEDNESDAY}</th>
					<th>{!FC_THURSDAY}</th>
					<th>{!FC_FRIDAY}</th>
					<th>{!FC_SATURDAY}</th>
					{+START,IF,{$NOT,{$SSW}}}
					<th>{!FC_SUNDAY}</th>
					{+END}
				</tr>
			</thead>

			<tbody>
				{ENTRIES}
			</tbody>
		</table></div>
	</div>
</section>
