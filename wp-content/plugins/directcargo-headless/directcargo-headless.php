<?php
/**
 * Plugin Name: Direct Cargo Headless Config
 * Description: Registers Custom Post Types and ACF Fields for the Headless setup.
 * Version: 1.0.0
 * Author: Antigravity
 */

if (!defined('ABSPATH')) {
    exit;
}

add_action('init', 'dce_register_post_types');
function dce_register_post_types()
{
    register_post_type('service', [
        'label' => 'Services',
        'public' => true,
        'show_in_graphql' => true,
        'graphql_single_name' => 'service',
        'graphql_plural_name' => 'services',
        'supports' => ['title', 'editor', 'thumbnail', 'custom-fields'],
        'menu_icon' => 'dashicons-hammer',
    ]);

    register_post_type('destination', [
        'label' => 'Destinations',
        'public' => true,
        'show_in_graphql' => true,
        'graphql_single_name' => 'destination',
        'graphql_plural_name' => 'destinations',
        'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
        'menu_icon' => 'dashicons-flag',
    ]);
}

if (function_exists('acf_add_local_field_group')):

    // Homepage Fields
    acf_add_local_field_group(array(
        'key' => 'group_homepage',
        'title' => 'Homepage Fields',
        'fields' => array(
            // Hero Section
            array(
                'key' => 'field_hero_tab',
                'label' => 'Hero Section',
                'type' => 'tab',
            ),
            array(
                'key' => 'field_hero_title',
                'label' => 'Hero Title',
                'name' => 'hero_title',
                'type' => 'text',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_hero_subtitle',
                'label' => 'Hero Subtitle',
                'name' => 'hero_subtitle',
                'type' => 'textarea',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_hero_bg_image',
                'label' => 'Background Image',
                'name' => 'hero_bg_image',
                'type' => 'image',
                'return_format' => 'url',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_hero_cta_text',
                'label' => 'CTA Text',
                'name' => 'hero_cta_text',
                'type' => 'text',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_hero_cta_link',
                'label' => 'CTA Link',
                'name' => 'hero_cta_link',
                'type' => 'text',
                'show_in_graphql' => 1,
            ),

            // About Section
            array(
                'key' => 'field_about_tab',
                'label' => 'About Section',
                'type' => 'tab',
            ),
            array(
                'key' => 'field_about_title',
                'label' => 'About Title',
                'name' => 'about_title',
                'type' => 'text',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_about_content',
                'label' => 'About Content',
                'name' => 'about_content',
                'type' => 'wysiwyg',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_about_image',
                'label' => 'About Image',
                'name' => 'about_image',
                'type' => 'image',
                'return_format' => 'url',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_about_phone',
                'label' => 'Phone Number',
                'name' => 'about_phone',
                'type' => 'text',
                'show_in_graphql' => 1,
            ),
        ),
        'location' => array(
            array(
                array(
                    'param' => 'page_type',
                    'operator' => '==',
                    'value' => 'front_page',
                ),
            ),
        ),
        'show_in_graphql' => 1,
        'graphql_field_name' => 'homepageFields',
        'map_graphql_types_from_location_rules' => 1,
    ));

    // Service Fields
    acf_add_local_field_group(array(
        'key' => 'group_service',
        'title' => 'Service Details',
        'fields' => array(
            array(
                'key' => 'field_service_icon',
                'label' => 'Icon Class (FontAwesome)',
                'name' => 'service_icon',
                'type' => 'text',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_service_short_desc',
                'label' => 'Short Description',
                'name' => 'service_short_desc',
                'type' => 'textarea',
                'show_in_graphql' => 1,
            ),
        ),
        'location' => array(
            array(
                array(
                    'param' => 'post_type',
                    'operator' => '==',
                    'value' => 'service',
                ),
            ),
        ),
        'show_in_graphql' => 1,
        'graphql_field_name' => 'serviceFields',
        'map_graphql_types_from_location_rules' => 1,
    ));

    // Destination Fields
    acf_add_local_field_group(array(
        'key' => 'group_destination',
        'title' => 'Destination Details',
        'fields' => array(
            array(
                'key' => 'field_destination_flag',
                'label' => 'Country Flag',
                'name' => 'destination_flag',
                'type' => 'image',
                'return_format' => 'url',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_destination_map',
                'label' => 'Map Image',
                'name' => 'destination_map',
                'type' => 'image',
                'return_format' => 'url',
                'show_in_graphql' => 1,
            ),
            array(
                'key' => 'field_destination_description',
                'label' => 'Description',
                'name' => 'destination_description',
                'type' => 'wysiwyg',
                'show_in_graphql' => 1,
            ),
            // Pricing Table
            array(
                'key' => 'field_pricing_table',
                'label' => 'Pricing Table',
                'name' => 'pricing_table',
                'type' => 'repeater',
                'show_in_graphql' => 1,
                'sub_fields' => array(
                    array(
                        'key' => 'field_pricing_country',
                        'label' => 'Country',
                        'name' => 'country',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_pricing_city',
                        'label' => 'City',
                        'name' => 'city',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_pricing_airport_code',
                        'label' => 'Airport Code',
                        'name' => 'airport_code',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_pricing_100kg',
                        'label' => '+100 kg',
                        'name' => 'price_100kg',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_pricing_500kg',
                        'label' => '+500 kg',
                        'name' => 'price_500kg',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_pricing_1000kg',
                        'label' => '+1000 kg',
                        'name' => 'price_1000kg',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_pricing_handling',
                        'label' => 'Handling & Documentation',
                        'name' => 'handling_fee',
                        'type' => 'text',
                    ),
                ),
            ),
            // Bullet Points
            array(
                'key' => 'field_bullet_points',
                'label' => 'Bullet Points',
                'name' => 'bullet_points',
                'type' => 'repeater',
                'show_in_graphql' => 1,
                'sub_fields' => array(
                    array(
                        'key' => 'field_bullet_point_text',
                        'label' => 'Point',
                        'name' => 'point',
                        'type' => 'text',
                    ),
                ),
            ),
            // Container Load Section
            array(
                'key' => 'field_container_load',
                'label' => 'Container Load Section',
                'name' => 'container_load',
                'type' => 'group',
                'show_in_graphql' => 1,
                'sub_fields' => array(
                    array(
                        'key' => 'field_container_title',
                        'label' => 'Title',
                        'name' => 'title',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_container_description',
                        'label' => 'Description',
                        'name' => 'description',
                        'type' => 'textarea',
                    ),
                    array(
                        'key' => 'field_container_image',
                        'label' => 'Image',
                        'name' => 'image',
                        'type' => 'image',
                        'return_format' => 'url',
                    ),
                    array(
                        'key' => 'field_container_whatsapp',
                        'label' => 'WhatsApp',
                        'name' => 'whatsapp',
                        'type' => 'text',
                    ),
                    array(
                        'key' => 'field_container_email',
                        'label' => 'Email',
                        'name' => 'email',
                        'type' => 'text',
                    ),
                ),
            ),
        ),
        'location' => array(
            array(
                array(
                    'param' => 'post_type',
                    'operator' => '==',
                    'value' => 'destination',
                ),
            ),
        ),
        'show_in_graphql' => 1,
        'graphql_field_name' => 'destinationFields',
        'map_graphql_types_from_location_rules' => 1,
    ));

endif;
