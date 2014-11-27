<div class="form_ajax_target">
	<section id="tray_{TITLE|}" class="panel panel-default panel-collapsible panel-block_main_notes">
		<a href="javascript:" class="panel-heading" data-toggle="collapse" data-target="#collapse-notes-{TITLE|}">
			<h3 class="panel-title">{TITLE}</h3>
		</a>

		<div class="panel-collapse collapse in" id="collapse-notes-{TITLE|}">
			<div class="panel-body">
				<form title="{$STRIP_TAGS,{TITLE}}" method="post" action="{URL*}">
					<div class="sr-only"><label for="n_block_{TITLE|}">{!NOTES}</label></div>
					<div class="constrain_field">
						<textarea onfocus="this.setAttribute('rows','23');" onblur="if (!this.form.disable_size_change) this.setAttribute('rows','10');" class="wide_field{+START,IF,{SCROLLS}} textarea_scroll{+END}" cols="80" id="n_block_{TITLE|}" rows="10" name="new">{CONTENTS*}</textarea>
					</div>

					<div class="btn-toolbar">
						<input onclick="disable_button_just_clicked(this);{+START,IF,{$HAS_PRIVILEGE,comcode_dangerous}} return ajax_form_submit(event,this.form,'{BLOCK_NAME*;~}','{MAP*;~}');{+END}" class="btn btn-primary btn-pageitem" type="submit" onmouseover="this.form.disable_size_change=true;" onmouseout="this.form.disable_size_change=false;" value="{!SAVE}" />
					</div>
				</form>

				<script>				require_javascript('javascript_ajax');
				require_javascript('javascript_validation');
				</script>
			</div>
		</div>
	</section>
</div>

{+START,IF,{$JS_ON}}
	<script>		handle_tray_cookie_setting('{TITLE|}');
	</script>
{+END}
