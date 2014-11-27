<div class="table-wrap">
	<table summary="{!COLUMNED_TABLE}" class="table table-bordered table-striped table-topic-list">
		<thead>
			<tr>
				{+START,IF,{$CONFIG_OPTION,is_on_topic_emoticons}}
					<th class="col-topic-emoticons"></th>
				{+END}
				<th class="col-title">{!TITLE}</th>
				<th class="col-starter-title">{!STARTER}{STARTER_TITLE*}</th>
				<th class="col-num-posts">{!COUNT_POSTS}</th>
				<th class="col-num-views">{!COUNT_VIEWS}</th>
				<th class="col-last-post">{!LAST_POST}</th>

				{+START,IF_NON_EMPTY,{MODERATOR_ACTIONS}}
					<th class="col-moderator-actions">
						<a href="#" onclick="event.returnValue=false; mark_all_topics(event); return false;"><img src="{$IMG*,ocf_topic_modifiers/unvalidated}" alt="{!TOGGLE_SELECTION}" title="{!TOGGLE_SELECTION}" /></a>
					</th>
				{+END}
			</tr>
		</thead>

		<tbody>
			{TOPICS}
		</tbody>

		<tfoot>
			<tr>
				{+START,IF,{$CONFIG_OPTION,is_on_topic_emoticons}}
					<td class="col-topic-emoticons"></td>
				{+END}
				<td class="col-title"></td>
				<td class="col-starter-title"></td>
				<td class="col-num-posts"></td>
				<td class="col-num-views"></td>
				<td class="col-last-post"></td>
				{+START,IF_NON_EMPTY,{MODERATOR_ACTIONS}}
					<td class="col-moderator-actions"></td>
				{+END}
			</tr>
		</tfoot>
	</table>
</div>

{+START,IF_NON_EMPTY,{PAGINATION}}
	{PAGINATION}
{+END}

{+START,IF,{$NOT,{$WIDE_HIGH}}}
	{+START,IF_NON_EMPTY,{MODERATOR_ACTIONS}}

		<div class="ocf-topic-actions">

			<form title="{!TOPIC_ACTIONS}" action="{$URL_FOR_GET_FORM*,{ACTION_URL}}" method="get" class="form-inline">
				{$HIDDENS_FOR_GET_FORM,{ACTION_URL}}

				<label for="fma_type">{!TOPIC_ACTIONS}: </label>
				<div class="input-group">
					<select class="form-control input-sm dropdown_actions" name="type" id="fma_type" class="form-control input-sm">
						<option value="misc">-</option>
						{MODERATOR_ACTIONS}
					</select>
					<span class="input-group-btn">
						<input onclick="if (add_form_marked_posts(this.form,'mark_')) { disable_button_just_clicked(this); return true; } window.fauxmodal_alert('{!NOTHING_SELECTED=;}'); return false;" class="btn btn-primary btn-sm" type="submit" value="{!PROCEED}">
					</span>
				</div>
			</form>

			{+START,IF,{MAY_CHANGE_MAX}}
				<form title="{!PER_PAGE}" class="form-inline" action="{$URL_FOR_GET_FORM*,{$SELF_URL,0,1}}{+START,IF,{$EQ,{TYPE},pt}}#tab__pts{+END}" method="get">
					{$HIDDENS_FOR_GET_FORM,{$SELF_URL,0,1},max}

					<label for="max">{!PER_PAGE}:</label>
					<select name="max" id="max" class="form-control input-sm" {+START,IF,{$JS_ON}} onchange="this.form.submit();"{+END}>
						<option value="10"{$?,{$EQ,{MAX},10}, selected="selected",}>10</option>
						<option value="20"{$?,{$EQ,{MAX},20}, selected="selected",}>20</option>
						<option value="30"{$?,{$EQ,{MAX},30}, selected="selected",}>30</option>
						<option value="50"{$?,{$EQ,{MAX},50}, selected="selected",}>50</option>
						<option value="100"{$?,{$EQ,{MAX},100}, selected="selected",}>100</option>
						<option value="300"{$?,{$EQ,{MAX},300}, selected="selected",}>300</option>
					</select>

					{+START,IF,{$NOT,{$JS_ON}}}
						<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-sm" type="submit" value="{!CHANGE}">
					{+END}
				</form>
			{+END}

			{+START,IF_NON_EMPTY,{ORDER}}
				<form title="{!ORDER}" class="form-inline" action="{$URL_FOR_GET_FORM*,{$SELF_URL}}{+START,IF,{$EQ,{TYPE},pt}}#tab__pts{+END}" method="get">
					{$HIDDENS_FOR_GET_FORM,{$SELF_URL},order}
					<label for="order">{!ORDER}:</label>
					<select name="order" id="order" class="form-control input-sm" {+START,IF,{$JS_ON}} onchange="this.form.submit();"{+END}>
						<option value="last_post"{$?,{$EQ,{ORDER},last_post}, selected="selected",}>{!FORUM_ORDER_BY_LAST_POST}</option>
						<option value="first_post"{$?,{$EQ,{ORDER},first_post}, selected="selected",}>{!FORUM_ORDER_BY_FIRST_POST}</option>
						<option value="title"{$?,{$EQ,{ORDER},title}, selected="selected",}>{!FORUM_ORDER_BY_TITLE}</option>
					</select>

					{+START,IF,{$NOT,{$JS_ON}}}
						<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-sm" type="submit" value="{!SORT}">
					{+END}
				</form>
			{+END}
		</div>
	{+END}
{+END}
