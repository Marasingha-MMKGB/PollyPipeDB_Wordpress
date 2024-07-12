<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
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
define( 'DB_NAME', 'pollypipedb' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         'YTndE[-kQ3{.l8&l6lz+Haq%6xJZI~d@- e}3gT! &_P>jn;{tq`g4<_eMZ`C);U' );
define( 'SECURE_AUTH_KEY',  '|!^E:(D-e)>(HA7PzrWb5h2MR+>SU4, `Y]hE.c~1XQ}[(uP3;6TB^)+i.=k@&D ' );
define( 'LOGGED_IN_KEY',    ')}l:vhV_xk-/9 |> %E{0L)1Z,v%O8dsvgp1--G0fMc.KK/F2o7{LBmP~uttA>8)' );
define( 'NONCE_KEY',        '5(,XfpIiif,Y7)vC;MK[iv3Z7VX]Xgq tZEi,?,j=/:}B:3^0jj:zB2gP9:h|;*r' );
define( 'AUTH_SALT',        'NbAMI&:88G$.?s:%`W!J_CO?iXL<+RlACP6Cz?fw(|0Iq}yGw.%d?:$:q^|2nMr(' );
define( 'SECURE_AUTH_SALT', 'eL<,>-*0ZaZ1kuYw|bHFE{wr]|u8ZwH}9Y%Yki8*ssN<;Q_h&{;I}s+i_vsdh^X ' );
define( 'LOGGED_IN_SALT',   'H_P%&#%%B`VAQ>,Ud?s=_h$L;lp@)^W$CU(l,N@2B,]O`1re!9=ja@),z2_1hYVR' );
define( 'NONCE_SALT',       '+!Taw.x;_pG>Nh,9D-#$X]G#-8Y.ZC)~m_@d-0.=VgL8iTI6.56WVvz94uTgQ xf' );

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
