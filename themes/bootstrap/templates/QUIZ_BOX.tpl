<section class="well well-sm well-quiz_box"><div class="box_inner">
	<h3>{NAME*}</h3>

	<div class="meta-details" role="contentinfo">
		<dl class="meta-details-list">
			{+START,IF_NON_EMPTY,{TIMEOUT}}
				<dt class="field_name">{!TIMEOUT}:</dt> <dd>{TIMEOUT*}</dd>
			{+END}
			{+START,IF_NON_EMPTY,{REDO_TIME}}
				<dt class="field_name">{!REDO_TIME}:</dt> <dd>{REDO_TIME*}</dd>
			{+END}
			<dt class="field_name">{!ADDED}:</dt> <dd>{DATE*}</dd>
		</dl>
	</div>

	{+START,IF_NON_EMPTY,{START_TEXT}}
		<p>
			{START_TEXT}
		</p>
	{+END}

	<form title="{!START} {!QUIZ}: {NAME*}" method="post" action="{URL*}">
		<input class="btn btn-primary btn-pageitem" type="image" src="{$IMG*,pageitem/goto}" alt="{!START} {!QUIZ}: {NAME*}" />
	</form>
</div></section>
