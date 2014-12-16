<div class="ocf-topic">
	{POST}
</div>

{+START,IF_PASSED,URL}{+START,IF_NON_EMPTY,{URL}}
	<p class="pull-right">
		<a href="{URL*}" class="btn btn-primary btn-pageitem btn-pageitem-goto" title="{!FORUM_POST} #{ID*}"> <span class="sr-only">{!GO_TO_POST}</span></a>
	</p>
{+END}{+END}

{+START,IF_PASSED,BREADCRUMBS}
	<ol class="breadcrumb" itemprop="breadcrumb" role="navigation">
		<li>{BREADCRUMBS}</li>
	</ol>
{+END}
