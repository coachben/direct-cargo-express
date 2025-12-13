<?php
require_once('wp-load.php');

// 1. Find the Tanzania Destination Post
$args = array(
    'name' => 'tanzania',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if (!$posts) {
    echo "Tanzania destination page not found. Creating it...\n";
    $post_data = array(
        'post_title' => 'Tanzania',
        'post_name' => 'tanzania',
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_author' => 1,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created Tanzania Post ID: " . $post_id . "\n";
} else {
    $post_id = $posts[0]->ID;
    echo "Found Tanzania Post ID: " . $post_id . "\n";
}

// 2. Update Post Content (Main Text)
// Note: Corrected "Angola" to "Tanzania" from source text errors as requested.
$main_content = '
<p>Shipping to Tanzania has never been easier, we can deliver your shipment to Dar Es Salaam at £4.80 per kg above 100 kg and Zanzibar at £3.80 per kg . If you are international student, relocating to Tanzania or do business in Tanzania we are here to take care of all your export needs from UK to Tanzania.</p>
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
$flag_id = get_or_register_image('destination/Tanzania FLAG.png');
$map_id = get_or_register_image('destination/Tanzania MAP.gif'); // Using .gif as seen in user's previous file list
$container_img_id = get_or_register_image('container-load.jpg');

// Fallback search
if (!$flag_id)
    $flag_id = get_or_register_image('Tanzania FLAG.png');
if (!$map_id)
    $map_id = get_or_register_image('Tanzania MAP.gif');


// 5. Prepare ACF Data

// Pricing Table
$pricing_table = array(
    'row_1' => array(
        'country' => 'Tanzania',
        'city' => 'Dar es Salaam',
        'airport_code' => 'DAR',
        'price_100kg' => '£4.80/kg', // +75kg col
        'price_500kg' => '£4.20/kg', // +100kg col
        'price_1000kg' => '£4/kg',   // +500kg col
        'handling_fee' => '£50 per shipment',
    ),
    'row_2' => array(
        'country' => 'Tanzania',
        'city' => 'Zanzibar',
        'airport_code' => 'ZNZ',
        'price_100kg' => '£3.80/kg',
        'price_500kg' => '£3.50/kg',
        'price_1000kg' => '£3.40/kg',
        'handling_fee' => '£50 per shipment',
    ),
    'row_3' => array(
        'country' => 'Tanzania',
        'city' => 'Mwanza',
        'airport_code' => 'MWZ',
        'price_100kg' => '£8.30/kg',
        'price_500kg' => '£6.75/kg',
        'price_1000kg' => '£5.50/kg',
        'handling_fee' => '£50 per shipment',
    ),
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
    'point_1' => 'Up-to Dar Es Salaam, Zanzibar and Mwanza Airports',
    'point_2' => 'Minimum weight charged is 75 kg',
    'point_3' => 'Transit time 3-5 days Variable',
    'point_4' => 'Destination charges may apply, such as taxes etc...',
    'point_5' => 'This is the quickest and cheapest way to ship to Tanzania by air',
    'point_6' => 'We can arrange shipment collections from any UK address, please contact Us',
    'point_7' => '',
    'point_8' => '',
    'point_9' => '',
    'point_10' => '',
);

// Container Load
$container_load = array(
    'title' => 'Full container load to Port of Dar Es Salaam or Zanzibar port, send us your requirements and we will revert with quote.',
    'description' => '',
    'image' => $container_img_id,
    'whatsapp' => '+447375964786',
    'email' => 'info@directcargoexpress.com',
);

// About Description
$destination_description = '
<p>Tanzania is situated in East Africa and encompasses an area of approximately 945,087 km2 with population of 58,005,463. It shares borders with eight countries: Kenya and Uganda to the north, Rwanda, Burundi, and the Democratic Republic of the Congo to the west, and Zambia, Malawi, and Mozambique to the south. The eastern border of Tanzania meets the Indian Ocean. Tanzania is known for the globally famous Mount Kilimanjaro, the highest peak in Africa at 5,895 m, Lake Tanganyika, which is the continent\'s deepest and the world\'s second deepest freshwater lake and of course the Serengeti National Park.</p>
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

    echo "Successfully updated ACF fields for Tanzania.\n";
} else {
    echo "Error: ACF update_field function not found.\n";
}
