<?php
define('ITOMIC_SITE_NAME', $_SERVER['SERVER_NAME']);
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
if (!function_exists("system_form_install_configure_form_alter")) {
  function system_form_install_configure_form_alter(&$form, $form_state) {
    $form['site_information']['site_name']['#default_value'] = 'Itomic Kickstart';

    // The name of the site, taken from the URL.

	$form['site_information']['site_name']['#default_value'] = ITOMIC_SITE_NAME . ".dev";
	$form['site_information']['site_mail']['#default_value'] = 'webmaster@itomic.com.au';

	// Set a default username and email address.
	$form['admin_account']['account']['name']['#default_value'] = 'admin';
	$form['admin_account']['account']['mail']['#default_value'] = 'drupal@itomic.com.au';

	// Set a default country and timezone.
	$form['server_settings']['site_default_country']['#default_value'] = 'AU';
	$form['server_settings']['date_default_timezone']['#default_value'] = 'Australia/Perth';

	// Disable the 'receive email notifications' checkbox.
	$form['update_notifications']['update_status_module']['#default_value'][1] = 0;
  }
}

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'itomic_kickstart';
    }
  }
}