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

add_action('acf/init', 'dce_register_acf_fields');
function dce_register_acf_fields()
{
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
                    'key' => 'field_hero_image',
                    'label' => 'Hero Image',
                    'name' => 'hero_image',
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

                // Services Section
                array(
                    'key' => 'field_services_tab',
                    'label' => 'Services Section',
                    'type' => 'tab',
                ),
                array(
                    'key' => 'field_services_title',
                    'label' => 'Services Title',
                    'name' => 'services_title',
                    'type' => 'text',
                    'show_in_graphql' => 1,
                ),
                array(
                    'key' => 'field_services_subtitle',
                    'label' => 'Services Subtitle',
                    'name' => 'services_subtitle',
                    'type' => 'textarea',
                    'show_in_graphql' => 1,
                ),

                // Why Choose Us
                array(
                    'key' => 'field_why_us_tab',
                    'label' => 'Why Choose Us',
                    'type' => 'tab',
                ),
                array(
                    'key' => 'field_why_us_title',
                    'label' => 'Section Title',
                    'name' => 'why_us_title',
                    'type' => 'text',
                    'show_in_graphql' => 1,
                ),
                array(
                    'key' => 'field_why_us_items',
                    'label' => 'Features',
                    'name' => 'why_us_items',
                    'type' => 'repeater',
                    'show_in_graphql' => 1,
                    'layout' => 'block',
                    'button_label' => 'Add Feature',
                    'collapsed' => 'field_feature_title',
                    'sub_fields' => array(
                        array(
                            'key' => 'field_feature_title',
                            'label' => 'Title',
                            'name' => 'title',
                            'type' => 'text',
                        ),
                        array(
                            'key' => 'field_feature_desc',
                            'label' => 'Description',
                            'name' => 'description',
                            'type' => 'textarea',
                        ),
                        array(
                            'key' => 'field_feature_icon',
                            'label' => 'Icon Name (Dashicon)',
                            'name' => 'icon',
                            'type' => 'text',
                        ),
                    ),
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
                    'label' => 'Service Icon',
                    'name' => 'service_icon',
                    'type' => 'text',
                    'instructions' => 'Enter a Dashicon class name (e.g., dashicons-airplane)',
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
            'key' => 'group_destination_v2',
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
                    'key' => 'field_destination_region',
                    'label' => 'Region',
                    'name' => 'destination_region',
                    'type' => 'select',
                    'choices' => array(
                        'Africa' => 'Africa',
                        'Europe' => 'Europe',
                        'Asia' => 'Asia',
                        'Americas' => 'Americas',
                        'Middle East' => 'Middle East',
                    ),
                    'default_value' => 'Africa',
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
                // Pricing Table (Simulated Repeater for ACF Free)
                array(
                    'key' => 'field_pricing_table_group',
                    'label' => 'Pricing Table (Primary - e.g. Air Freight)',
                    'name' => 'pricing_table',
                    'type' => 'group',
                    'show_in_graphql' => 1,
                    'layout' => 'block',
                    'sub_fields' => (function () {
                        $rows = [];
                        // Optional Title for the primary table
                        $rows[] = array(
                            'key' => 'field_pricing_primary_title',
                            'label' => 'Table Title',
                            'name' => 'table_title',
                            'type' => 'text',
                        );
                        // Description for the primary table
                        $rows[] = array(
                            'key' => 'field_pricing_primary_desc',
                            'label' => 'Table Description (Bullet Points)',
                            'name' => 'table_description',
                            'type' => 'wysiwyg',
                        );

                        for ($i = 1; $i <= 10; $i++) {
                            $rows[] = array(
                                'key' => 'field_pricing_row_' . $i,
                                'label' => 'Row ' . $i,
                                'name' => 'row_' . $i,
                                'type' => 'group',
                                'layout' => 'table',
                                'sub_fields' => array(
                                    array('key' => 'field_pricing_country_' . $i, 'label' => 'Country', 'name' => 'country', 'type' => 'text'),
                                    array('key' => 'field_pricing_city_' . $i, 'label' => 'City', 'name' => 'city', 'type' => 'text'),
                                    array('key' => 'field_pricing_airport_' . $i, 'label' => 'Airport Code', 'name' => 'airport_code', 'type' => 'text'),
                                    array('key' => 'field_pricing_5kg_' . $i, 'label' => '+5 kg', 'name' => 'price_5kg', 'type' => 'text'), // New Field
                                    array('key' => 'field_pricing_100kg_' . $i, 'label' => '+100 kg', 'name' => 'price_100kg', 'type' => 'text'),
                                    array('key' => 'field_pricing_500kg_' . $i, 'label' => '+500 kg', 'name' => 'price_500kg', 'type' => 'text'),
                                    array('key' => 'field_pricing_1000kg_' . $i, 'label' => '+1000 kg', 'name' => 'price_1000kg', 'type' => 'text'),
                                    array('key' => 'field_pricing_handling_' . $i, 'label' => 'Handling & Doc', 'name' => 'handling_fee', 'type' => 'text'),
                                )
                            );
                        }
                        return $rows;
                    })(),
                ),

                // Secondary Pricing Table (e.g. Ocean Freight)
                array(
                    'key' => 'field_pricing_table_secondary_group',
                    'label' => 'Secondary Pricing Table (e.g. Ocean Freight) (Max 10 Rows)',
                    'name' => 'pricing_table_secondary',
                    'type' => 'group',
                    'show_in_graphql' => 1,
                    'layout' => 'block',
                    'sub_fields' => (function () {
                        $rows = [];
                        // Optional Title for the secondary table
                        $rows[] = array(
                            'key' => 'field_pricing_secondary_title',
                            'label' => 'Table Title (e.g. Monthly Ocean Freight)',
                            'name' => 'table_title',
                            'type' => 'text',
                        );
                        // Description for the secondary table
                        $rows[] = array(
                            'key' => 'field_pricing_secondary_desc',
                            'label' => 'Table Description (Bullet Points)',
                            'name' => 'table_description',
                            'type' => 'wysiwyg',
                        );

                        for ($i = 1; $i <= 10; $i++) {
                            $rows[] = array(
                                'key' => 'field_pricing_sec_row_' . $i,
                                'label' => 'Row ' . $i,
                                'name' => 'row_' . $i,
                                'type' => 'group',
                                'layout' => 'table',
                                'sub_fields' => array(
                                    array('key' => 'field_pricing_sec_country_' . $i, 'label' => 'Country', 'name' => 'country', 'type' => 'text'),
                                    array('key' => 'field_pricing_sec_city_' . $i, 'label' => 'City', 'name' => 'city', 'type' => 'text'),
                                    array('key' => 'field_pricing_sec_airport_' . $i, 'label' => 'Airport Code', 'name' => 'airport_code', 'type' => 'text'),
                                    array('key' => 'field_pricing_sec_5kg_' . $i, 'label' => '+5 kg', 'name' => 'price_5kg', 'type' => 'text'), // New Field
                                    array('key' => 'field_pricing_sec_100kg_' . $i, 'label' => '+100 kg', 'name' => 'price_100kg', 'type' => 'text'),
                                    array('key' => 'field_pricing_sec_500kg_' . $i, 'label' => '+500 kg', 'name' => 'price_500kg', 'type' => 'text'),
                                    array('key' => 'field_pricing_sec_1000kg_' . $i, 'label' => '+1000 kg', 'name' => 'price_1000kg', 'type' => 'text'),
                                    array('key' => 'field_pricing_sec_handling_' . $i, 'label' => 'Handling & Doc', 'name' => 'handling_fee', 'type' => 'text'),
                                )
                            );
                        }
                        return $rows;
                    })(),
                ),

                // Bullet Points (Simulated Repeater for ACF Free)
                array(
                    'key' => 'field_bullet_points_group',
                    'label' => 'Bullet Points (Max 10 Points)',
                    'name' => 'bullet_points',
                    'type' => 'group',
                    'show_in_graphql' => 1,
                    'layout' => 'block',
                    'sub_fields' => (function () {
                        $rows = [];
                        for ($i = 1; $i <= 10; $i++) {
                            $rows[] = array(
                                'key' => 'field_bullet_point_row_' . $i,
                                'label' => 'Point ' . $i,
                                'name' => 'point_' . $i,
                                'type' => 'text',
                            );
                        }
                        return $rows;
                    })(),
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
}

add_action('graphql_register_types', 'dce_register_graphql_fields');
function dce_register_graphql_fields()
{
    register_graphql_field('GeneralSettings', 'siteLogoUrl', [
        'type' => 'String',
        'description' => 'The URL of the site logo set in the Customizer',
        'resolve' => function () {
            $custom_logo_id = get_theme_mod('custom_logo');
            $logo = wp_get_attachment_image_src($custom_logo_id, 'full');
            return $logo ? $logo[0] : null;
        }
    ]);
}
