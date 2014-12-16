<?php

/**
 * Startup code for ocPortal Bootstrap Theme
 *
 * @author Salman Abbas
 * @copyright 2014-2114 (c) Salman Abbas
 */
class Hook_startup_bootstrap_theme
{
	function run()
	{
		require_code('lang');
		require_lang('bootstrap');
	}
}