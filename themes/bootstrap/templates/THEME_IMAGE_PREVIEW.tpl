<div class="well well-sm well-theme_image_preview"><div class="box_inner">
	<h2>{!CURRENT}</h2>

	<div class="clearfix">
		<img class="theme_image_preview" src="{URL*}" alt="{!THEME_IMAGE}" />

		<p>{!THEME_IMAGE_CURRENTLY_LIKE,{WIDTH*},{HEIGHT*}}</p>

		{+START,IF,{UNMODIFIED}}
			<p>{!THEME_IMAGE_CURRENTLY_UNMODIFIED}</p>
		{+END}

		<p>{!RIGHT_CLICK_SAVE_AS}</p>
	</div>
</div></div>

