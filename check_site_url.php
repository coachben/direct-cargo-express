<?php
require_once('wp-load.php');

echo "Site URL: " . get_option('siteurl') . "\n";
echo "Home URL: " . get_option('home') . "\n";

if (defined('WP_HOME')) {
    echo "WP_HOME constant: " . WP_HOME . "\n";
} else {
    echo "WP_HOME constant: Not defined\n";
}

if (defined('WP_SITEURL')) {
    echo "WP_SITEURL constant: " . WP_SITEURL . "\n";
} else {
    echo "WP_SITEURL constant: Not defined\n";
}
