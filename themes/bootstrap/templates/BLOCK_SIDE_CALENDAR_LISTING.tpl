<section class="panel panel-default panel-block_side_calendar_listing">
	<div class="panel-heading">
		<h3 class="panel-title">{TITLE*}</h3>
	</div>

	<div class="panel-body">{$,So that the titles dont have box titling CSS}
		{+START,IF_EMPTY,{DAYS}}
			<p class="nothing_here">{!NO_ENTRIES}</p>
		{+END}
		{+START,LOOP,DAYS}
			<h4 class="event_listing_day">{TIME*}</h4>

			<div class="table-wrap">
				<table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results">
					<colgroup>
						<col class="event_listing_col_1" />
						<col class="event_listing_col_2" />
						<col class="event_listing_col_3" />
					</colgroup>

					<tbody>
						{+START,LOOP,EVENTS}
							<tr class="vevent" itemscope="itemscope" itemtype="http://schema.org/Event">
								<th>
									{+START,IF_PASSED,ICON}{+START,IF_PASSED,T_TITLE}
										<img src="{$IMG*,{ICON}}" title="{T_TITLE*}" alt="{T_TITLE*}" />
									{+END}{+END}
								</th>

								<td{+START,IF,{$EQ,{TIME},{!ALL_DAY_EVENT}}} style="display: none"{+END}>
									<time class="dtstart" datetime="{TIME_VCAL*}" itemprop="startDate">{$?,{$EQ,{TIME},{!ALL_DAY_EVENT}},{TIME_VCAL*},{TIME*}}</time>
								</td>

								<td class="summary"{+START,IF,{$EQ,{TIME},{!ALL_DAY_EVENT}}} colspan="2"{+END}>
									<a href="{VIEW_URL*}" class="url" itemprop="name">{TITLE*}</a>
									{+START,IF_PASSED,TO_DAY}
										<span{+START,IF,{$EQ,{FROM_DAY},{TO_DAY}}} style="display: none"{+END}>
											<span class="help-text">({!EVENT_ENDS_ON,<time class="dtend" datetime="{TO_TIME_VCAL*}" itemprop="endDate">{TO_DAY*}</time>})</span>
										</span>
									{+END}
								</td>
							</tr>
						{+END}
					</tbody>
				</table>
			</div>
		{+END}
		</div>
	</div>
</section>

