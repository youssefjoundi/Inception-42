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
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpressuser' );

/** Database password */
define( 'DB_PASSWORD', 'wordpresspass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',         '%!Ro.iGy16u*nYplEo;^mJmtiB8`yNXz6[V8RuUkXh3eL*}F&D:t#Id-}(ErcE]=' );
define( 'SECURE_AUTH_KEY',  '_kE:R?2==f?bd0*&zjUI<#l@*B{dR<98$>i(7okSi%xPhU_/pH3<]e Zb-Rzf6`z' );
define( 'LOGGED_IN_KEY',    'kUik9I:ssh1db6bNZUF5=9;4;-/TO/:RAh lQkqv^-DvGl~$)l{7Y|:1jH] l,?e' );
define( 'NONCE_KEY',        '~+D5=RU8tygBvJ>s!#qOIrG[mC:=uV<^BZu++v+bOu.I9O}/J7r]jCar OM,MG1A' );
define( 'AUTH_SALT',        'Uerft}1?wjs_/?KSdH*B(X0u(A%2/9Bcg)c7>F3fe?g{xS?7c3>7{?N:N^:n{]O9' );
define( 'SECURE_AUTH_SALT', '`RK^) @^n6Pof?&qRG5MI&-$e_@5Ph,c+HW`yny19h>G/z(^H@s`P4[K/W ,Xq?T' );
define( 'LOGGED_IN_SALT',   '_<8r@tYH3]865Q>B~lgp-o*xt?9-ZIw=n]O!G,2Z]juC/w-0%?4%bvXjx1W3^r%}' );
define( 'NONCE_SALT',       'kBIstL=oJrn1H`3i~ncfEVPwbTs9Ma-]J9*l[n^yk^kdrqQMCx<S*z^2J,o^T~O]' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
