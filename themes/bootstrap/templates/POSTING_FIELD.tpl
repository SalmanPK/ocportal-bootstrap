<input type="hidden" name="comcode__{NAME*}" value="1">
{HIDDEN_FIELDS}

<div id="form-group-{NAME*}" class="form-group">
	{+START,IF_PASSED,POST_COMMENT}
		<div class="control-label">
			<h3><label for="{NAME*}">{POST_COMMENT*}</label></h3>

			<input type="hidden" name="label_for__{NAME*}" value="{$STRIP_TAGS,{POST_COMMENT*}}" />
		</div>
	{+END}

	<div class="control-wrap">
		{+START,IF_NON_PASSED,POST_COMMENT}
		<label class="sr-only" for="{NAME*}">{!_POST}</label>
		{+END}

		{+START,IF_NON_EMPTY,{DESCRIPTION}}
		<div class="help-text">{DESCRIPTION}</div>
		{+END}

		<div class="comcode_supported posting_form_main_comcode_button">
			{+START,IF,{$OR,{$AND,{$IN_STR,{CLASS},wysiwyg},{$JS_ON}},{$AND,{$MATCH_KEY_MATCH,_WILD:cms_comcode_pages},{$SHOW_DOCS}}}}
			<ul class="list-inline">
				{+START,IF,{$SHOW_DOCS}}{+START,IF_PASSED,COMCODE_URL}
				{$,<li><a class="link_exempt" title="\{!COMCODE_MESSAGE,Comcode\}: \{!LINK_NEW_WINDOW\}" target="_blank" href="\{COMCODE_URL*\}"><img class="comcode_supported_icon" alt="\{!COMCODE_MESSAGE,Comcode\}" src="\{$IMG*,comcode\}" title="\{!COMCODE_MESSAGE,Comcode\}" /></a> \{!COMCODE_MESSAGE,<a class="link_exempt" title="Comcode: \{!LINK_NEW_WINDOW\}" target="_blank" href="\{COMCODE_URL*\}">Comcode</a>\}</li>}
				{+START,IF,{$MATCH_KEY_MATCH,_WILD:cms_comcode_pages}}
				<li><a class="link_exempt" title="{!FULL_COMCODE_TUTORIAL}: {!LINK_NEW_WINDOW}" target="_blank" href="{$BRAND_BASE_URL*}/docs/tut_comcode.htm">{!FULL_COMCODE_TUTORIAL}</a></li>
				<li><a class="link_exempt" title="{!FULL_BLOCK_TUTORIAL}: {!LINK_NEW_WINDOW}" target="_blank" href="{$BRAND_BASE_URL*}/docs/tut_adv_comcode_pages.htm">{!FULL_BLOCK_TUTORIAL}</a></li>
				{+END}
				{+END}{+END}
				{+START,IF,{$IN_STR,{CLASS},wysiwyg}}
				{+START,IF,{$JS_ON}}
				<li><a id="toggle_wysiwyg_{NAME*}" href="#" onclick="return toggle_wysiwyg('{NAME*;}');"><abbr title="{!TOGGLE_WYSIWYG_2}">{!ENABLE_WYSIWYG}</abbr></a></li>
				{+END}
				{+END}
			</ul>
			{+END}
		</div>

		{+START,IF_PASSED,DEFAULT_PARSED}
			<textarea cols="1" rows="1" style="display: none" readonly="readonly" name="{NAME*}_parsed" class="form-control">{DEFAULT_PARSED*}</textarea>
		{+END}

		<div class="post-editor clearfix">
			{+START,IF,{$NOT,{$MOBILE}}}
			{+START,IF,{$JS_ON}}
			<div class="comcode-editor-controls clearfix" role="toolbar">
				<div id="post_special_options2"  class="comcode-editor-buttons-small" style="display: none">
					{COMCODE_EDITOR_SMALL}
				</div>
				<div id="post_special_options" class="comcode-editor-buttons-standard">
					{COMCODE_EDITOR}
				</div>
			</div>
			{+END}
			{+END}

			<div id="container_for_{NAME*}" class="constrain_field container_for_wysiwyg">
				<textarea accesskey="x" class="form-control {CLASS*}{+START,IF,{REQUIRED}} posting_required{+END} wide_field" tabindex="{TABINDEX_PF*}" id="{NAME*}" name="{NAME*}" cols="70" rows="17">{POST*}</textarea>

				<div class="hold_ctrl_note">{!HOLD_CTRL_WYSIWYG}</div>

				{+START,IF_PASSED,WORD_COUNTER}
					{$SET,word_count_id,{$RAND}}
					<div class="word_count" id="word_count_{$GET*,word_count_id}"></div>
				{+END}

				{+START,IF,{$IN_STR,{CLASS},wysiwyg}}
				<script>
					if ((window.wysiwyg_on) && (wysiwyg_on())) document.getElementById('{NAME;*}').readOnly=true; /* Stop typing while it loads */

					{+START,IF_PASSED,WORD_COUNTER}
					add_event_listener_abstract(window,'load',function () {
						setup_word_counter(document.getElementById('post'),document.getElementById('word_count_{$GET*,word_count_id}'));
					} );
					{+END}
				</script>
				{+END}
			</div>
		</div>

		{+START,IF_NON_EMPTY,{$TRIM,{EMOTICON_CHOOSER}}}
			{+START,IF,{$NOT,{$MOBILE}}}{+START,IF,{$OR,{$CONFIG_OPTION,is_on_emoticon_choosers},{$AND,{$OCF},{$JS_ON}}}}
				<div{+START,IF,{$CONFIG_OPTION,is_on_emoticon_choosers}} class="emoticon_chooser box"{+END}>
					{+START,IF,{$CONFIG_OPTION,is_on_emoticon_choosers}}
						{EMOTICON_CHOOSER}
					{+END}

					{+START,IF,{$AND,{$OCF},{$JS_ON}}}
					<span class="associated-link"><a rel="nofollow" target="_blank" href="{$FIND_SCRIPT*,emoticons}?field_name={NAME*}{$KEEP*;,0,1}" onclick="window.faux_open(maintain_theme_in_link('{$FIND_SCRIPT;*,emoticons}?field_name={NAME*}{$KEEP*;,0,1}'),'site_emoticon_chooser','width=300,height=320,status=no,resizable=yes,scrollbars=no'); return false;" title="{!EMOTICONS_POPUP} {!LINK_NEW_WINDOW}">{$?,{$CONFIG_OPTION,is_on_emoticon_choosers},{!VIEW_ARCHIVE},{!EMOTICONS_POPUP}}</a></span>
					{+END}
				</div>
			{+END}{+END}

			{+START,IF_PASSED,POST_COMMENT}
				<p>{!USE_WEBSITE_RULES,{$PAGE_LINK*,:rules},{$PAGE_LINK*,:privacy}}</p>
			{+END}
		{+END}


		{+START,IF_NON_EMPTY,{ATTACHMENTS}}
			<div class="panel panel-default panel-collapsible">
				<a class="panel-heading collapsed" href="javascript:" data-toggle="collapse" data-target="#collapse-attachments">
					<h2 class="panel-title">{!ATTACHMENTS}</h2>
				</a>

				<div class="panel-collapse collapse" id="collapse-attachments">
					<div class="panel-body">
						{ATTACHMENTS}

						<input type="hidden" name="posting_ref_id" value="{$RAND,1,2147483646}" />

						<script>initialise_dragdrop_upload('container_for_{NAME*;}','{NAME*;}');</script>
					</div>
				</div>
			</div>
		{+END}
	</div>
</div>