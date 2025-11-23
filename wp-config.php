<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'local');

/** Database username */
define('DB_USER', 'root');

/** Database password */
define('DB_PASSWORD', 'root');

/** Database hostname */
define('DB_HOST', 'localhost:/Users/benardomondi/Library/Application Support/Local/run/Y08zEv3w1/mysql/mysqld.sock');

/** Database charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The database collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'L keX(sB]_lE`07NLTTP[HF41^hRGq9Tpol750&,Bwi}kx_&xKhT7bKhbkLX@@3T');
define('SECURE_AUTH_KEY', '_bWpP6UR<j%7<Ife*b XK,z>ikq4c]H!/}(HYE)[B~ V8~y5]_x,iI(OE*8%k66@');
define('LOGGED_IN_KEY', 'G{0E0v}+|C880xy>8VQIA#t8RtC%X(DS=M(VC=?7uy(48(;EPb-q`W)z5VGU#Zy&');
define('NONCE_KEY', 'MwEg1FC(@#^z^,`p9),C&?M-af a5bA_*/*@JP>ak~xlLu2mwEsF VG!jE_ Sr+U');
define('AUTH_SALT', 'mD8u.{qpb_>qF`I*wkqndgF<h[)afBx4BT/w).I{R3^T8DO}bP4z84hJ;?} x4<q');
define('SECURE_AUTH_SALT', 'qO68o#c>D9rQYn]ncT[TQ1=r}!Tq9Xzk+pYK<pB=QaY. sM>L=`6Ppp*qdKErT{q');
define('LOGGED_IN_SALT', 'pS#o  DI(1<;?fGNnO0E~9)@+bS%>Lny_W8X6wY_L>3GdbLFB|SkmPiod%E9a_i{');
define('NONCE_SALT', 'C-pw7v}$b|d5h(.T>4r ]:,UTechcmP9Nb>(2hfJn->4<.*$m|_?F>FJ9= 9agyy');
define('WP_CACHE_KEY_SALT', 'Wv}4_L4doFnc<w#O>:o?Z<LTEk?*(N>8DV:)6klc_5lz7BtO`Cg0lX kg.rw>0+^');


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if (!defined('WP_DEBUG')) {
	define('WP_DEBUG', true);
	define('WP_DEBUG_LOG', true);
	define('WP_DEBUG_DISPLAY', false);
}

define('WP_ENVIRONMENT_TYPE', 'local');
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
	define('ABSPATH', __DIR__ . '/');
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
