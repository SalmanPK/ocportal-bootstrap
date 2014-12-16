<!DOCTYPE html>
<!--
Powered by {$BRAND_NAME*} version {$VERSION_NUMBER*}, (c) ocProducts Ltd
{$BRAND_BASE_URL*}
-->
<html lang="{$LCASE*,{$LANG}}" dir="{!dir}">
<head>
	{+START,INCLUDE,HTML_HEAD}{+END}
</head>
{$,You can use main_website_inner to help you create fixed width designs; never put fixed-width stuff directly on ".website_body" or "body" because it will affects things like the preview or banner frames or popups/overlays}
<body class="website-body zone-running-{$?,{$IS_EMPTY,{$ZONE}},default,{$ZONE*}} page-running-{$PAGE*} type-running-{$?,{$IS_EMPTY,{$_GET,type}},misc,{$_GET,type}} {+START,IF_NON_EMPTY,{$TRIM,{$LOAD_PANEL,left}}}has-left-panel{+END} {+START,IF_NON_EMPTY,{$TRIM,{$LOAD_PANEL,right}}}has-right-panel{+END}"
	  id="main-website" itemscope="itemscope" itemtype="http://schema.org/WebPage">
<div id="main-website-inner" class="main-website-inner">
{$,This is the main site header}
{+START,IF,{$SHOW_HEADER}}
<header class="global-header clearfix" itemscope="itemscope" itemtype="http://schema.org/WPHeader">
	<div class="global-header-inner">
		{$,The main logo}
		<h1 class="logo-heading">
			<a class="logo-outer" target="_self" href="{$PAGE_LINK*,:}" rel="home">
				<span class="logo">{$SITE_NAME*}</span>
			</a>
		</h1>

		{$,This allows screen-reader users (e.g. blind users) to jump past the panels etc to the main content}
		<a accesskey="s" class="sr-only" href="#maincontent">{!SKIP_NAVIGATION}</a>

		{$,Main menu}
		<div class="global-navigation">
			{$BLOCK,block=side_stored_menu,param=zone_menu,type=zone}
		</div>

		{$,Outside the Admin Zone we have a spot for the banner
		{+START,IF,{$NAND,{$HAS_ACTUAL_PAGE_ACCESS,admin,adminzone},{$EQ,{$ZONE},adminzone,cms}}}{+START,IF,{$NOT,{$MOBILE}}}
		{$SET,BANNER,{$BANNER}} {$,This is to avoid evaluating the banner parameter twice}
		{+START,IF_NON_EMPTY,{$GET,BANNER}}
		<div class="global-banner">{$GET,BANNER}</div>
		{+END}
		{+END}{+END}
		}

		{$,Inside the Admin Zone we have the Admin Zone search}
		{+START,IF,{$AND,{$HAS_ACTUAL_PAGE_ACCESS,admin,adminzone},{$EQ,{$ZONE},adminzone,cms}}}
		<div class="adminzone-search">
			<form title="{!SEARCH}" action="{$URL_FOR_GET_FORM*,{$PAGE_LINK,adminzone:admin:search}}" method="get" class="inline">
				{$HIDDENS_FOR_GET_FORM,{$PAGE_LINK,adminzone:admin:search}}

				<div>
					<label for="search_content">{!ADMINZONE_SEARCH_LOST}</label> <span class="arr">&rarr;</span>
					<input size="25" type="search" id="search_content" name="search_content" style="{$?,{$MATCH_KEY_MATCH,adminzone:admin:search},,color: gray}" onblur="if (this.value=='') { this.value='{!ADMINZONE_SEARCH;}'; this.style.color='gray'; }" onkeyup="if (typeof update_ajax_admin_search_list!='undefined') update_ajax_admin_search_list(this,event);" onfocus="require_javascript('javascript_ajax_people_lists'); require_javascript('javascript_ajax'); if (this.value=='{!ADMINZONE_SEARCH;}') this.value=''; this.style.color='black';" value="{$?,{$MATCH_KEY_MATCH,adminzone:admin:search},{$_GET*,search_content},{!ADMINZONE_SEARCH}}" title="{!ADMIN_ZONE_SEARCH_SYNTAX}">
					{+START,IF,{$JS_ON}}
					<div class="sr-only"><label for="new_window">{!NEW_WINDOW}</label></div>
					<input title="{!NEW_WINDOW}" type="checkbox" value="1" id="new_window" name="new_window" />
					{+END}
					<input onclick="if ((form.new_window) && (form.new_window.checked)) form.target='_blank'; else form.target='_top';" id="search_button" class="btn btn-primary btn-sm" type="image" src="{$IMG*,admin_search}" alt="{!SEARCH}" value="{!SEARCH}">
				</div>
			</form>
		</div>
		{+END}
	</div>
</header>
{+END}

{$,Make sure the system knows we have not rendered our primary title for this output yet}
{$SET,done_first_title,0}

{$,By default the top panel contains the admin menu, community menu, member bar, etc}
{+START,IF_NON_EMPTY,{$TRIM,{$LOAD_PANEL,top}}}
<div id="panel-top" class="global-panel global-panel-top">
	<div class="global-panel-top-inner">{$LOAD_PANEL,top}</div>
</div>
{+END}

{$,ocPortal may show little messages for you as it runs relating to what you are doing or the state the site is in}
{+START,IF_NON_EMPTY,{$MESSAGES_TOP}}
<div class="global-messages">
	<div class="global-messages-inner">
		{$MESSAGES_TOP}
	</div>
</div>
{+END}

{$,The main panels and content; clearfix contains the layout into a rendering box so that the footer etc can sit underneath}
<div class="global-content">
	<div class="global-content-inner">
		<article class="global-middle">
			{$,Breadcrumbs}
			{+START,IF,{$IN_STR,{$BREADCRUMBS},<a}}{+START,IF,{$SHOW_HEADER}}
			<ol class="global-breadcrumb breadcrumb" itemprop="breadcrumb">
				<li>
					{$BREADCRUMBS}
				</li>
			</ol>
			{+END}{+END}

			{$,Associated with the SKIP_NAVIGATION link defined further up}
			<a id="maincontent"></a>

			{$,The main site, whatever 'page' is being loaded}
			{MIDDLE}
		</article>

		{+START,IF_NON_EMPTY,{$TRIM,{$LOAD_PANEL,left}}}
		<div id="panel-left" class="global-side-panel global-left-panel" role="complementary" itemscope="itemscope" itemtype="http://schema.org/WPSideBar">
			{$LOAD_PANEL,left}
		</div>
		{+END}

		{$,Deciding whether/how to show the right panel requires some complex logic}
		{$SET,HELPER_PANEL_TUTORIAL,{$?,{$HAS_PRIVILEGE,see_software_docs},{$HELPER_PANEL_TUTORIAL}}}
		{$SET,helper_panel,{$OR,{$IS_NON_EMPTY,{$GET,HELPER_PANEL_TUTORIAL}},{$IS_NON_EMPTY,{$HELPER_PANEL_PIC}},{$IS_NON_EMPTY,{$HELPER_PANEL_HTML}},{$IS_NON_EMPTY,{$HELPER_PANEL_TEXT}}}}
		{+START,IF,{$OR,{$GET,helper_panel},{$IS_NON_EMPTY,{$TRIM,{$LOAD_PANEL,right}}}}}
		<div id="panel-right" class="global-side-panel global-right-panel {+START,IF_EMPTY,{$TRIM,{$LOAD_PANEL,right}}} helper-panel{+START,IF,{$HIDE_HELP_PANEL}} helper-panel-hidden{+END}{+END}" role="complementary" itemscope="itemscope" itemtype="http://schema.org/WPSideBar">
			{+START,IF_NON_EMPTY,{$TRIM,{$LOAD_PANEL,right}}}
			{$LOAD_PANEL,right}
			{+END}
		</div>
		{+END}
	</div>
</div>

{+START,IF_NON_EMPTY,{$TRIM,{$LOAD_PANEL,bottom}}}
<div id="panel-bottom" role="complementary" class="global-panel global-panel-bottom">
	<div class="global-panel-bottom-inner">{$LOAD_PANEL,bottom}</div>
</div>
{+END}

{+START,IF_NON_EMPTY,{$MESSAGES_BOTTOM}}
<div class="global-messages">
	<div class="global-messages-inner">
		{$MESSAGES_BOTTOM}
	</div>
</div>
{+END}

{+START,IF,{$EQ,{$CONFIG_OPTION,sitewide_im},1}}{$CHAT_IM}{+END}

{$,Late messages happen if something went wrong during outputting everything (i.e. too late in the process to show the error in the normal place)}
{+START,IF_NON_EMPTY,{$LATE_MESSAGES}}
<div class="global-messages">
	<div class="global-messages-inner">{$LATE_MESSAGES}</div>
</div>

{+START,IF,{$DEV_MODE}}
<script>
	try { window.scrollTo(0,1000000); } catch (e) {};
	window.fauxmodal_alert('{!PLEASE_REVIEW_ERRORS_AT_BOTTOM;}'); // Before Firefox dies with an XHTML error, let the developer see what is wrong
</script>
{+END}
{+END}

{$,This is the main site footer}
{+START,IF,{$SHOW_FOOTER}}
<footer class="global-footer clearfix" itemscope="itemscope" itemtype="http://schema.org/WPFooter">
	<div class="global-footer-inner">
		{+START,IF_NON_EMPTY,{$STAFF_ACTIONS}}{+START,IF,{$CONFIG_OPTION,ocp_show_staff_page_actions}}
		<form onsubmit="return staff_actions_select(this);" title="{!SCREEN_DEV_TOOLS} {!LINK_NEW_WINDOW}" class="form-inline form-special-page-type" action="{$URL_FOR_GET_FORM*,{$SELF_URL,0,1}}" method="get" target="_blank">
			{$HIDDENS_FOR_GET_FORM,{$SELF_URL,0,1,0,cache_blocks=0,keep_no_xhtml=1,special_page_type=<null>,keep_cache=<null>}}

			<p class="sr-only"><label for="special_page_type">{!SCREEN_DEV_TOOLS}</label></p>

			<div class="input-group">
				<select id="special_page_type" name="special_page_type" class="form-control input-sm">
					{$STAFF_ACTIONS}
				</select>
							<span class="input-group-btn">
								<input class="btn btn-primary btn-sm" type="submit" value="{!PROCEED_SHORT}">
							</span>
			</div>
		</form>
		<br>
		{+END}{+END}


		{+START,IF,{$ADDON_INSTALLED,flagrant}}{+START,IF_NON_EMPTY,{$FLAGRANT}}
		<div class="global-community-message">
			{$FLAGRANT`}
		</div>
		{+END}{+END}

		<nav class="global-minilinks" role="navigation">
			<ul class="list-inline">
				{+START,IF,{$CONFIG_OPTION,bottom_show_sitemap_button}}
				<li><a accesskey="3" rel="site_map" href="{$PAGE_LINK*,_SEARCH:sitemap}">{!SITE_MAP}</a></li>
				{+END}
				{+START,IF,{$CONFIG_OPTION,bottom_show_rules_link}}
				<li><a rel="site_rules" accesskey="7" href="{$PAGE_LINK*,_SEARCH:rules}">{!RULES}</a></li>
				{+END}
				{+START,IF,{$CONFIG_OPTION,bottom_show_privacy_link}}
				<li><a rel="site_privacy" accesskey="8" href="{$PAGE_LINK*,_SEARCH:privacy}">{!PRIVACY}</a></li>
				{+END}
				{+START,IF,{$CONFIG_OPTION,bottom_show_feedback_link}}
				<li><a rel="site_contact" accesskey="9" href="{$PAGE_LINK*,_SEARCH:feedback}{+START,IF,{$NOT,{$IN_STR,{$PAGE_LINK,:feedback},?}}}?{+END}{+START,IF,{$NOT,{$NOT,{$IN_STR,{$PAGE_LINK,:feedback},?}}}}&amp;{+END}redirect={$SELF_URL&*,1}">{!_FEEDBACK}</a></li>
				{+END}
				{+START,IF,{$NOR,{$IS_HTTPAUTH_LOGIN},{$IS_GUEST}}}
				<li><form title="{!LOGOUT}" class="inline" method="post" action="{$PAGE_LINK*,:login:logout}"><input class="btn btn-link btn-link-simple" type="submit" title="{!_LOGOUT,{$USERNAME*}}" value="{!LOGOUT}" /></form></li>
				{+END}
				{+START,IF,{$OR,{$IS_HTTPAUTH_LOGIN},{$IS_GUEST}}}
				<li><a href="{$PAGE_LINK*,:login:{$?,{$NOR,{$GET,login_screen},{$EQ,{$ZONE}:{$PAGE},:login}},redirect={$SELF_URL&*,1}}}">{!_LOGIN}</a></li>
				{+END}
				{+START,IF_NON_EMPTY,{$HONEYPOT_LINK}}
				<li class="sr-only">{$HONEYPOT_LINK}</li>
				{+END}
				<li class="sr-only"><a accesskey="1" href="{$PAGE_LINK*,:}">{$SITE_NAME*}</a></li>
				<li class="sr-only"><a accesskey="0" href="{$PAGE_LINK*,:keymap}">{!KEYBOARD_MAP}</a></li>
			</ul>

			{+START,IF,{$AND,{$NOT,{$_GET,keep_has_js}},{$JS_ON}}}
			<noscript><a href="{$SELF_URL*,1,0,1}&amp;keep_has_js=0">{!MARK_JAVASCRIPT_DISABLED}</a></noscript>
			{+END}
		</nav>

		<div class="global-copyright">
			{$,Uncomment to show user"s time {$DATE} {$TIME}}
			{$COPYRIGHT`}
		</div>
	</div>
</footer>
{+END}

{$JS_TEMPCODE,footer}
<script>
	script_load_stuff();

	{+START,IF,{$EQ,{$_GET,wide_print},1}}try { window.print(); } catch (e) {};{+END}
</script>

{$EXTRA_FOOT}
</div>

{+START,INCLUDE,MODALS}{+END}
</body>
</html>
