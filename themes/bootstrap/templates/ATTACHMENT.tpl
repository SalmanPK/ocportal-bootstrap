{+START,IF,{$CONFIG_OPTION,java_upload}}
	{+START,IF,{$NOT,{$GET,included_java_upload}}}
		{+START,INCLUDE,JAVA_DETECT}{+END}
	{+END}
	{$SET,included_java_upload,1}
{+END}


<h3>{!ATTACHMENT,{I*}}</h3>

<div class="form-group">
	<div class="control-label">
		<label for="file{I*}">{!UPLOAD}</label>
		<span class="horiz_field_sep"><img class="right help_icon" data-tooltip="{!ATTACHMENT_HELP_2*,{$GET,IMAGE_TYPES}}" alt="{!HELP}" src="{$IMG*,help}"></span>
	</div>
	<div class="control-wrap">
		<label for="file{I*}" class="sr-only">{!UPLOAD}</label>
		<input size="15" type="file" onchange="set_attachment('post',{I*},'');" id="file{I*}" class="form-control" name="file{I*}">
	</div>
</div>

<script>document.getElementById('file{I;}').setAttribute('unselectable','on');</script>

{+START,IF,{$AND,{$JS_ON},{$BROWSER_MATCHES,gecko}}}
	<button class="btn btn-primary btn-pageitem" type="button" id="clearBtn_file{I*}" onclick="var new_contents=get_textbox(form.elements['post']).replace(new RegExp('\\[(attachment|attachment_safe)[^\\]]*\\]new_{I*;}\\[/(attachment|attachment_safe)\\]'),''); set_textbox(form.elements['post'],new_contents,new_contents); document.getElementById('file{I;}').value=''; return false;" title="{!CLEAR}: {!ATTACHMENT,{I*}}">
		{!CLEAR}
	</button>
{+END}


{+START,IF,{$NOT,{$IS_HTTPAUTH_LOGIN}}}
	<script>
		add_event_listener_abstract(window,'load',function () {
			preinitFileInput('attachment','file{I}',null,'{POSTING_FIELD_NAME;}');
		});
	</script>
{+END}
