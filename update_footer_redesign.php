<?php
// Update Footer (ID 20) to match the specific image design
$footer_data = [
    [
        'id' => 'footer_section',
        'elType' => 'section',
        'settings' => [
            'background_color' => '#0B162C',
            'padding' => ['unit' => 'px', 'top' => '80', 'bottom' => '40', 'left' => '20', 'right' => '20'],
            'css_classes' => 'site-footer',
        ],
        'elements' => [
            [
                'id' => 'footer_inner',
                'elType' => 'section',
                'isInner' => true,
                'settings' => ['content_width' => 'boxed', 'width' => 1200],
                'elements' => [
                    // Col 1: Black Card with Logo & Socials
                    [
                        'id' => 'footer_col_1',
                        'elType' => 'column',
                        'isInner' => true,
                        'settings' => ['_column_size' => 30],
                        'elements' => [
                            [
                                'id' => 'footer_card_html',
                                'elType' => 'widget',
                                'widgetType' => 'html',
                                'settings' => [
                                    'html' => '<div class="footer-logo-card">
                                        <img src="https://directcargoexpress.com/wp-content/uploads/2021/08/Direct-Cargo-Express-Logo.png" style="width: 140px; margin-bottom: 10px;">
                                        <div class="footer-social-row">
                                            <a href="#" class="footer-social-btn"><i class="fab fa-facebook-f"></i></a>
                                            <a href="#" class="footer-social-btn"><i class="fab fa-twitter"></i></a>
                                            <a href="#" class="footer-social-btn"><i class="fab fa-youtube"></i></a>
                                            <a href="#" class="footer-social-btn"><i class="fab fa-instagram"></i></a>
                                            <a href="#" class="footer-social-btn"><i class="fab fa-whatsapp"></i></a>
                                        </div>
                                    </div>',
                                ],
                            ],
                        ],
                    ],
                    // Col 2: Quick Links (with Chevrons)
                    [
                        'id' => 'footer_col_2',
                        'elType' => 'column',
                        'isInner' => true,
                        'settings' => ['_column_size' => 20],
                        'elements' => [
                            [
                                'id' => 'footer_head_2',
                                'elType' => 'widget',
                                'widgetType' => 'heading',
                                'settings' => ['title' => 'Quick Links', 'header_size' => 'h4'],
                            ],
                            [
                                'id' => 'footer_links_2',
                                'elType' => 'widget',
                                'widgetType' => 'html',
                                'settings' => [
                                    'html' => '
                                        <a href="#" class="footer-chevron-link">Home</a>
                                        <a href="#" class="footer-chevron-link">Services</a>
                                        <a href="#" class="footer-chevron-link">About Us</a>
                                        <a href="#" class="footer-chevron-link">Contact Us</a>
                                    ',
                                ],
                            ],
                        ],
                    ],
                    // Col 3: Services (with Chevrons)
                    [
                        'id' => 'footer_col_3',
                        'elType' => 'column',
                        'isInner' => true,
                        'settings' => ['_column_size' => 20],
                        'elements' => [
                            [
                                'id' => 'footer_head_3',
                                'elType' => 'widget',
                                'widgetType' => 'heading',
                                'settings' => ['title' => 'Services', 'header_size' => 'h4'],
                            ],
                            [
                                'id' => 'footer_links_3',
                                'elType' => 'widget',
                                'widgetType' => 'html',
                                'settings' => [
                                    'html' => '
                                        <a href="#" class="footer-chevron-link">Air Freight</a>
                                        <a href="#" class="footer-chevron-link">Ocean Freight</a>
                                        <a href="#" class="footer-chevron-link">Road Freight</a>
                                        <a href="#" class="footer-chevron-link">Warehouse</a>
                                    ',
                                ],
                            ],
                        ],
                    ],
                    // Col 4: Contact Us (Specific Layout)
                    [
                        'id' => 'footer_col_4',
                        'elType' => 'column',
                        'isInner' => true,
                        'settings' => ['_column_size' => 30],
                        'elements' => [
                            [
                                'id' => 'footer_head_4',
                                'elType' => 'widget',
                                'widgetType' => 'heading',
                                'settings' => ['title' => 'Contact Us', 'header_size' => 'h4'],
                            ],
                            [
                                'id' => 'footer_contact_html',
                                'elType' => 'widget',
                                'widgetType' => 'html',
                                'settings' => [
                                    'html' => '
                                        <div style="margin-bottom: 20px;">
                                            <span class="footer-company-name">Direct Cargo Express Ltd</span>
                                            <div style="color: #A0AEC0; font-size: 14px; line-height: 1.6;">
                                                16128355<br>
                                                3rd Floor The Pinnacle,<br>
                                                Station Way, Crawley, West<br>
                                                Sussex, United Kingdom,<br>
                                                RH10 1JH
                                            </div>
                                        </div>
                                        
                                        <div class="footer-contact-item">
                                            <i class="fas fa-phone-alt footer-contact-icon"></i>
                                            <span>+44 (0) 7375 964 786</span>
                                        </div>
                                        <div class="footer-contact-item">
                                            <i class="fas fa-envelope footer-contact-icon"></i>
                                            <span>info@directcargoexpress.com</span>
                                        </div>
                                    ',
                                ],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
];

// Update Footer (ID 20)
$footer_json = wp_slash(json_encode($footer_data));
update_post_meta(20, '_elementor_data', $footer_json);
update_post_meta(20, '_elementor_edit_mode', 'builder');
update_post_meta(20, '_elementor_template_type', 'footer');
update_post_meta(20, '_elementor_version', '3.0.0');

echo "Footer updated to match the image exactly!";
?>