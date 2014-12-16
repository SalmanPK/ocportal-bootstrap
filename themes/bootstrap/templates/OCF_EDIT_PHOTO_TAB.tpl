<div class="clearfix">
	<div class="ocf-avatar_page-old-avatar right">
		{+START,IF_NON_EMPTY,{PHOTO}}
			<img class="ocf-topic-post-avatar" alt="{!PHOTO}" src="{PHOTO*}">
		{+END}
		{+START,IF_EMPTY,{PHOTO}}
			{!NONE_EM}
		{+END}
	</div>
	<div class="ocf-avatar-page-text">
		<p>{!PHOTO_CHANGE,{USERNAME*}}</p>

		{TEXT}
	</div>
</div>
