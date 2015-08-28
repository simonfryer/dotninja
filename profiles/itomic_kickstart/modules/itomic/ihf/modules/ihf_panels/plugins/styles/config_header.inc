<?php

/**
 * @file
 *  A configurable pane heading. 
 * 
 *  - Allows changing of the tag element: <h1>, <h2> etc...
 *  - Allows adding of a link to the tag element
 * 
 * @todo
 *  - Make links compatible with token
 */

// Plugin definition
$plugin = array(
  'title' => t('Configurable Header'),
  'description' => t('Display the pane heading settings.'),
  'render pane' => 'panels_config_header_style_render_pane',
  'pane settings form' => 'panels_config_header_style_settings_form',
  'pane settings form submit' => 'panels_pane_config_header_style_settings_submit',
  'defaults' => array('heading_tag' => array(), 'heading_link' => ''),
  'weight' => -5
);


/**
 * Settings form callback.
 */
function panels_config_header_style_settings_form($style_settings) {
  $form['heading_tag'] = array(
    '#type' => 'select',
    '#title' => t('Heading Tag'),
    '#options' => array(
      'h1' => t('H1'),
      'h2' => t('H2'),
      'h3' => t('H3'),
      'h4' => t('H4'),
      'h5' => t('H5'),
      'h6' => t('H6')
    ),
    '#default_value' => (isset($style_settings['heading_tag'])) ? $style_settings['heading_tag'] : 'h2',
  );
  
  $form['header_link'] = array(
    '#type' => 'textfield',
    '#title' => t('Link Location'),
    '#default_value' => (isset($style_settings['header_link'])) ? $style_settings['header_link'] : ''
  );
  
  return $form;
}

function panels_pane_config_header_style_settings_submit(&$form, &$form_state) {
  //dpm($form);
}

/**
 * Render callback.
 *
 * @ingroup themeable
 *  panel-pane pane-views-panes pane-key-words-panel-pane-1
 */
function theme_panels_config_header_style_render_pane($vars) {
  $settings = $vars['settings'];
  $classes = array(
    "panel-pane",
    "pane-".str_replace("_", "-", $vars['content']->type),
    "pane-".str_replace("_", "-", $vars['content']->subtype)
  );
  
  // @todo: Make this use tokens rather than this quick and dirty solution to get the nid.
  if(strstr($settings['header_link'], "%nid")){
    $nid = arg(1);
    if(!empty($nid))
      $settings['header_link'] = str_replace("%nid", $nid, $settings['header_link']);
  }
  
  if(!empty($vars['pane']->css['css_class']))
  $classes[] = $vars['pane']->css['css_class'];
  
  $data = "";
  $data .= '<div class="'.implode(" ", $classes).'">';
  
  if(!empty($vars['content']->title)){
    $data .= '<'.$settings['heading_tag'].' class="pane-title">';
    if(!empty($settings['header_link']))
      $data .=   l($vars['content']->title, $settings['header_link'], array("attributes" => array("title" => $vars['content']->title)));
    else
      $data .= $vars['content']->title;
  $data .= '</'.$settings['heading_tag'].'>';
  
  }
  
  $data .= render($vars['content']->content);
  $data .= '</div>';
  
  return $data;
}

