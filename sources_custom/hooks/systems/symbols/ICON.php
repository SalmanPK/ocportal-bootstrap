<?php

/**
 * A replacement for $IMG which returns Font Awesome icons where possible (and it returns whole tags instead of just path)
 *
 * @author Salman Abbas
 * @copyright 2014-2114 (c) Salman Abbas
 */
class Hook_symbol_ICON
{

	/**
	 * Standard modular run function for symbol hooks. Searches for tasks to perform.
	 *
	 * @param  array		Symbol parameters
	 * @return string		Result
	 */
	function run($param)
	{
		$value = '';

		if ((isset($param[0])) && (isset($GLOBALS['SITE_DB'])) && (function_exists('find_theme_image')) && ($GLOBALS['IN_MINIKERNEL_VERSION']==0) && ($GLOBALS['FORUM_DRIVER']!==NULL))
		{
			switch ($param[0]) {
				case 'menu_items/community_navigation/forums':
					$value = '<i class="fa fa-comments fa-lg"></i> ';
					break;

				case 'menu_items/community_navigation/rules':
					$value = '<i class="fa fa-file-text fa-lg"></i> ';
					break;

				case 'menu_items/community_navigation/members':
					$value = '<i class="fa fa-user fa-lg"></i> ';
					break;

				case 'menu_items/community_navigation/groups':
					$value = '<i class="fa fa-users fa-lg"></i> ';
					break;

				case 'menu_items/community_navigation/chat':
					$value = '<i class="fa fa-comment text fa-lg"></i> ';
					break;

				case 'menu_items/community_navigation/pointstore':
					$value = '<i class="fa fa-star fa-lg"></i> ';
					break;

				case 'page/enable_notifications':
					$value = '<i class="fa fa-envelope"></i> Monitor';
					break;

				case 'page/disable_notifications':
					$value = '<i class="fa fa-envelope"></i> Unmonitor';
					break;

				case 'page/mark_read':
					$value = '<i class="fa fa-check"></i> Mark Read';
					break;

				case 'page/new_topic':
					$value = '<i class="fa fa-plus"></i> Add Topic';
					break;

				case 'page/threaded':
					$value = '<i class="fa fa-align-left"></i> Threaded';
					break;

				case 'page/linear':
					$value = '<i class="fa fa-align-justify"></i> Linear';
					break;

				case 'page/send_message':
					$value = '<i class="fa fa-envelope"></i> Send Message';
					break;

				case 'page/mark_unread':
					$value = '<i class="fa fa-certificate"></i> Mark Unread';
					break;

				case 'page/reply':
					$value = '<i class="fa fa-plus"></i> Add Reply';
					break;

				case 'page/changes':
					$value = '<i class="fa fa-pencil"></i> Changes';
					break;

				case 'page/edit_tree':
					$value = '<i class="fa fa-sitemap"></i> Edit Tree';
					break;

				case 'page/edit':
					$value = '<i class="fa fa-pencil"></i> Edit';
					break;

				case 'page/new_post':
					$value = '<i class="fa fa-plus"></i> Add Post';
					break;

				case 'pageitem/reply':
					$value = '<i class="fa fa-plus"></i> Reply';
					break;

				case 'pageitem/whisper':
					$value = '<i class="fa fa-lock"></i> Whisper';
					break;

				case 'pageitem/quote':
					$value = '<i class="fa fa-quote-left"></i> Quote';
					break;

				case 'pageitem/points':
					$value = '<i class="fa fa-star"></i> Points';
					break;


				case 'pageitem/report_post':
					$value = '<i class="fa fa-warning"></i> Report';
					break;


				case 'pageitem/edit':
					$value = '<i class="fa fa-pencil"></i> Edit';
					break;


				case 'pageitem/delete':
					$value = '<i class="fa fa-trash"></i> Delete';
					break;

				case 'pageitem/punish':
					$value = '<i class="fa fa-warning"></i> Punish';
					break;

				case 'pageitem/goto':
					$value = '<i class="fa fa-long-arrow-right"></i> ';
					break;

				case 'pageitem/history':
					$value = '<i class="fa fa-clock-o"></i> History';
					break;

				case 'comcodeeditor/thumb':
					$value = '<i class="fa fa-photo"></i> ';
					break;

				case 'comcodeeditor/comcode':
					$value = '<i class="fa fa-tag"></i> ';
					break;

				case 'comcodeeditor/list':
					$value = '<i class="fa fa-list"></i> ';
					break;

				case 'comcodeeditor/url':
					$value = '<i class="fa fa-link"></i> ';
					break;

				case 'comcodeeditor/quote':
					$value = '<i class="fa fa-quote-left"></i> ';
					break;

				case 'comcodeeditor/box':
					$value = '<i class="fa fa-crop"></i> ';
					break;

				case 'comcodeeditor/code':
					$value = '<i class="fa fa-code"></i> ';
					break;

				case 'comcodeeditor/b':
					$value = '<i class="fa fa-bold"></i> ';
					break;

				case 'comcodeeditor/i':
					$value = '<i class="fa fa-italic"></i> ';
					break;

				case 'comcodeeditor/apply_changes':
					$value = '<i class="fa  fa-check"></i> Apply Changes';
					break;

				default:
					$value=find_theme_image($param[0],((isset($param[3])) && ($param[3]=='1')),false,(isset($param[2]) && $param[2]!='')?$param[2]:NULL,NULL,((isset($param[1])) && ($param[1]=='1'))?$GLOBALS['FORUM_DB']:$GLOBALS['SITE_DB']);
					$value = '<img alt="" src="'.escape_html($value).'"> ';
					break;
			}

		}

		return $value;
	}
}