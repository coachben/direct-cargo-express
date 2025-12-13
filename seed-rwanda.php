<?php
require_once('wp-load.php');

// 1. Find the Destination Post
$args = array(
    'name' => 'rwanda',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if (!$posts) {
    echo "Rwanda destination page not found. Creating it...\n";
    $post_data = array(
        'post_title' => 'Rwanda',
        'post_name' => 'rwanda',
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_author' => 1,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created Rwanda Post ID: " . $post_id . "\n";
} else {
    $post_id = $posts[0]->ID;
    echo "Found Rwanda Post ID: " . $post_id . "\n";
}

// 2. Update Post Content (Main Text)
$main_content = '
<p>Shipping to Rwanda has never been easier, we provide competitive rates for door to port and door to door cargo service to Kigali. If you are international student, relocating to Rwanda or do business in Rwanda we are here to take care of all your export needs from UK to Rwanda.</p>
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
$flag_id = get_or_register_image('destination/Rwanda FLAG.png');
$map_id = get_or_register_image('destination/Rwanda map.jpeg');
$container_img_id = get_or_register_image('container-load.jpg');

// Fallback search
if (!$flag_id)
    $flag_id = get_or_register_image('Rwanda FLAG.png');
if (!$map_id)
    $map_id = get_or_register_image('Rwanda map.jpeg');


// 5. Prepare ACF Data

// Pricing Table
$pricing_table = array(
    'row_1' => array(
        'country' => 'Rwanda',
        'city' => 'Kigali',
        'airport_code' => 'KGL',
        'price_100kg' => '£3.25/kg', // +75kg col
        'price_500kg' => '£3.00/kg', // +100kg col (Screenshot says £3./kg)
        'price_1000kg' => '£2.85/kg', // +500kg col
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
    'point_1' => 'Up-to Kigali Airport',
    'point_2' => 'Minimum weight charged is 75 kg',
    'point_3' => 'Transit time 3-5 days Variable',
    'point_4' => 'Destination charges may apply, such as taxes, airport charges etc...',
    'point_5' => 'This is the quickest and cheapest way to ship to Rwanda by air',
    'point_6' => 'We can arrange shipment collections from any UK address, please contact Us',
    'point_7' => '',
    'point_8' => '',
    'point_9' => '',
    'point_10' => '',
);

// Container Load
$container_load = array(
    'title' => 'Full container load to Masaka Inland Container Depot, send us your requirements and we will revert with quote.',
    'description' => '',
    'image' => $container_img_id,
    'whatsapp' => '+447375964786',
    'email' => 'info@directcargoexpress.com',
);

// About Description
$destination_description = '
<p>Rwanda is a landlocked country in the Great Rift Valley of Central Africa, where the African Great Lakes region and Southeast Africa converge. Located a few degrees south of the Equator,Known as the land of a thousand hills, It is blessed with extraordinary biodiversity, with incredible wildlife living throughout its volcanoes, montane rainforest and sweeping plains. The capital of Rwanda is Kigali and Rwandan population is 13.46 million</p>
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

    echo "Successfully updated ACF fields for Rwanda.\n";
} else {
    echo "Error: ACF update_field function not found.\n";
}
