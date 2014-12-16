{+START,SET,PREVIEW_CONTENTS}
	{+START,IF_NON_EMPTY,{SUMMARY}}
			{SUMMARY`}
	{+END}
	{+START,IF_EMPTY,{SUMMARY}}
		<p>
			{!NO_SUMMARY}
		</p>
	{+END}

	{+START,IF_PASSED,BREADCRUMBS}{+START,IF_NON_EMPTY,{BREADCRUMBS}}
		<nav class="breadcrumbs" itemprop="breadcrumb" role="navigation">
			<p>{!LOCATED_IN,{BREADCRUMBS}}</p>
		</nav>
	{+END}{+END}

	{+START,IF_PASSED,URL}
		<p class="shunted-button">
			<a href="{URL*}" class="btn btn-primary btn-pageitem btn-pageitem-goto">{!VIEW}</a>
		</p>
	{+END}
{+END}

<section class="preview-box preview-box-simple">
	{+START,IF_PASSED,TITLE}
		<h4 class="preview-box-title">{TITLE*}</h4>
	{+END}

	{$GET,PREVIEW_CONTENTS}
</section>
