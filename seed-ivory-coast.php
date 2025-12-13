<?php
require_once('wp-load.php');

// Define the destination data
$destination_slug = 'ivory-coast';
$destination_title = 'Freight services UK to Ivory Coast';

// Intro Content
$destination_content = 'Shipping to Côte d\'Ivoire has never been easier, we provide competitive rates for door to port and door to door cargo service to Abidjan. If you are international student, relocating to Ivory Coast or do business in Ethiopia we are here to take care of all your export needs from UK to Côte d\'Ivoire.';

// Bottom Description
$destination_description_bottom = 'Côte d\'Ivoire is a West African country with beach resorts, rainforests and a French-colonial legacy. Abidjan, on the Atlantic coast, is the country’s major urban center. Its modern landmarks include zigguratlike, concrete La Pyramide and St. Paul\'s Cathedral, a swooping structure tethered to a massive cross. North of the central business district, Banco National Park is a rainforest preserve with hiking trails. The population of Ivory Coast is 27.48 million and it\'s capital is Yamoussoukro.';

// Images
$flag_image_path = 'Ivory Coast FLAG.png';
$map_image_path = 'Ivory Coast map.jpg';

// Pricing Table
// Data: Ivory Coast, Abidjan, ABJ.
// +100 kg: £3.75/kg. +500 kg: £3.50/kg. +1000 kg: £3.25/kg.
// Handling: £50 per shipment.
$pricing_table = array(
    'table_title' => 'AIRPORT TO AIRPORT',
    'table_description' => '
<ul class="list-none space-y-2">
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Up-to Abidjan Airport only</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Minimum weight charged is 100 kg</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Transit time 3-5 days <strong>Variable</strong></li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">Destination charges may apply, such as taxes, airport charges etc...</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">This is the quickest and cheapest way to ship to Côte d\'Ivoire by air</li>
    <li class="relative pl-5 before:content-[\'•\'] before:absolute before:left-0 before:text-orange before:font-bold">We can arrange shipment collections from any UK address, please contact Us</li>
</ul>
',
    'row_1' => array(
        'country' => 'Ivory Coast',
        'city' => 'Abidjan',
        'airport_code' => 'ABJ',
        'price_5kg' => '',
        'price_100kg' => '£3.75/kg',
        'price_500kg' => '£3.50/kg',
        'price_1000kg' => '£3.25/kg',
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
    'title' => 'Full container load to port of Abidjan send us your requirements and we will revert with quote.',
    'description' => '',
    'image' => '',
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
    echo "Found Ivory Coast Post ID: " . $post_id . "\n";

    // Update Post Title and Content
    $post_data = array(
        'ID' => $post_id,
        'post_title' => $destination_title,
        'post_content' => $destination_content,
    );
    wp_update_post($post_data);
    echo "Updated main post content.\n";

} else {
    // Create Post
    $post_data = array(
        'post_title' => $destination_title,
        'post_content' => $destination_content,
        'post_status' => 'publish',
        'post_type' => 'destination',
        'post_name' => $destination_slug,
    );
    $post_id = wp_insert_post($post_data);
    echo "Created new Ivory Coast Post ID: " . $post_id . "\n";
}

function get_attachment_id_by_name($filename)
{
    global $wpdb;
    $id = $wpdb->get_var($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE post_title LIKE %s AND post_type = 'attachment'", '%' . $wpdb->esc_like(pathinfo($filename, PATHINFO_FILENAME)) . '%'));
    return $id;
}

$flag_id = get_attachment_id_by_name($flag_image_path);
if ($flag_id) {
    update_field('destination_flag', $flag_id, $post_id);
    echo "Set Flag ID: $flag_id\n";
}

$map_id = get_attachment_id_by_name($map_image_path);
if ($map_id) {
    update_field('destination_map', $map_id, $post_id);
    echo "Set Map ID: $map_id\n";
}

update_field('destination_description', $destination_description_bottom, $post_id);
update_field('pricing_table', $pricing_table, $post_id);
update_field('pricing_table_secondary', $pricing_table_secondary, $post_id);
update_field('bullet_points', $bullet_points, $post_id);
update_field('container_load', $container_load, $post_id);

echo "Successfully updated ACF fields for Ivory Coast.\n";
