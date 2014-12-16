{+START,IF_NON_EMPTY,{CATEGORY_NAME}}
	<div class="panel panel-default panel-collapsible panel-form-screen-input-theme-image-category">
		<a href="javascript:" class="panel-heading {$?,{$EQ,{DISPLAY*},none},collapsed,}" data-toggle="collapse" data-target="#collapse-image-category-{$LCASE|,{CATEGORY_NAME}}">
			<h3 class="panel-title">{CATEGORY_NAME*}</h3>
		</a>

		<div class="panel-collapse collapse {$?,{$EQ,{DISPLAY*},block},in,}" id="collapse-image-category-{$LCASE|,{CATEGORY_NAME}}">
			<div class="panel-body">
				{CATEGORY}
			</div>
		</div>
	</div>
{+END}

{+START,IF_EMPTY,{CATEGORY_NAME}}
	<div class="clearfix">
		{CATEGORY}
	</div>
{+END}
