{TITLE}

{+START,IF_NON_EMPTY,{FRIENDS}}
	<ul class="ocf_profile_friends list-actions">
		{+START,LOOP,FRIENDS}
			<li onmouseover="if (typeof window.activate_tooltip!='undefined') activate_tooltip(this,event,'{BOX*;~}','500px');"><a href="{URL*}">{USERNAME*}</a> <span class="help-text">{USERGROUP*}</span></li>
		{+END}
	</ul>
{+END}
{+START,IF_EMPTY,{FRIENDS}}
	<p class="nothing_here">{!NO_ENTRIES}</p>
{+END}

{+START,IF_NON_EMPTY,{PAGINATION}}
	<div class="clearfix">
		{PAGINATION}
	</div>
{+END}
