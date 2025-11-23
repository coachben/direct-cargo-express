<?php
/**
 * Direct Cargo - Custom CSS Integration
 * 
 * This file ensures the modern-cargo-style.css is properly loaded in WordPress
 * 
 * INSTALLATION INSTRUCTIONS:
 * 1. Upload modern-cargo-style.css to: wp-content/themes/hello-elementor/
 * 2. Add this code to: wp-content/themes/hello-elementor/functions.php
 */

// Enqueue Modern Cargo Custom Styles
function directcargo_enqueue_custom_styles()
{
    // Enqueue the custom CSS file
    wp_enqueue_style(
        'modern-cargo-style',
        get_stylesheet_directory_uri() . '/modern-cargo-style.css',
        array(),
        '1.0.0',
        'all'
    );

    // Enqueue Google Fonts
    wp_enqueue_style(
        'modern-cargo-fonts',
        'https://fonts.googleapis.com/css2?family=Manrope:wght@400;700;800&family=Inter:wght@400;600&display=swap',
        array(),
        null
    );

    // Enqueue Font Awesome (if not already loaded)
    if (!wp_style_is('font-awesome', 'enqueued')) {
        wp_enqueue_style(
            'font-awesome',
            'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css',
            array(),
            '6.4.0'
        );
    }
}
add_action('wp_enqueue_scripts', 'directcargo_enqueue_custom_styles');

/**
 * Alternative Method: Add CSS via Customizer
 * If you prefer to add CSS through WordPress Customizer instead,
 * you can copy the contents of modern-cargo-style.css and paste it into:
 * Appearance > Customize > Additional CSS
 */
