<section class="panel panel-default panel-block_main_search">
	<div class="panel-heading">
		<h3 class="panel-title">{TITLE*}</h3>
	</div>
	<div class="panel-body">
	<form role="search" title="{TITLE*}" onsubmit="if (typeof this.elements['content']=='undefined') { disable_button_just_clicked(this); return true; } if (check_field_for_blankness(this.elements['content'],event)) { disable_button_just_clicked(this); return true; } return false;" action="{$URL_FOR_GET_FORM*,{URL}}" method="get">
		{$HIDDENS_FOR_GET_FORM,{URL}}

		<div>
			{+START,IF,{$EQ,{INPUT_FIELDS},1}}
				<div class="form-group">
					<label class="sr-only" for="search_content">{!SEARCH}</label>
					<input {+START,IF,{$MOBILE}}autocorrect="off" {+END}autocomplete="off" maxlength="255" class="form-control" onkeyup="update_ajax_search_list(this,event);" type="search" id="search_content" name="content" value="" />
				</div>
			{+END}
			{+START,IF,{$NEQ,{INPUT_FIELDS},1}}
				{+START,LOOP,INPUT_FIELDS}
					<div class="table-wrap"><table summary="{!MAP_TABLE}" class="autosized_table wide_table search_field_table">
						<tbody>
							<tr>
								<th class="de_th">
									{_loop_var*}
								</th>
								<td>
									<label class="sr-only" for="search_{_loop_key*}">{_loop_var*}</label>
									<input {+START,IF,{$MOBILE}}autocorrect="off" {+END}autocomplete="off" maxlength="255" {+START,IF,{$EQ,{_loop_key},content}}onkeyup="update_ajax_search_list(this,event);" {+END}type="text" id="search_{_loop_key*}" name="{_loop_key*}" value="" />
								</td>
							</tr>
						</tbody>
					</table></div>
				{+END}
			{+END}

			<p class="proceed_button">
				<input class="btn btn-block btn-primary btn-pageitem" type="submit" value="{!SEARCH}" />
			</p>

			{+START,LOOP,LIMIT_TO}
				<input type="hidden" name="{_loop_var*}" value="1" />
			{+END}
			{+START,LOOP,EXTRA}
				<input type="hidden" name="{_loop_key*}" value="{_loop_var*}" />
			{+END}
			<input type="hidden" name="author" value="{AUTHOR*}" />
			<input type="hidden" name="days" value="{DAYS*}" />
			<input type="hidden" name="sort" value="{SORT*}" />
			<input type="hidden" name="direction" value="{DIRECTION*}" />
			<input type="hidden" name="only_titles" value="{ONLY_TITLES*}" />
			<input type="hidden" name="only_search_meta" value="{ONLY_SEARCH_META*}" />
			<input type="hidden" name="boolean_search" value="{BOOLEAN_SEARCH*}" />
			<input type="hidden" name="conjunctive_operator" value="{CONJUNCTIVE_OPERATOR*}" />
		</div>
	</form>

	{+START,IF_NON_EMPTY,{FULL_LOGIN_URL}}
		<ul class="list-inline">
			<li><a href="{FULL_LOGIN_URL*}" title="{!MORE_OPTIONS}: {!SEARCH_TITLE}">{!MORE_OPTIONS}</a></li>
		</ul>
	{+END}
	</div>
</section>
