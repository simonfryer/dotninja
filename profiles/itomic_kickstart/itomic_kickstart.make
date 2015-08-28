; itomic_kickstart make file for d.o. usage
core = "7.x"
api = "2"

projects[] = "drupal"

; +++++ Modules +++++

; Modules - core to running a Drupal site
projects[admin_menu][subdir] = "contrib"
projects[adminimal_admin_menu][subdir] = "contrib"
projects[context][subdir] = "contrib"
projects[ctools][subdir] = "contrib"
projects[date][subdir] = "contrib"
projects[entity][subdir] = "contrib"
projects[entityreference][subdir] = "contrib"
projects[features][subdir] = "contrib"
projects[field_collection][subdir] = "contrib"
projects[field_group][subdir] = "contrib"
projects[job_scheduler][subdir] = "contrib"
projects[jquery_update][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[media][version] = "2.0-beta1"
projects[media][subdir] = "contrib"
projects[menu_attributes][subdir] = "contrib"
projects[menu_block][subdir] = "contrib"
projects[pathauto][subdir] = "contrib"
projects[views][subdir] = "contrib"
projects[views_bulk_operations][subdir] = "contrib"
projects[webform][subdir] = "contrib"
projects[wysiwyg][version] = "2.x-dev"
projects[wysiwyg][subdir] = "contrib"

; Modules - data storage enhancements
projects[entity_view_mode][subdir] = "contrib"
projects[file_admin][subdir] = "contrib"
projects[file_entity][subdir] = "contrib"
projects[file_entity_revisions][subdir] = "contrib"
projects[uuid][subdir] = "contrib"

; Modules - administration improvements
projects[advanced_link][subdir] = "contrib"
projects[ckeditor_link][subdir] = "contrib"
projects[draggableviews][subdir] = "contrib"
projects[redirect][subdir] = "contrib"
projects[link][subdir] = "contrib"
projects[linkit][subdir] = "contrib"
projects[term_reference_tree][subdir] = "contrib"

; Modules - content digestion
projects[feeds][subdir] = "contrib"
projects[feeds_tamper][subdir] = "contrib"

; Modules - advanced administration
projects[architecture][subdir] = "contrib"
projects[better_exposed_filters][subdir] = "contrib"
projects[custom_breadcrumbs][subdir] = "contrib"
projects[coffee][subdir] = "contrib"
projects[masquerade][subdir] = "contrib"
projects[menu_position][subdir] = "contrib"
projects[module_filter][subdir] = "contrib"
projects[token][subdir] = "contrib"
projects[views_field_view][subdir] = "contrib"
projects[views_datasource][subdir] = "contrib"

; Modules - services
projects[apachesolr][subdir] = "contrib"
projects[geocoder][subdir] = "contrib"
projects[geolocation][subdir] = "contrib"
projects[geophp][subdir] = "contrib"
projects[google_analytics][subdir] = "contrib"
projects[media_youtube][subdir] = "contrib"
projects[smtp][subdir] = "contrib"

; Modules - end user enhancements
projects[comment_goodness][subdir] = "contrib"
projects[ideal_comments][subdir] = "contrib"
projects[site_map][subdir] = "contrib"
projects[better_messages][subdir] = "contrib"

; Modules - custom
projects[better_find_content][download][type] = ""
projects[better_find_content][download][url] = ""
projects[better_find_content][type] = "module"
projects[better_find_content][subdir] = "features"

; +++++ Themes +++++
projects[] = "ember"
projects[] = "adminimal_theme"
projects[] = "zen"

; +++++ Libraries +++++
libraries[backbone][type] = "library"
libraries[backbone][download][type] = "get"
libraries[backbone][download][url] = "http://backbonejs.org/backbone-min.js"
libraries[backbone][directory_name] = "backbone"
libraries[backbone][destination] = "libraries"


libraries[ckeditor][type] = "library"
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.5.1/ckeditor_4.5.1_full.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[modernizr][type] = "library"
libraries[modernizr][download][type] = "git"
libraries[modernizr][download][tag] = v2.8.3
libraries[modernizr][download][url] = "https://github.com/Modernizr/Modernizr.git"
libraries[modernizr][directory_name] = "modernizr"
libraries[modernizr][destination] = "libraries"

libraries[underscore][type] = "library"
libraries[underscore][download][type] = "get"
libraries[underscore][download][url] = "http://underscorejs.org/underscore-min.js"
libraries[underscore][directory_name] = "underscore"
libraries[underscore][destination] = "libraries"

