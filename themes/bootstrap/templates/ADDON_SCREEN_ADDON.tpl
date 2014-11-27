<tr>
	<td class="addon_name">
		<p data-tooltip="{DESCRIPTION*}">
			{NAME*}
		</p>
		<p data-tooltip="{FILE_LIST*}">
			{FILENAME*}
		</p>
	</td>
	<td>
		<p>
			{AUTHOR*}
		</p>
		<p>
			{ORGANISATION*}
		</p>
	</td>
	<td>
		{VERSION*}
	</td>
	<td style="color: {COLOUR*}">
		{STATUS*}
	</td>
	<td class="results_table_field addon_actions">
		{ACTIONS}

		<label class="sr-only" for="install_{NAME*}">{!INSTALL} {NAME*}</label>
		<input title="{!INSTALL} {NAME*}" type="checkbox" name="install_{NAME*}" id="install_{NAME*}" value="{PASSTHROUGH*}" {$?,{$EQ,{TYPE},install},,disabled="disabled" }/>

		<label class="sr-only" for="uninstall_{NAME*}">{!UNINSTALL} {NAME*}</label>
		<input title="{!UNINSTALL} {NAME*}" type="checkbox" name="uninstall_{NAME*}" id="uninstall_{NAME*}" value="{PASSTHROUGH*}" {$?,{$EQ,{TYPE},uninstall},,disabled="disabled" }/>
	</td>
</tr>

