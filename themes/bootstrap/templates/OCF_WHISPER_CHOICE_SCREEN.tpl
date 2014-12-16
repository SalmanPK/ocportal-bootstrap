{TITLE}

<div class="ocf_whisper_lead_in">
	<img src="{$IMG*,bigicons/addmember}" alt="" class="pull-right" />

	{+START,IF,{$HAS_PRIVILEGE,use_pt}}<p>{!WHISPER_TEXT}</p>{+END}
</div>


<div class="ocf-whisper-choose-boxes">

	<div class="ocf-whisper-choose-box {$?,{$HAS_PRIVILEGE,use_pt},left,}">
		<div class="well well-ocf_whisper_choice_screen">
			<h2>{!PERSONAL_POST}</h2>

			<form title="{!PERSONAL_POST}" action="{$URL_FOR_GET_FORM*,{URL}}" method="get">
				{$HIDDENS_FOR_GET_FORM,{URL}}

				<div>
					<p>{!WHISPER_PP,{USERNAME*}}</p>

					<input type="hidden" name="type" value="new_post">

					<p class="proceed_button">
						<input class="btn btn-primary btn-page" type="submit" onclick="disable_button_just_clicked(this);" value="{!IN_TOPIC_PP}">
					</p>
				</div>
			</form>
		</div>
	</div>

	{+START,IF,{$HAS_PRIVILEGE,use_pt}}
	<div class="ocf-whisper-choose-box right">
		<div class="well well-ocf_whisper_choice_screen">
			<h2>{!PRIVATE_TOPIC}</h2>

			<form title="{!PRIVATE_TOPIC}" action="{$URL_FOR_GET_FORM*,{URL}}" method="get">
				{$HIDDENS_FOR_GET_FORM,{URL}}

				<div>
					<p>{!WHISPER_PT,{USERNAME*}}</p>

					<input type="hidden" name="type" value="new_pt" />

					<p class="proceed_button">
						<input class="btn btn-primary btn-page" type="submit" onclick="disable_button_just_clicked(this);" value="{!QUOTE_TO_PT}" />
					</p>
				</div>
			</form>
		</div>
	</div>
	{+END}
</div>

{+START,IF,{$JS_ON}}
	<p class="back_button">
		<a href="#" onclick="history.back(); return false;"><img title="{!_NEXT_ITEM_BACK}" alt="{!_NEXT_ITEM_BACK}" src="{$IMG*,bigicons/back}"></a>
	</p>
{+END}

