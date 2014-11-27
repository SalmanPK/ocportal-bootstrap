<div class="sr-only"><label for="{NAME_STUB*}{I*}">{!UPLOAD}</label></div>
<input tabindex="{TABINDEX*}" class="form-control input_upload{REQUIRED*}" onchange="if (!key_pressed(event,9)) ensure_next_field_upload(this);" type="file" id="{NAME_STUB*}{I*}" name="{NAME_STUB*}_{I*}" />
{+START,IF,{$JS_ON}}<button class="btn btn-primary btn-pageitem" type="button" id="clearBtn_{NAME_STUB*}{I*}" onclick="var x=document.getElementById('{NAME_STUB;*}{I*;}'); x.value=''; if (typeof x.fakeonchange!='undefined' &amp;&amp; x.fakeonchange) x.fakeonchange(event); return false;">{!CLEAR}</button>{+END}
<input type="hidden" name="label_for_{NAME_STUB*}{I*}" value="{!UPLOAD}" />

{+START,IF,{SWFUPLOAD}}{+START,IF,{$NOT,{$IS_HTTPAUTH_LOGIN}}}
	<script>		add_event_listener_abstract(window,'load',function () {
			preinitFileInput('upload_multi','{NAME_STUB;}{I}',null,null,'{FILTER;}');
		} );
	</script>
{+END}{+END}
