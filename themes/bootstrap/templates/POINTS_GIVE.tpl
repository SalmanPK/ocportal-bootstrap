{+START,IF,{$NOT,{$HAS_ACTUAL_PAGE_ACCESS,admin_points}}}
	{$,Regular member}
	<p class="points_give_box_header">
		<span>{!GIVE_TO,{$USERNAME*,{USER}}}</span>
		{+START,IF_NON_EMPTY,{VIEWER_GIFT_POINTS_AVAILABLE}}
			{!GIVE_TEXT,{VIEWER_GIFT_POINTS_AVAILABLE*}}
		{+END}
		{+START,IF_EMPTY,{VIEWER_GIFT_POINTS_AVAILABLE}}
			{!GIVE_TEXT_UNLIMITED}
		{+END}
	</p>

	<form title="{!GIVE_POINTS}" method="post" onsubmit="return check_form(this);" action="{GIVE_URL*}#tab__points">
		<div>
			<label class="sr-only" for="give_amount">{!AMOUNT}</label>
			<div class="form-group">
				<input maxlength="8" onkeydown="if (!key_pressed(event,[null,'-','0','1','2','3','4','5','6','7','8','9','.'])) return false; return null;" size="7" id="give_amount" class="input_integer_required" placeholder="{!AMOUNT}" type="text" name="amount" style="color: gray" />
			</div>

			<label class="sr-only" for="give_reason">{!REASON}</label>

			<div class="form-group">
				<input maxlength="255" size="26" id="give_reason" class="input_line_required" placeholder="{!REASON}" type="text" name="reason" class="field_input_non_filled form-control" />
			</div>

			<div class="form-group">
				<label class="points_anon" for="give_anonymous">{!TICK_ANON}: <input type="checkbox" id="give_anonymous" name="anonymous" value="1"></label>
			</div>

			<div class="form-group">
				<input id="give_points_submit" class="btn btn-primary btn-block btn-pageitem" type="submit" value="{!GIVE_POINTS}">
			</div>
		</div>
	</form>
{+END}

{+START,IF,{$HAS_ACTUAL_PAGE_ACCESS,admin_points}}
	{$,Admin}
	<p class="points_give_box_header">
		<span>{!MODIFY_POINTS}</span>
		{+START,IF_NON_EMPTY,{VIEWER_GIFT_POINTS_AVAILABLE}}
			{!GIVE_TEXT,{VIEWER_GIFT_POINTS_AVAILABLE*}}
		{+END}
		{+START,IF_EMPTY,{VIEWER_GIFT_POINTS_AVAILABLE}}
			{!GIVE_TEXT_UNLIMITED}
		{+END}
	</p>

	<form title="{!GIVE_POINTS}" method="post" onsubmit="return check_form(this);" action="{GIVE_URL*}#tab__points">
		<div>
			<div class="points_give_shared_options">
				<label class="sr-only" for="give_amount">{!AMOUNT}</label>
				<div class="form-group">
					<input maxlength="10" onkeydown="if (!key_pressed(event,[null,'-','0','1','2','3','4','5','6','7','8','9','.'])) return false; return null;" size="7" id="give_amount" class="input_integer_required form-control" placeholder="{!AMOUNT}" type="text" name="amount">
				</div>

				<label class="sr-only" for="give_reason">{!REASON}</label>

				<div class="form-group">
					<input maxlength="255" size="18" id="give_reason" class="input_line_required form-control" placeholder="{!REASON}" type="text" name="reason">
				</div>

				<div class="form-group">
					<input id="give_points_submit" class="btn btn-primary btn-block btn-pageitem" type="submit" value="{!PROCEED_GO}">
				</div>
			</div>

			<div class="points_give_choices">
				<p class="points_give_choice_line first">
					<label for="trans_type_gift"><strong>{!GIVE_POINTS}</strong> <input checked="checked" type="radio" id="trans_type_gift" name="trans_type" value="gift" /></label> <span class="arr">&rarr;</span>
					<label class="sub_option points_anon" for="give_anonymous">{!TICK_ANON}: <input type="checkbox" id="give_anonymous" name="anonymous" value="1" /></label>
				</p>

				<p class="points_give_choice_line">
					<strong>{!MODIFY_POINTS}</strong> <span class="arr">&rarr;</span>
					<label class="sub_option" for="trans_type_charge">{!CHARGE} <input type="radio" id="trans_type_charge" name="trans_type" value="charge" /></label>
					<label class="sub_option" for="trans_type_refund">{!REFUND} <input type="radio" id="trans_type_refund" name="trans_type" value="refund" /></label>
				</p>
			</div>
		</div>
	</form>
{+END}
