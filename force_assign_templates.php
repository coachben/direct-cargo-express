<?php
// Force assign Header and Footer globally
$header_id = 19;
$footer_id = 20;

// 1. Ensure they are published
wp_update_post(['ID' => $header_id, 'post_status' => 'publish']);
wp_update_post(['ID' => $footer_id, 'post_status' => 'publish']);

// 2. Set the specific meta keys for "Elementor Header & Footer Builder"
// This is the critical part: telling the plugin WHERE to show them.
update_post_meta($header_id, 'ehf_template_type', 'type_header');
update_post_meta($header_id, 'ehf_target_include_locations', [
    'rule' => ['basic-global'], // Entire Website
    'specific' => [],
    'exclusion' => []
]);

update_post_meta($footer_id, 'ehf_template_type', 'type_footer');
update_post_meta($footer_id, 'ehf_target_include_locations', [
    'rule' => ['basic-global'], // Entire Website
    'specific' => [],
    'exclusion' => []
]);

// 3. Also set Elementor-specific meta to be safe
update_post_meta($header_id, '_elementor_edit_mode', 'builder');
update_post_meta($footer_id, '_elementor_edit_mode', 'builder');

// 4. Clear Plugin Cache
if (class_exists('\HFE\Lib\HFE_Scripts_Styles')) {
    // Try to trigger any cache clearing if the class exists
}

echo "Force-assigned Header ($header_id) and Footer ($footer_id) to Entire Website.";
?>