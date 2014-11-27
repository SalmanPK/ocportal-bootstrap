{TITLE}

{+START,IF_NON_EMPTY,{RESULTS_TABLE}}
	{+START,IF_PASSED,SYMBOLS}
		<div class="clearfix">
			<div class="pagination alphabetical_jumper">
			{+START,LOOP,SYMBOLS}{+START,IF,{$EQ,{$_GET,md_start},{START}}}<span class="results_page_num">{SYMBOL*}</span>{+END}{+START,IF,{$NEQ,{$_GET,md_start},{START}}}<a class="results_continue alphabetical_jumper_cont" target="_self" href="{$PAGE_LINK*,_SELF:_SELF:md_start={START}:md_max={MAX}:md_sort=m_username ASC}">{SYMBOL*}</a>{+END}{+END}
			</div>
		</div>
	{+END}
	{RESULTS_TABLE}
{+END}
{+START,IF_EMPTY,{RESULTS_TABLE}}
	<p class="nothing_here">{!NO_RESULTS}</p>
{+END}

<h2>{!SEARCH}</h2>

<form title="{!SEARCH}" target="_self" method="get" action="{GET_URL*}" onsubmit="try { window.scrollTo(0,0); } catch(e) {};">
	<div>
		{HIDDEN}

		<label for="member_filter">
			<div class="input-group">
				<input {+START,IF,{$MOBILE}}autocorrect="off" {+END}autocomplete="off" maxlength="80" onkeyup="update_ajax_member_list(this,null,false,event);" type="text" id="member_filter" name="filter" class="form-control input-sm" value="{SEARCH*}">

				<span class="input-group-btn">
					<input onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-sm" type="submit" value="{!SEARCH}">
				</span>
			</div>


			({!SEARCH_MEMBER_EXAMPLE})
		</label>
	</div>
</form>

