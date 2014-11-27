<div class="form-group">
	<div class="control-wrap-no-label">
		<label for="search_{NAME*}">
			{+START,IF,{$NOT,{ADVANCED_ONLY}}}
			<input type="checkbox" id="search_{NAME*}" {+START,IF,{CHECKED}}checked="checked"{+END} name="search_{NAME*}" value="1">
			{+END}
			{LANG*}
		</label>

		{+START,IF_NON_EMPTY,{OPTIONS_URL}}
		<span class="associated-link"><a title="{!ADVANCED}: {$STRIP_TAGS,{LANG*}}" target="_self" href="{OPTIONS_URL*}">{!ADVANCED}</a></span>
		{+END}
	</div>
</div>




