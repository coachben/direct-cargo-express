<?php
require_once('wp-load.php');

// 1. Find the Angola Destination Post
$args = array(
    'name' => 'angola',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if (!$posts) {
    die("Error: Angola destination page not found.\n");
}

$post_id = $posts[0]->ID;
echo "Found Angola Post ID: " . $post_id . "\n";

// 2. Prepare Data

// Pricing Table
$pricing_table = array(
    array(
        'country' => 'Angola',
        'city' => 'Luanda',
        'airport_code' => 'LAD',
        'price_100kg' => '£6.50/kg',
        'price_500kg' => '£5.90/kg',
        'price_1000kg' => '£5.50/kg',
        'handling_fee' => '£50 per shipment',
    )
);

// Bullet Points
$bullet_points = array(
    array('point' => 'Up-to Luanda Airport only'),
    array('point' => 'Minimum weight charged is 100 kg'),
    array('point' => 'Transit time 3-5 days Variable'),
    array('point' => 'Destination charges may apply, such as taxes, airport charges etc...'),
    array('point' => 'This is the quickest and cheapest way to ship to Angola by air'),
    array('point' => 'We can arrange shipment collections from any UK address, please contact Us'),
);

// Container Load Image
// Try to find the image ID for 'container-load.jpg'
$image_id = 0;
$image_name = 'container-load.jpg';
global $wpdb;
$attachment = $wpdb->get_col($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE guid LIKE '%%%s%%' AND post_type='attachment'", $image_name));

if ($attachment) {
    $image_id = $attachment[0];
    echo "Found Container Image ID: " . $image_id . "\n";
} else {
    echo "Container image not found in DB. Attempting to register it...\n";
    $filename = 'destination/container-load.jpg'; // Relative to uploads dir
    $file_path = '/Users/benardomondi/Local Sites/directcargo/app/public/wp-content/uploads/' . $filename;

    if (file_exists($file_path)) {
        $filetype = wp_check_filetype(basename($file_path), null);
        $attachment = array(
            'guid' => 'http://directcargo.local/wp-content/uploads/' . $filename,
            'post_mime_type' => $filetype['type'],
            'post_title' => preg_replace('/\.[^.]+$/', '', basename($file_path)),
            'post_content' => '',
            'post_status' => 'inherit'
        );
        $image_id = wp_insert_attachment($attachment, $file_path);
        require_once(ABSPATH . 'wp-admin/includes/image.php');
        $attach_data = wp_generate_attachment_metadata($image_id, $file_path);
        wp_update_attachment_metadata($image_id, $attach_data);
        echo "Created Attachment ID: " . $image_id . "\n";
    } else {
        echo "Error: File not found at " . $file_path . "\n";
    }
}

// Container Load
$container_load = array(
    'title' => 'Full container load to Port of Luanda, send us your requirements and we will revert with quote.',
    'description' => '', // No description visible in screenshot separate from title
    'image' => $image_id,
    'whatsapp' => '+447375964786',
    'email' => 'info@directcargoexpress.com',
);

// 3. Update Fields
if (function_exists('update_field')) {
    update_field('pricing_table', $pricing_table, $post_id);
    update_field('bullet_points', $bullet_points, $post_id);
    update_field('container_load', $container_load, $post_id);
    echo "Successfully updated ACF fields for Angola.\n";
} else {
    echo "Error: ACF update_field function not found. Is ACF active?\n";
}
