<?php

/**
 * Menu title callback for node type "manage" tabs
 *
 * @author Nigel Heap <nigel@itomic.com.au>
 * @date   21/2/2012
 * @see ihf_menu()
 */
function ihf_node_type_tabs_title($tab, $node) {
  $text = '';
  switch ($tab) {
    case 'type':
      $type = node_type_load($node->type);
      $text = 'Manage '. $type->name;
      break;
    case 'fields':
      $text = 'Manage Fields';
      break;
    case 'display':
      $text = 'Manage Display';
      break;
  }
  return t($text);
}

/**
 * Menu page callback for node type "manage" tabs
 *
 * @author Nigel Heap <nigel@itomic.com.au>
 * @date   21/2/2012
 * @see ihf_menu()
 */
function ihf_node_type_tabs_page($tab, $node) {
  $path = '';
  $options = array('query' => array('destination' => 'node/'. $node->nid));
  switch ($tab) {
    case 'type':
      $path = 'admin/structure/types/manage/'. $node->type;
      break;
    case 'fields':
    case 'display':
      $path = 'admin/structure/types/manage/'. $node->type .'/'. $tab;
      break;
  }
  if ($path) {
    drupal_goto($path, $options);
  }
  else {
    return drupal_not_found();
  }
}
