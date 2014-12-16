<p>
	{$?,{$MATCH_KEY_MATCH,_SEARCH:admin_notifications},{!NOTIFICATIONS_DEFINE_LOCKDOWN},{!NOTIFICATIONS_INTRO}}
</p>

<div class="table-wrap">
	<table class="table table-bordered table-striped table-results table-notifications-form" summary="{!COLUMNED_TABLE}">
		<thead>
			<tr>
				<th></th>
				{+START,IF_PASSED_AND_TRUE,SHOW_PRIVILEGES}
					<th> {!NOTIFICATION_PRIVILEGED} </th>
				{+END}
				{+START,LOOP,NOTIFICATION_TYPES_TITLES}
					<th> {LABEL*} </th>
				{+END}
				<th></th>
			</tr>
		</thead>

		<tbody>
			{+START,LOOP,NOTIFICATION_SECTIONS}
				<tr class="form_table_field_spacer">
					<th class="table_heading_cell" colspan="{+START,IF_PASSED_AND_TRUE,SHOW_PRIVILEGES}{$ADD*,{NOTIFICATION_TYPES_TITLES},3}{+END}{+START,IF_NON_PASSED_OR_FALSE,SHOW_PRIVILEGES}{$ADD*,{NOTIFICATION_TYPES_TITLES},2}{+END}">
						<h2>{NOTIFICATION_SECTION*}</h2>
					</th>
				</tr>

				{+START,LOOP,NOTIFICATION_CODES}
					<tr class="col col-notification-code">
						<th>{NOTIFICATION_LABEL*}</th>

						{+START,IF_PASSED,PRIVILEGED}
							<td>{$?,{PRIVILEGED},{!YES},{!NO}}</td>
						{+END}

						{+START,INCLUDE,NOTIFICATION_TYPES}{+END}

						<td class="help-text">
							{+START,IF,{SUPPORTS_CATEGORIES}}
								<span class="associated-link"><a onclick="return open_link_as_overlay(this,null,null,'_self');" href="{$PAGE_LINK*,_SEARCH:notifications:advanced:notification_code={NOTIFICATION_CODE}:keep_su={MEMBER_ID}}">{!ADVANCED}</a></span>
							{+END}
						</td>
					</tr>
				{+END}
			{+END}
		</tbody>
</table>
</div>

{+START,IF_PASSED,AUTO_NOTIFICATION_CONTRIB_CONTENT}
	<h2>{!ocf:AUTO_NOTIFICATION_CONTRIB_CONTENT}</h2>

	<p class="simple-neat-checkbox">
		<label for="auto_monitor_contrib_content">
			<input type="checkbox" id="auto_monitor_contrib_content" name="auto_monitor_contrib_content" value="1" {+START,IF,{AUTO_NOTIFICATION_CONTRIB_CONTENT}}checked{+END}>
			<span>{!ocf:DESCRIPTION_AUTO_NOTIFICATION_CONTRIB_CONTENT}</span>
		</label>
	</p>
{+END}
