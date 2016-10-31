<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'houmty');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'klivin-pc');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '8tXeXqWy0/]vtaD>g)V]cYP#nRm/P_4/f%tMp&pwzZ&e5Skv?Lk<OoQbBRtJmb1J');
define('SECURE_AUTH_KEY',  '-CXA<1m>Lo]1z<7Gxq&b,?@ .smi}h?;::<|Ve+!l_Jy2/0Ob9#XZ!ubT5iphuby');
define('LOGGED_IN_KEY',    'BTeIr&oGBqt/xYVjv6uL#%0VwvZRAqnAJ$x38`@Px-wKZd< uex8R]t9~Vk>P Q ');
define('NONCE_KEY',        'jr,$/h v#B68jSMiaD2iy`8~AJ-[ N=$c-yGvwTEg<yC{g/ZK2bivF27dvzq~HB1');
define('AUTH_SALT',        '~oZ^T3Vs]V<.>K/WrpgFKzYSZahB-bQO$K+OO#k&oNh{K`xI`?%8nsTMrAwZnD;}');
define('SECURE_AUTH_SALT', 'Gt-duS5Ym_ZP&oeNkD{KBELdSYn?k#FFk>:erhT&wl7y  C[Z5i[{M{?Gls-)h>C');
define('LOGGED_IN_SALT',   '|GKVhhZu-Y9U &mIK$E$^]U~p<)|`v+u=9o<l?6djSx;gGtC@wX4Z>]<1.gqbseT');
define('NONCE_SALT',       '<f<dZIV83DTQRd1CC4QRP[.j@U<ef(io%!g+/9b~/Q)fZUN^6Btn#v:l/qr7M{Ar');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d'information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
/* Multisite */
define( 'WP_ALLOW_MULTISITE', true );

define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', false);
define('DOMAIN_CURRENT_SITE', 'klivin-pc');
define('PATH_CURRENT_SITE', '/houmty/');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
