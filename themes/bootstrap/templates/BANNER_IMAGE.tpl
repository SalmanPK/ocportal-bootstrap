{+START,IF,{$IS_ADMIN}}{+START,IF,{$NOT,{$MATCH_KEY_MATCH,cms:cms_banners}}}
	<form title="{!BANNER}: {!EDIT}{+START,IF_NON_EMPTY,{CAPTION}} ({$STRIP_TAGS,{CAPTION*}}){+END}" class="associated_minor_button_action associated_minor_button_overlayed" method="post" action="{$PAGE_LINK*,cms:cms_banners:_ed:{DEST}}"><input title="{!BANNER}: {!EDIT} ({$STRIP_TAGS,{CAPTION*}})" type="submit" value="{!EDIT}" /></form>
{+END}{+END}
{+START,IF_NON_EMPTY,{URL}}<a rel="nofollow external" title="{!BANNER}: {+START,IF_NON_EMPTY,{CAPTION}}{CAPTION*}: {+END}{!LINK_NEW_WINDOW}" class="link_exempt" target="_blank" href="{$FIND_SCRIPT*,banner}?source={SOURCE&*}&amp;dest={DEST&*}&amp;type=click{$KEEP*,0,1}">{+END}<img width="{WIDTH*}" height="{HEIGHT*}" alt="{!BANNER}{+START,IF_NON_EMPTY,{CAPTION}}: {CAPTION*}{+END}" style="border: 0" title="{CAPTION*}" src="{IMG*}" />{+START,IF_NON_EMPTY,{URL}}</a>{+END}