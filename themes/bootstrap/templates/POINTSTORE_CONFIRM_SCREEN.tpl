{TITLE}

<p>
	{!INFO_CONFIRM}
</p>

<div class="well well-pointstore_confirm_screen"><div class="box_inner">
	{+START,IF_NON_EMPTY,{ACTION}}
		<p>
			{ACTION}
		</p>
	{+END}

	<p>{MESSAGE}</p>
</div></div>

<p>
	{!CHARGE_INFO,{COST*},{POINTS_AFTER*}}
</p>

<hr class="spaced_rule" />

<div class="well well-pointstore_confirm_screen"><div class="box_inner">
	<div class="clearfix">
		<div class="pull-right">
			<form title="{!NO}" class="inline" method="post" action="{CANCEL_URL*}">
				<div class="inline">
					<input class="btn btn-primary btn-page" type="submit" value="{!NO}" />
				</div>
			</form>

			<form title="{!YES}" class="inline" action="{PROCEED_URL*}" method="post">
				<div class="inline">
					{KEEP}
					<input accesskey="u" onclick="disable_button_just_clicked(this);" class="btn btn-primary btn-page" type="submit" value="{!YES}" />
				</div>
			</form>
		</div>

		{!Q_SURE}
	</div>
</div></div>
