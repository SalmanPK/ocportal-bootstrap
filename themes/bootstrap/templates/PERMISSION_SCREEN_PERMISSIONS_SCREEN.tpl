{TITLE}

<form title="{!PRIMARY_PAGE_FORM}" method="post" action="{URL*}">
	<div>
		<div class="table-wrap"><table summary="{!MAP_TABLE}" class="table table-bordered table-striped table-results table-privileges">
			<colgroup>
				<col class="permission_field_name_column" />
				{COLS}
				<col class="permission_copy_column" />
			</colgroup>

			<thead>
				<tr>
					<th></th>
					{HEADER_CELLS}
				</tr>
			</thead>

			<tbody>
				{ROWS}
			</tbody>
		</table></div>

		<input type="hidden" name="zone" value="{ZONE*}" />

		<p class="proceed_button">
			<input accesskey="u" onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-page" type="submit" value="{!SAVE}" />
		</p>
	</div>
</form>

