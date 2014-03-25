<?php

global $project;
$project = 'mysite';

global $database;
$database = 'police';

require_once("conf/ConfigureFromEnv.php");
MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('police');

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
Requirements::set_combined_files_enabled(false); 
FulltextSearchable::enable();