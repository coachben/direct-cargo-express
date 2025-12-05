<?php
require_once('wp-load.php');

// 1. Find or Create Homepage
$homepage_slug = 'home';
$homepage = get_page_by_path($homepage_slug);

if (!$homepage) {
    $homepage_id = wp_insert_post(array(
        'post_title' => 'Home',
        'post_name' => $homepage_slug,
        'post_content' => '',
        'post_status' => 'publish',
        'post_type' => 'page',
    ));
    echo "Created Homepage with ID: $homepage_id\n";
} else {
    $homepage_id = $homepage->ID;
    echo "Found Homepage with ID: $homepage_id\n";
}

// Set as Front Page
update_option('show_on_front', 'page');
update_option('page_on_front', $homepage_id);

// 2. Prepare Homepage ACF Data
$hero_data = array(
    'hero_title' => 'Global Logistics Solutions',
    'hero_subtitle' => 'Reliable, fast, and affordable shipping services worldwide. We connect your business to the world.',
    'hero_cta_text' => 'Get a Quote',
    'hero_cta_link' => '#contact',
    // Image will be handled below
);

$about_data = array(
    'about_title' => 'About Direct Cargo',
    'about_content' => 'Direct Cargo Express is a leading logistics provider specializing in air, sea, and road freight. With years of experience, we ensure your cargo reaches its destination safely and on time.',
    'about_phone' => '+44 7375 964 786',
);

// Handle Images (Helper function)
function get_or_create_image($filename, $url)
{
    global $wpdb;
    $image_id = $wpdb->get_var($wpdb->prepare("SELECT ID FROM $wpdb->posts WHERE guid LIKE %s AND post_type='attachment'", '%' . $filename . '%'));

    if ($image_id)
        return $image_id;

    // If not found, try to download (mocking this part or using local if available)
    // For now, let's assume we use placeholders or existing images if possible
    // Or just return 0 if we can't create it easily without a real file
    return 0;
}

// Update Homepage Fields
if (function_exists('update_field')) {
    update_field('hero_title', $hero_data['hero_title'], $homepage_id);
    update_field('hero_subtitle', $hero_data['hero_subtitle'], $homepage_id);
    update_field('hero_cta_text', $hero_data['hero_cta_text'], $homepage_id);
    update_field('hero_cta_link', $hero_data['hero_cta_link'], $homepage_id);

    update_field('about_title', $about_data['about_title'], $homepage_id);
    update_field('about_content', $about_data['about_content'], $homepage_id);
    update_field('about_phone', $about_data['about_phone'], $homepage_id);

    echo "Updated Homepage ACF fields.\n";
}

// 3. Create Services
$services = [
    [
        'title' => 'Air Freight',
        'desc' => 'Fast and reliable air freight services for time-sensitive cargo.',
        'icon' => 'fa-plane'
    ],
    [
        'title' => 'Sea Freight',
        'desc' => 'Cost-effective ocean freight solutions for large shipments.',
        'icon' => 'fa-ship'
    ],
    [
        'title' => 'Road Freight',
        'desc' => 'Efficient road transport across the UK and Europe.',
        'icon' => 'fa-truck'
    ]
];

foreach ($services as $service) {
    $existing = get_page_by_title($service['title'], OBJECT, 'service');

    if (!$existing) {
        $service_id = wp_insert_post(array(
            'post_title' => $service['title'],
            'post_status' => 'publish',
            'post_type' => 'service',
        ));
        echo "Created Service: {$service['title']} (ID: $service_id)\n";
    } else {
        $service_id = $existing->ID;
        echo "Found Service: {$service['title']} (ID: $service_id)\n";
    }

    if (function_exists('update_field')) {
        update_field('service_icon', $service['icon'], $service_id);
        update_field('service_short_desc', $service['desc'], $service_id);
    }
}

echo "Seeder completed.\n";
