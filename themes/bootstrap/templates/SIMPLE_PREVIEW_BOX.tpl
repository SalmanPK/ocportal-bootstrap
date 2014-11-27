{+START,SET,PREVIEW_CONTENTS}
	{+START,IF_NON_EMPTY,{SUMMARY}}
		<div class="clearfix">
			{SUMMARY`}
		</div>
	{+END}
	{+START,IF_EMPTY,{SUMMARY}}
		<p>
			{!NO_SUMMARY}
		</p>
	{+END}

	{+START,IF_PASSED,BREADCRUMBS}{+START,IF_NON_EMPTY,{BREADCRUMBS}}
		<nav class="breadcrumbs" itemprop="breadcrumb" role="navigation"><p>
			{!LOCATED_IN,{BREADCRUMBS}}
		</p></nav>
	{+END}{+END}

	{+START,IF_PASSED,URL}
		<p class="shunted_button">
			<a href="{URL*}"><img class="btn btn-primary btn-pageitem" alt="{!VIEW}" title="{!VIEW}" src="{$IMG*,pageitem/goto}" /></a>
		</p>
	{+END}
{+END}

<section class="box box-simple-preview-box">
	{+START,IF_PASSED,TITLE}
		<h4>{TITLE*}</h4>
	{+END}

	{$GET,PREVIEW_CONTENTS}
</section>
