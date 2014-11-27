{$REQUIRE_JAVASCRIPT,javascript_dyn_comcode}

{$SET,RAND,{$RAND}}

<div class="panel panel-default panel-standardbox-accordion {+START,IF_IN_ARRAY,OPTIONS,tray_open,tray_closed}panel-collapsible{+END}"{+START,IF_NON_EMPTY,{WIDTH}} style="width: {WIDTH*}"{+END}>
	{+START,IF_NON_EMPTY,{TITLE}}
		<a class="panel-heading {+START,IF_NOT_IN_ARRAY,OPTIONS,tray_open}collapsed{+END}" href="javascript:" data-toggle="collapse" data-target="#collapse-standardbox-{$GET*,RAND}">
			<h3 class="panel-title">
				{+START,IF_NON_EMPTY,{TOP_LINKS}}
					{+START,IF,{$JS_ON}}
						{TOP_LINKS}
					{+END}
				{+END}

				{TITLE}
			</h3>
		</a>
	{+END}
	<div class="panel-collapse collapse{+START,IF_IN_ARRAY,OPTIONS,tray_open} in{+END}" id="collapse-standardbox-{$GET*,RAND}">
		<div class="panel-body">
			{+START,IF_NON_EMPTY,{META}}
				<div class="meta-details" role="contentinfo">
					<dl class="meta-details-list">
						{+START,LOOP,META}
						<dt class="field_name">{KEY}:</dt> <dd>{VALUE}</dd>
						{+END}
					</dl>
				</div>
			{+END}

			{$PARAGRAPH,{CONTENT}}

			{+START,IF_NON_EMPTY,{LINKS}}
				<ul class="list-inline">
					{+START,LOOP,LINKS}
					<li>{_loop_var}</li>
					{+END}
				</ul>
			{+END}
		</div>
	</div>
</div>
