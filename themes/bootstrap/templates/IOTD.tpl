<div class="media_box">
	<a href="{VIEW_URL*}">{IMAGE}</a>
</div>

{+START,IF_NON_EMPTY,{CAPTION}}
	<div class="help-text">
		{$PARAGRAPH,{CAPTION}}
	</div>
{+END}

