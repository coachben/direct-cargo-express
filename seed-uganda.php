<?php
require_once('wp-load.php');

// 1. Find the Destination Post
$args = array(
    'name' => 'uganda',
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$posts = get_posts($args);

if (!$posts) {
    echo "Uganda destination page not found. Creating it...\n";
    $post_data = array(
        'post_title' => 'Uganda',
        'post_name' => 'uganda',
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_author' => 1,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created Uganda Post ID: " . $post_id . "\n";
} else {
    $post_id = $posts[0]->ID;
    echo "Found Uganda Post ID: " . $post_id . "\n";
}

// 2. Update Post Content (Main Text)
$main_content = '
<p>We provide excellent shipping service to Uganda, air cargo from just £6.50 per kg and sea cargo £3.50 per kg. Our shipping service is all inclusive of shipping, destination customs clearance and taxes. Simply collect from our Kampala office duty and delivery within Kampala. Air freight is weekly, departure every Thursday, estimate time of delivery to Kampala is 7-10 days variable.</p>
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
$flag_id = get_or_register_image('destination/Uganda FLAG.png');
$map_id = get_or_register_image('destination/Uganda map.jpg');
$container_img_id = get_or_register_image('container-load.jpg');

// Fallback search
if (!$flag_id)
    $flag_id = get_or_register_image('Uganda FLAG.png');
if (!$map_id)
    $map_id = get_or_register_image('Uganda map.jpg');


// 5. Prepare ACF Data

// Pricing Table (Air Freight)
// Using WEEKLY AIR FREIGHT rates from screenshot
// Screenshot columns: +5 kg, +100 kg, +500 kg, +1000 kg.
// Mapping to standard keys: 100->100, 500->500, 1000->1000. (+5kg rate mentioned in bullet/title)
$pricing_table = array(
    'table_title' => 'WEEKLY AIR FREIGHT',
    'table_description' => '
<ul class="list-none space-y-2">
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">DDP-Delivered Duty Paid</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">All origin charges Included</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">All dest charges Included</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Simply Collect from Tirupati Mazima Mall</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Minimum weight charged is 5 kg</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Transit time 7-10 days <strong>Variable</strong></li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">This is the quickest and best method to ship to Uganda. All destination charges taken care off</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">We can arrange shipment collections from any UK address, please contact Us</li>
</ul>
',
    'row_1' => array(
        'country' => 'Uganda',
        'city' => 'Kampala',
        'airport_code' => '',
        'price_5kg' => '£6.50/kg',
        'price_100kg' => '£6.50/kg',
        'price_500kg' => '£6.50/kg',
        'price_1000kg' => '£6.50/kg',
        'handling_fee' => '£15 per shipment',
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

// Secondary Pricing Table (Ocean Freight)
$pricing_table_secondary = array(
    'table_title' => 'MONTHLY OCEAN FREIGHT',
    'table_description' => '
<ul class="list-none space-y-2">
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">DDP-Delivered Duty Paid</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">All origin charges Included</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">All dest charges Included</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Simply Collect from Tirupati Mazima Mall</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Minimum weight charged is 5 kg</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Transit time 8-10 weeks <strong>Variable</strong></li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">This is the quickest and best method to ship to Uganda. All destination charges taken care off</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">We can arrange shipment collections from any UK address, please contact Us</li>
</ul>
',
    'row_1' => array(
        'country' => 'Uganda',
        'city' => 'Kampala',
        'airport_code' => '',
        'price_5kg' => '£3.50/kg',
        'price_100kg' => '£3.50/kg',
        'price_500kg' => '£3.50/kg',
        'price_1000kg' => '£3.50/kg',
        'handling_fee' => '£15 per shipment',
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

// Bullet Points - No longer used globally as they are now per-table, but verified if frontend still renders global ones
// Keeping some general info or making it empty to avoid duplication if the frontend still renders it.
// The frontend still renders bulletPointsArray if length > 0.
// I'll put the Collection office address here as it's common (or was in the bullets) but not in the table text in the screenshot?
// Actually the screenshot DOES NOT show the address in the bullets below the table.
// I will put the address and contact info in bullet points as general info, or just leave it empty if the user wants strictly what's in the image.
// User said "i dont see the buttlet points after each table".
// I'll keep the Collection office address in global bullets so it's not lost, but remove the duplicated DDP stuff.
$bullet_points = array(
    'point_1' => 'UGANDA COLLECTION OFFICE: Unit 38, Tirupati Mazima Mall, 149 Ggaba Road, Kabalagala',
    'point_2' => '',
    'point_3' => '',
    'point_4' => '',
    'point_5' => '',
    'point_6' => '',
    'point_7' => '',
    'point_8' => '',
    'point_9' => '',
    'point_10' => '',
);

// Container Load
// Screenshot for "MONTHLY OCEAN FREIGHT" is different from Container Load usually.
// But usually Container Field is for the "Full container load" part. Screnshot 1 has "MONTHLY OCEAN FREIGHT" table.
// Screenshot 2 doesn't have a "Full container load" banner image visible, but user provided content for "Uganda" specifically.
// I will keep the standard "Full container load" format but maybe incorporate the "Monthly Ocean Freight" logic?
// Wait, the "MONTHLY OCEAN FREIGHT" is just another service.
// I will update the Container Load section to generic or leave as standard logic if no specific "Full Container" text provided.
// Actually, I'll use the Contact info here.
$container_load = array(
    'title' => 'Full container load to Uganda, send us your requirements and we will revert with quote.',
    'description' => '',
    'image' => $container_img_id,
    'whatsapp' => '+256759072299', // From screenshot
    'email' => 'uganda@directcargoexpress.com', // From screenshot
);

// About Description
$destination_description = '
<p>Uganda is in the African Great Lakes region. Uganda also lies within the Nile basin and has a varied but generally a modified equatorial climate. It has a population of around 49 million, of which 8.5 million live in the capital and largest city of Kampala. Uganda\'s outstanding features are the largest freshwater lake on the continent, the source of the longest river, the strongest waterfall, the largest number of primates, and the highest number of mountain gorillas worldwide.</p>
';

// 6. Update ACF Fields
if (function_exists('update_field')) {
    update_field('pricing_table', $pricing_table, $post_id);
    update_field('pricing_table_secondary', $pricing_table_secondary, $post_id);
    update_field('bullet_points', $bullet_points, $post_id);
    update_field('container_load', $container_load, $post_id);
    update_field('destination_description', $destination_description, $post_id);

    // Update Flag and Map
    update_field('destination_flag', $flag_id, $post_id);
    update_field('destination_map', $map_id, $post_id);

    echo "Successfully updated ACF fields for Uganda.\n";
} else {
    echo "Error: ACF update_field function not found.\n";
}
