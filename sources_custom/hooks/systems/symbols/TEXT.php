<?php

/**
 * A replacement for $IMG which returns text or Font Awesome icons when available (and it returns the whole tags instead of just path)
 *
 * @author Salman Abbas
 * @copyright 2014-2114 (c) Salman Abbas
 */
class Hook_symbol_TEXT
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
				case 'page/enable_notifications':
					$value = 'Monitor';
					break;

				case 'page/disable_notifications':
					$value = 'Unmonitor';
					break;

				case 'page/mark_read':
					$value = 'Mark Read';
					break;

				case 'page/new_topic':
					$value = 'Add Topic';
					break;

				case 'page/threaded':
					$value = 'Threaded';
					break;

				case 'page/linear':
					$value = 'Linear';
					break;

				case 'page/send_message':
					$value = 'Send Message';
					break;

				case 'page/mark_unread':
					$value = 'Mark Unread';
					break;

				case 'page/reply':
					$value = 'Add Reply';
					break;

				case 'page/invite_member':
					$value = 'Invite Member';
					break;

				case 'page/changes':
					$value = 'Changes';
					break;

				case 'page/edit_tree':
					$value = 'Edit Tree';
					break;

				case 'page/edit':
					$value = 'Edit';
					break;

				case 'page/closed':
					$value = 'Closed';
					break;

				case 'page/new_post':
					$value = 'Add Post';
					break;

				case 'pageitem/reply':
					$value = 'Reply';
					break;

				case 'pageitem/whisper':
					$value = 'Whisper';
					break;

				case 'pageitem/quote':
					$value = 'Quote';
					break;

				case 'pageitem/points':
					$value = 'Points';
					break;


				case 'pageitem/report_post':
					$value = 'Report';
					break;

				case 'pageitem/edit':
					$value = 'Edit';
					break;


				case 'pageitem/delete':
					$value = 'Delete';
					break;

				case 'pageitem/punish':
					$value = 'Punish';
					break;

				case 'pageitem/history':
					$value = 'History';
					break;

				case 'menu_items/community_navigation/forums':
				case 'menu_items/community_navigation/rules':
				case 'menu_items/community_navigation/members':
				case 'menu_items/community_navigation/groups':
				case 'menu_items/community_navigation/chat':
				case 'menu_items/community_navigation/pointstore':
				case 'comcodeeditor/thumb':
				case 'comcodeeditor/comcode':
				case 'comcodeeditor/list':
				case 'comcodeeditor/url':
				case 'comcodeeditor/quote':
				case 'comcodeeditor/box':
				case 'comcodeeditor/code':
				case 'comcodeeditor/b':
				case 'comcodeeditor/i':
					$value = '';
					break;

				default:
					if (substr($param[0], 0, strlen('menu_items/bootstrap/')) === 'menu_items/bootstrap/') {
						$fontAwesomeIcon = substr($param[0], strlen('menu_items/bootstrap/'));

						$value = '<i class="fa fa-lg fa-'.$fontAwesomeIcon.'"></i> ';
					} else {
						$value=find_theme_image($param[0],((isset($param[3])) && ($param[3]=='1')),false,(isset($param[2]) && $param[2]!='')?$param[2]:NULL,NULL,((isset($param[1])) && ($param[1]=='1'))?$GLOBALS['FORUM_DB']:$GLOBALS['SITE_DB']);
						$value = '<img src="'.escape_html($value).'" alt="">';
					}

					break;
			}

		}

		return $value;
	}
}