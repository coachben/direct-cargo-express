<?php
require_once __DIR__ . '/wp-load.php';

$destinations = [
    'Angola' => 'Africa',
    'Nigeria' => 'Africa',
    'Kenya' => 'Africa',
    'UK' => 'Europe',
    'USA' => 'Americas',
    'China' => 'Asia',
    'Dubai' => 'Middle East',
];

foreach ($destinations as $title => $region) {
    $page = get_page_by_title($title, OBJECT, 'destination');

    if (!$page) {
        // Create if not exists for testing
        $post_id = wp_insert_post([
            'post_title' => $title,
            'post_type' => 'destination',
            'post_status' => 'publish',
        ]);
        echo "Created Destination: $title (ID: $post_id)\n";
    } else {
        $post_id = $page->ID;
        echo "Found Destination: $title (ID: $post_id)\n";
    }

    update_field('destination_region', $region, $post_id);
    echo "Updated Region for $title to $region\n";
}

echo "Region seeding completed.\n";
