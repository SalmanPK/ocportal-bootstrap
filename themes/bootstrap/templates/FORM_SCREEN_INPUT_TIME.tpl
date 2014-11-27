<div class="sr-only"><label for="{STUB*}_hour">{!HOUR}</label></div>
<select tabindex="{TABINDEX*}" id="{STUB*}_hour" name="{STUB*}_hour" class="form-control form-control-inline {+START,IF,{$NOT,{NULL_OK}}} input_list_required{+END}">
	<option value="">-</option>
	{HOURS}
</select>

<div class="sr-only"><label for="{STUB*}_minute">{!MINUTE}</label></div>
<select tabindex="{TABINDEX*}" id="{STUB*}_minute" name="{STUB*}_minute" class="form-control form-control-inline {+START,IF,{$NOT,{NULL_OK}}} input_list_required{+END}">
	<option value="">-</option>
	{MINUTES}
</select>
