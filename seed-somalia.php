<?php
require_once('wp-load.php');

// 1. Find the Somalia Destination Post
$args = array(
    'name' => 'somalia',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if (!$posts) {
    echo "Somalia destination page not found. Creating it...\n";
    $post_data = array(
        'post_title' => 'Somalia',
        'post_name' => 'somalia',
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_author' => 1,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created Somalia Post ID: " . $post_id . "\n";
} else {
    $post_id = $posts[0]->ID;
    echo "Found Somalia Post ID: " . $post_id . "\n";
}

// 2. Update Post Content (Main Text)
// Note: Corrected "Angola" to "Somalia" based on context.
$main_content = '
<p>Shipping to Somalia has never been easier, we can deliver your shipment to Mogadishu airport at £6.95 per kg above 100 kg. If you are international student, relocating to Somalia or do business in Somalia we are here to take care of all your export needs from UK to Somalia.</p>
';

$updated_post = array(
    'ID' => $post_id,
    'post_content' => $main_content,
);
wp_update_post($updated_post);
echo "Updated main post content.\n";


// 3. Helper to Get/Register Image
function get_or_register_image($filename)
{
    global $wpdb;
    $guid_search = '%' . $filename . '%';
    $attachment = $wpdb->get_col($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE guid LIKE %s AND post_type='attachment'", $guid_search));

    if ($attachment) {
        return $attachment[0];
    } else {
        // Attempt to find file in uploads/destination
        $upload_dir = wp_upload_dir();
        // Check common locations
        $possible_paths = [
            $upload_dir['basedir'] . '/' . $filename,
            $upload_dir['basedir'] . '/destination/' . basename($filename),
        ];

        $file_path = false;
        foreach ($possible_paths as $path) {
            if (file_exists($path)) {
                $file_path = $path;
                break;
            }
        }

        if ($file_path) {
            $filetype = wp_check_filetype(basename($file_path), null);
            $attachment = array(
                'guid' => $upload_dir['baseurl'] . '/destination/' . basename($file_path),
                'post_mime_type' => $filetype['type'],
                'post_title' => preg_replace('/\.[^.]+$/', '', basename($file_path)),
                'post_content' => '',
                'post_status' => 'inherit'
            );
            $attach_id = wp_insert_attachment($attachment, $file_path);
            require_once(ABSPATH . 'wp-admin/includes/image.php');
            $attach_data = wp_generate_attachment_metadata($attach_id, $file_path);
            wp_update_attachment_metadata($attach_id, $attach_data);
            echo "Registered image: " . basename($filename) . " (ID: $attach_id)\n";
            return $attach_id;
        } else {
            echo "Error: Image file not found for " . $filename . "\n";
            return 0;
        }
    }
}

// 4. Prepare Images
// Note: Assuming these files exist or will be created/uploaded correctly.
$flag_id = get_or_register_image('destination/Somali FLAG.png');
$map_id = get_or_register_image('destination/Somalia MAP.jpg');
$container_img_id = get_or_register_image('container-load.jpg');

// Fallback search
if (!$flag_id)
    $flag_id = get_or_register_image('Somali FLAG.png');
if (!$map_id)
    $map_id = get_or_register_image('Somalia MAP.jpg');


// 5. Prepare ACF Data

// Pricing Table
// Mapping based on headers: +75kg -> Col 3, +100kg -> Col 4, +500kg -> Col 5
$pricing_table = array(
    'row_1' => array(
        'country' => 'Somalia',
        'city' => 'Mogadishu',
        'airport_code' => 'MGQ',
        'price_100kg' => '£7.35/kg', // +75 kg
        'price_500kg' => '£5.90/kg', // +100 kg
        'price_1000kg' => '£5.25/kg', // +500 kg
        'handling_fee' => '£50 per shipment',
    ),
    'row_2' => [],
    'row_3' => [],
    'row_4' => [],
    'row_5' => [],
    'row_6' => [],
    'row_7' => [],
    'row_8' => [],
    'row_9' => [],
    'row_10' => [],
);

// Bullet Points
$bullet_points = array(
    'point_1' => 'Up-to Mogadishu Airport',
    'point_2' => 'Minimum weight charged is 75 kg',
    'point_3' => 'Transit time 3-5 days Variable',
    'point_4' => 'Destination charges may apply, such as taxes, airport charges etc...',
    'point_5' => 'This is the quickest and cheapest way to ship to Mogadishu by air',
    'point_6' => 'We can arrange shipment collections from any UK address, please contact Us',
    'point_7' => '',
    'point_8' => '',
    'point_9' => '',
    'point_10' => '',
);

// Container Load
$container_load = array(
    'title' => 'Full container load to Port of Mogadishu, send us your requirements and we will revert with quote.',
    'description' => '',
    'image' => $container_img_id,
    'whatsapp' => '+447375964786',
    'email' => 'info@directcargoexpress.com',
);

// About Description
$destination_description = '
<p>Located on the easternmost tip of Africa, Somalia occupies an area of 637,657 sq. km with population of 15,442,905. Somalia borders the three nations of, Kenya, Ethiopia, and Djibouti. Somalia has the longest coastline in mainland Africa stretching 3,025 km and is shaped like the number 7. Somalia is home to Africa’s earliest known and most pristine rock art at Laas Geel. Although centuries have passed since artists swirled red and white paint on the cliffs of northern Somalia, the paintings still retain their fresh brilliance. These paintings depict an insight into life in Somalia over 5,000 years ago, detailing antelopes, cattle, giraffes, and hunters carrying bows and arrows.</p>
';

// 6. Update ACF Fields
if (function_exists('update_field')) {
    update_field('pricing_table', $pricing_table, $post_id);
    update_field('bullet_points', $bullet_points, $post_id);
    update_field('container_load', $container_load, $post_id);
    update_field('destination_description', $destination_description, $post_id);

    // Update Flag and Map
    update_field('destination_flag', $flag_id, $post_id);
    update_field('destination_map', $map_id, $post_id);

    echo "Successfully updated ACF fields for Somalia.\n";
} else {
    echo "Error: ACF update_field function not found.\n";
}
