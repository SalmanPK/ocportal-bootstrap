{+START,IF_NON_EMPTY,{COMMENT_URL}}
<form role="form" class="comments_form form-horizontal form-default" id="comments_form" onsubmit="return ({+START,IF_PASSED,MORE_URL}(this.getAttribute('action')=='{MORE_URL;*}') || {+END}(check_field_for_blankness(this.elements['post'],event)){+START,IF,{$AND,{GET_EMAIL},{$NOT,{EMAIL_OPTIONAL}}}} &amp;&amp; (check_field_for_blankness(this.elements['email'],event)){+END});" action="{COMMENT_URL*}{+START,IF_NON_EMPTY,{$GET,current_anchor}}#{$GET,current_anchor}{+END}{+START,IF_EMPTY,{$GET,current_anchor}}{+START,IF_PASSED_AND_TRUE,COMMENTS}#last_comment{+END}{+END}" method="post" enctype="multipart/form-data">
	{$INSERT_SPAMMER_BLACKHOLE}
	<input type="hidden" name="_comment_form_post" value="1" />
{+END}

	<input type="hidden" name="_validated" value="1" />
	<input type="hidden" name="comcode__post" value="1" />
	<input type="hidden" name="stub" value="" />

	<div class="panel panel-default panel-collapsible panel-comments_posting_form">
		{+START,IF_NON_EMPTY,{TITLE}}
		<a class="panel-heading" href="javascript:" data-toggle="collapse" data-target="#comments_posting_form_outer">
			<h3 class="panel-title">{TITLE*}</h3>
		</a>

		{+END}
		<div class="panel-collapse collapse in comments_posting_form_outer" id="comments_posting_form_outer">
			<div class="panel-body comments_posting_form_inner">
				{+START,IF,{$AND,{$IS_GUEST},{$OCF}}}
					<div class="form-group">
						<label for="poster_name_if_guest" class="control-label">{!ocf:GUEST_NAME}:</label>

						<div class="control-wrap">
							<input maxlength="255" size="{$?,{$MOBILE},16,24}" value="" type="text" tabindex="1" id="poster_name_if_guest" name="poster_name_if_guest" class="form-control">
							{+START,IF_PASSED,JOIN_BITS}{+START,IF_NON_EMPTY,{JOIN_BITS}}
							<span class="horiz_field_sep">{JOIN_BITS}</span>
							{+END}{+END}
						</div>
					</div>
				{+END}

				{+START,IF,{GET_TITLE}}
					<div class="form-group">
						<label for="title" class="control-label">{!POST_TITLE}:</label>

						<div class="control-wrap constrain_field">
							<input maxlength="255" class="form-control" type="text" tabindex="2" id="title" name="title">
							<div id="error_title" style="display: none" class="alert alert-danger alert-input-error"></div>
						</div>
					</div>
				{+END}

				{+START,IF,{GET_EMAIL}}
					<div class="form-group">
						<label for="email" class="control-label">{!EMAIL_ADDRESS}:</label>{+START,IF,{EMAIL_OPTIONAL}} <span class="help-text">({!OPTIONAL})</span>{+END}
						<div class="control-wrap constrain_field">
							<input maxlength="255" class="wide_field{+START,IF,{$NOT,{EMAIL_OPTIONAL}}} input_text_required{+END}" id="email" type="text" tabindex="3" value="{$MEMBER_EMAIL*}" name="email" />
							<div id="error_email" style="display: none" class="alert alert-danger alert-input-error"></div>
						</div>
					</div>
				{+END}

				{+START,IF_PASSED,REVIEW_RATING_CRITERIA}{+START,IF_PASSED,TYPE}{+START,IF_PASSED,ID}
					{+START,LOOP,REVIEW_RATING_CRITERIA}

						<label for="review_rating__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}">{+START,IF_EMPTY,{REVIEW_TITLE}}{!RATING}:{+END}{+START,IF_NON_EMPTY,{REVIEW_TITLE}}{REVIEW_TITLE*}:{+END}</label>


						{+START,IF,{$JS_ON}}
							<img id="review_bar_1__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" alt="" src="{$IMG*,rating}" /><img id="review_bar_2__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" alt="" src="{$IMG*,rating}" /><img id="review_bar_3__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" alt="" src="{$IMG*,rating}" /><img id="review_bar_4__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" alt="" src="{$IMG*,rating}" /><img id="review_bar_5__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" alt="" src="{$IMG*,rating}" />
							<script>								function new_review_highlight__{TYPE%}__{$FIX_ID,{REVIEW_TITLE}}__{$FIX_ID,{ID}}(review,first_time)
								{
									var i,bit;
									for (i=1;i<=5;i++)
									{
										bit=document.getElementById('review_bar_'+i+'__{TYPE|}__{$FIX_ID,{REVIEW_TITLE}}__{ID|}');
										bit.className=((review!=0) && (review/2>=i))?'rating_star_highlight':'rating_star';
										if (first_time) bit.onmouseover=function(i) { return function()
										{
											new_review_highlight__{TYPE%}__{$FIX_ID,{REVIEW_TITLE}}__{$FIX_ID,{ID}}(i*2,false);
										} }(i);
										if (first_time) bit.onmouseout=function(i) { return function()
										{
											new_review_highlight__{TYPE%}__{$FIX_ID,{REVIEW_TITLE}}__{$FIX_ID,{ID}}(window.parseInt(document.getElementById('review_rating__{TYPE|}__{$FIX_ID,{REVIEW_TITLE}}__{ID|}').value),false);
										} }(i);
										if (first_time) bit.onclick=function(i) { return function()
										{
											document.getElementById('review_rating__{TYPE|}__{$FIX_ID,{REVIEW_TITLE}}__{ID|}').value=i*2;
										} }(i);
									}
								}
								new_review_highlight__{TYPE%}__{$FIX_ID,{REVIEW_TITLE}}__{$FIX_ID,{ID}}(0,true);
							</script>
							<input id="review_rating__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" type="hidden" name="review_rating__{$FIX_ID,{REVIEW_TITLE}}" value="" />
						{+END}

						{+START,IF,{$NOT,{$JS_ON}}}
							<select id="review_rating__{TYPE*|}__{$FIX_ID,{REVIEW_TITLE}}__{ID*|}" name="review_rating">
								<option value="">{!NA}</option>
								<option value="10">*****</option>
								<option value="8">****</option>
								<option value="6">***</option>
								<option value="4">**</option>
								<option value="2">*</option>
							</select>
						{+END}

					{+END}
				{+END}{+END}{+END}

				<div class="form-group">
					<div class="control-label">
						<p><label for="post"><img class="comcode_supported_icon" alt="" src="{$IMG*,comcode}"> {!POST_COMMENT}:</label></p>

						{+START,IF,{$NOT,{$MOBILE}}}
						{+START,IF,{$JS_ON}}
						{+START,IF,{$CONFIG_OPTION,is_on_emoticon_choosers}}
						<div class="comments-posting-form-emoticons well well-sm">
							{EM}
							{+START,IF,{$OCF}}
							<p class="associated-link associated_links_block_group">
								<a rel="nofollow" tabindex="5" href="javascript:" onclick="window.faux_open(maintain_theme_in_link('{$FIND_SCRIPT;*,emoticons}?field_name=post{$KEEP*;}'),'site_emoticon_chooser','width=300,height=320,status=no,resizable=yes,scrollbars=no'); return false;">
									{!EMOTICONS_POPUP}
								</a>
							</p>
							{+END}
						</div>
						{+END}
						{+END}
						{+END}
					</div>
					<div class="control-wrap constrain_field">
						<textarea name="post" id="post" class="form-control" {+START,IF,{$NOT,{$MOBILE}}} onkeyup="manage_scroll_height(this);"{+END} tabindex="4" accesskey="x" onfocus="if ((this.value.replace(/\s/g,'')=='{POST_WARNING;^*}'.replace(/\s/g,'') &amp;&amp; '{POST_WARNING;^*}'!='') || (typeof this.strip_on_focus!='undefined' &amp;&amp; this.value==this.strip_on_focus)) this.value=''; this.style.color='black';" cols="42" rows="11">{POST_WARNING*}</textarea>
					</div>
					<div id="error_post" style="display: none" class="alert alert-danger alert-input-error"></div>
				</div>

				{$GET,EXTRA_COMMENTS_FIELDS_1}
				{$GET,EXTRA_COMMENTS_FIELDS_2}

				<div class="comments_posting_form_end">
					{+START,IF_PASSED,USE_CAPTCHA}
						{+START,IF,{USE_CAPTCHA}}
							<div class="comments_captcha form-group">
								<div class="control-label">
									{+START,IF,{$CONFIG_OPTION,css_captcha}}
									<iframe{$?,{$BROWSER_MATCHES,ie}, frameBorder="0" scrolling="no"} id="captcha-frame" class="captcha-frame" title="{!CONTACT_STAFF_TO_JOIN_IF_IMPAIRED}" src="{$FIND_SCRIPT*,captcha}{$KEEP*,1,1}" data-toggle="tooltip">{!CONTACT_STAFF_TO_JOIN_IF_IMPAIRED}</iframe>
									{+END}
									{+START,IF,{$NOT,{$CONFIG_OPTION,css_captcha}}}
									<img id="captcha-image" title="{!CONTACT_STAFF_TO_JOIN_IF_IMPAIRED}" alt="{!CONTACT_STAFF_TO_JOIN_IF_IMPAIRED}" src="{$FIND_SCRIPT*,captcha}{$KEEP*,1,1}" data-toggle="tooltip">
									{+END}
								</div>
								<div class="control-wrap">
									<input maxlength="6" size="6" class="form-control input_text_required" value="" type="text" id="captcha" name="captcha">
									<p class="help-text"><label for="captcha">{!DESCRIPTION_CAPTCHA_2,<a target="_blank" title="{!AUDIO_VERSION}: {!LINK_NEW_WINDOW}" href="{$FIND_SCRIPT*,captcha,1}?mode=audio{$KEEP*,0,1}">{!AUDIO_VERSION}</a>}</label></p>
								</div>
							</div>
						{+END}
					{+END}

					<div class="proceed_button btn-toolbar text-center">
						{+START,IF,{$JS_ON}}{+START,IF,{$CONFIG_OPTION,enable_previews}}{+START,IF,{$NOT,{$VALUE_OPTION,xhtml_strict}}}
							<button onclick="if (typeof this.form=='undefined') var form=window.form_submitting; else var form=this.form; if (do_form_preview(event,form,maintain_theme_in_link('{$PREVIEW_URL*;}{$KEEP*;}'))) form.submit();" id="preview_button" accesskey="p" tabindex="250" class="btn btn-primary {$?,{$IS_EMPTY,{COMMENT_URL}},btn-page,btn-pageitem}" type="button">
								<i class="fa fa-eye"></i> {!PREVIEW}
							</button>
						{+END}{+END}{+END}
						{+START,IF_PASSED,MORE_URL}
							{+START,IF,{$JS_ON}}
								<button tabindex="6" accesskey="y" onclick="move_to_full_editor(this,'{MORE_URL*;}');" class="btn btn-primary {$?,{$IS_EMPTY,{COMMENT_URL}},btn-page,btn-pageitem}" type="button">
									<i class="fa fa-arrows-alt"></i> {!FULL_EDITOR}
								</button>
							{+END}
						{+END}
						<button onclick="handle_comments_posting_form_submit(this,event);" tabindex="7" accesskey="u" id="submit_button" class="btn btn-success {$?,{$IS_EMPTY,{COMMENT_URL}},btn-page,btn-pageitem}" {+START,IF,{$JS_ON}}type="button"{+END}{+START,IF,{$NOT,{$JS_ON}}}type="submit"{+END}>
							<i class="fa fa-plus"></i> {+START,IF_PASSED,SUBMIT_NAME}{SUBMIT_NAME*}{+END}{+START,IF_NON_PASSED,SUBMIT_NAME}{+START,IF_NON_EMPTY,{TITLE}}{TITLE*}{+END}{+START,IF_EMPTY,{TITLE}}{!SEND}{+END}{+END}
						</button>
					</div>
				</div>
			</div>

			{+START,IF_PASSED,ATTACHMENTS}
				<div class="attachments">
					{+START,IF_PASSED,ATTACH_SIZE_FIELD}
						{ATTACH_SIZE_FIELD}
					{+END}
					<input type="hidden" name="posting_ref_id" value="{$RAND,1,2147483646}">
					{ATTACHMENTS}
				</div>
			{+END}
		</div>
	</div>

{+START,IF_NON_EMPTY,{COMMENT_URL}}
</form>
{+END}

{+START,IF,{$JS_ON}}{+START,IF,{$CONFIG_OPTION,enable_previews}}{+START,IF,{$NOT,{$VALUE_OPTION,xhtml_strict}}}
	{+START,IF,{$FORCE_PREVIEWS}}
		<script>document.getElementById('submit_button').style.display='none';</script>
	{+END}

	<iframe{$?,{$BROWSER_MATCHES,ie}, frameBorder="0" scrolling="no"} title="{!PREVIEW}" name="preview_iframe" id="preview_iframe" src="{$BASE_URL*}/uploads/index.html" class="hidden_preview_frame">{!PREVIEW}</iframe>
{+END}{+END}{+END}

{+START,IF_PASSED,USE_CAPTCHA}
	{+START,IF,{USE_CAPTCHA}}
		<script>
			var form=document.getElementById('comments_form');
			add_captcha_validation(form);
		</script>
	{+END}
{+END}
