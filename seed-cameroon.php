<?php
require_once('wp-load.php');

// Define the destination data
$destination_slug = 'cameroon';
$destination_title = 'Freight services UK to Cameroon';

// Intro Content from Screenshot
$destination_content = 'Shipping to Cameroon has never been easier, we provide competitive rates for door to port and door to door cargo service to Douala and Yaounde. If you are international student, relocating to Cameroon or do business in Cameroon we are here to take care of all your export needs from UK to Cameroon.';

// Bottom Description from Screenshot
$destination_description_bottom = 'Cameroon, on the Gulf of Guinea, is a Central African country of varied terrain and wildlife. Its inland capital, Yaoundé, and its biggest city, the seaport Douala, are transit points to ecotourism sites as well as beach resorts. The population of Cameroon is 27.2 million. Cameroon has riches in the form of untamed wildlife, imposing volcanic mountains and ancient tribal kingdoms.';

// Standard Images (Placeholders if specific ones don't exist)
// Assuming we might have these or use fallbacks. Using standard names.
$flag_image_path = 'Cameroon FLAG.png';
$map_image_path = 'Cameroon map.jpg';
// Use the container image if available, or finding one.
// The screenshot corresponds to the 'containerLoad' section image.

// Pricing Table (Primary: Airport to Airport)
// Data from screenshot:
// Country: Cameroon, City: Douala, Code: DLA
// +100kg: £6.50/kg, +500kg: £5.90/kg, +1000kg: £5.50/kg
// Handling: £50 per shipment
// +5kg is NOT in screenshot, so leaving empty to test dynamic hiding.
$pricing_table = array(
    'table_title' => 'AIRPORT TO AIRPORT',
    'table_description' => '
<ul class="list-none space-y-2">
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Up-to Douala Airport only</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Minimum weight charged is 100 kg</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Transit time 3-5 days <strong>Variable</strong></li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Destination charges may apply, such as taxes, airport charges etc...</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">This is the quickest and cheapest way to ship to Cameroon by air</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">We can arrange shipment collections from any UK address, please contact Us</li>
</ul>
',
    'row_1' => array(
        'country' => 'Cameroon',
        'city' => 'Douala',
        'airport_code' => 'DLA',
        'price_5kg' => '', // Empty to hide column
        'price_100kg' => '£6.50/kg',
        'price_500kg' => '£5.90/kg',
        'price_1000kg' => '£5.50/kg',
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

// Secondary Pricing Table
// The screenshot doesn't show a secondary table (like Ocean).
// Leaving empty or creating a placeholder if the structure requires it.
// Assuming only Primary for now based on "AIRPORT TO AIRPORT" table in image.
// If user has Ocean data they didn't show, I'll leave this blank/null.
$pricing_table_secondary = array(
    'table_title' => '',
    'table_description' => '',
    'row_1' => [],
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

// Bullet Points (Global)
// The screenshot doesn't show global bullets, only table bullets. 
// I will keep this empty.
$bullet_points = array(
    'point_1' => '',
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
$container_load = array(
    'title' => 'Full container load to Port of Douala, send us your requirements and we will revert with quote.',
    'description' => '', // Title seems to cover the description in the screenshot
    'image' => '', // Valid ID will be set if image found
    'whatsapp' => '+447375964786',
    'email' => 'info@directcargoexpress.com',
);

// Check if post exists
$args = array(
    'name' => $destination_slug,
    'post_type' => 'destination',
    'post_status' => 'publish',
    'numberposts' => 1
);
$query = new WP_Query($args);

if ($query->have_posts()) {
    $query->the_post();
    $post_id = get_the_ID();
    echo "Found Cameroon Post ID: " . $post_id . "\n";

    // Update Post Title and Content
    $post_data = array(
        'ID' => $post_id,
        'post_title' => $destination_title, // Map to Title
        'post_content' => $destination_content, // Map to Intro Content
    );
    wp_update_post($post_data);
    echo "Updated main post content.\n";

} else {
    // Create Post if it doesn't exist
    $post_data = array(
        'post_title' => $destination_title,
        'post_content' => $destination_content,
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_name' => $destination_slug,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created new Cameroon Post ID: " . $post_id . "\n";
}

// Handle Images (Flag and Map - Basic Placeholder Logic)
// In a real scenario we'd upload these. checking if we can reuse known IDs or if filenames match.
// For now, I'll attempt to find them by name.
function get_attachment_id_by_name($filename)
{
    global $wpdb;
    $id = $wpdb->get_var($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE post_title LIKE %s AND post_type = 'attachment'", '%' . $wpdb->esc_like(pathinfo($filename, PATHINFO_FILENAME)) . '%'));
    return $id;
}

// Flag
$flag_id = get_attachment_id_by_name($flag_image_path);
if ($flag_id) {
    update_field('destination_flag', $flag_id, $post_id);
    echo "Set Flag ID: $flag_id\n";
}

// Map
$map_id = get_attachment_id_by_name($map_image_path);
if ($map_id) {
    update_field('destination_map', $map_id, $post_id);
    echo "Set Map ID: $map_id\n";
}

// ACF Fields Update
update_field('destination_description', $destination_description_bottom, $post_id);
update_field('pricing_table', $pricing_table, $post_id);
update_field('pricing_table_secondary', $pricing_table_secondary, $post_id);
update_field('bullet_points', $bullet_points, $post_id);
update_field('container_load', $container_load, $post_id);

echo "Successfully updated ACF fields for Cameroon.\n";
