<?php
require_once('wp-load.php');

$args = array(
    'name' => 'uganda',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if ($posts) {
    $post_id = $posts[0]->ID;
    echo "Found Uganda Post ID: $post_id\n";

    $pricing_table = get_field('pricing_table', $post_id);
    echo "Primary Pricing Table:\n";
    echo "Title: " . ($pricing_table['table_title'] ?? 'N/A') . "\n";
    echo "Description: " . ($pricing_table['table_description'] ?? 'N/A') . "\n";
    print_r($pricing_table['row_1']);

    $pricing_table_secondary = get_field('pricing_table_secondary', $post_id);
    echo "Secondary Pricing Table:\n";
    echo "Title: " . ($pricing_table_secondary['table_title'] ?? 'N/A') . "\n";
    echo "Description: " . ($pricing_table_secondary['table_description'] ?? 'N/A') . "\n";
    print_r($pricing_table_secondary['row_1']);

    $bullet_points = get_field('bullet_points', $post_id);
    echo "Bullet Points:\n";
    print_r($bullet_points);

} else {
    echo "Uganda post not found.\n";
}
