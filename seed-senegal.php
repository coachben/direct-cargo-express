<?php
require_once('wp-load.php');

// 1. Find the Senegal Destination Post
$args = array(
    'name' => 'senegal',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if (!$posts) {
    echo "Senegal destination page not found. Creating it...\n";
    $post_data = array(
        'post_title' => 'Senegal',
        'post_name' => 'senegal',
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_author' => 1,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created Senegal Post ID: " . $post_id . "\n";
} else {
    $post_id = $posts[0]->ID;
    echo "Found Senegal Post ID: " . $post_id . "\n";
}

// 2. Update Post Content (Main Text)
$main_content = '
<p>Shipping to Senegal has never been easier, we can deliver your shipment to Dakar airport at £6.95 per kg above 100 kg. If you are international student, relocating to Senegal or do business in Senegal we are here to take care of all your export needs from UK to Senegal.</p>
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
$flag_id = get_or_register_image('destination/Senegal FLAG.png');
$map_id = get_or_register_image('destination/Senegal MAP.png');
$container_img_id = get_or_register_image('container-load.jpg');
// Fallback if full path used in find_by_name
if (!$flag_id)
    $flag_id = get_or_register_image('Senegal FLAG.png');
if (!$map_id)
    $map_id = get_or_register_image('Senegal MAP.png');


// 5. Prepare ACF Data

// Pricing Table
$pricing_table = array(
    'row_1' => array(
        'city' => 'Dakar',
        'airport_code' => 'DSS',
        // Mapping to new logical columns: +75, +100, +500
        'price_100kg' => '£7.50/kg',   // Col 3: +75 kg
        'price_500kg' => '£5.65/kg',   // Col 4: +100 kg
        'price_1000kg' => '£4.95/kg',  // Col 5: +500 kg
        'handling_fee' => '£50 per shipment', // Col 6: Documentation
    ),
    // Empty rows to clear previous data if any
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
    'point_1' => 'Up-to Dakar Interational Airport',
    'point_2' => 'Minimum weight charged is 75 kg',
    'point_3' => 'Transit time 3-5 days Variable',
    'point_4' => 'Destination charges may apply, such as taxes, airport charges etc...',
    'point_5' => 'This is the quickest and cheapest way to ship to Senegal by air',
    'point_6' => 'We can arrange shipment collections from any UK address, please contact Us',
    'point_7' => '',
    'point_8' => '',
    'point_9' => '',
    'point_10' => '',
);

// Container Load
$container_load = array(
    'title' => 'Full container load to Port of Dakar, send us your requirements and we will revert with quote.',
    'description' => '',
    'image' => $container_img_id,
    'whatsapp' => '+447375964786', // Keeping same as Angola unless specified otherwise? Image cut off contact. Assuming same generic company contact.
    'email' => 'info@directcargoexpress.com',
);

// About Description
$destination_description = '
<p>Senegal is a West African country that shares its northern border with Mauritania, its eastern border with Mali, its southern border with Guinea and Guinea-Bissau, and its western border with the Atlantic Ocean. To the northwest, it surrounds the small country of The Gambia, creating an enclave around the Gambia River. Senegal spans an area of approximately 196,712 km2 with population of 16,296,364.</p>
<p>Senegal is a cultural hub for the continent of Africa. Senegal is a Mecca with robust arts, rich traditions, historic landmarks, and remarkable natural landscapes. Home to seven UNESCO World Heritage Sites and six national parks, Senegal is a country full of one-of-a-kind experiences.</p>
';

// 6. Update ACF Fields
if (function_exists('update_field')) {
    update_field('pricing_table', $pricing_table, $post_id);
    update_field('bullet_points', $bullet_points, $post_id);
    update_field('container_load', $container_load, $post_id);
    update_field('destination_description', $destination_description, $post_id); // Ensure this field key exists or registered

    // Update Flag and Map
    // Field names based on GraphQL query: destinationFlag, destinationMap -> likely 'destination_flag', 'destination_map' key names
    update_field('destination_flag', $flag_id, $post_id);
    update_field('destination_map', $map_id, $post_id);

    echo "Successfully updated ACF fields for Senegal.\n";
} else {
    echo "Error: ACF update_field function not found.\n";
}
