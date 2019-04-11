-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2018 a las 23:05:11
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aquicrea_DCweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fileables`
--

CREATE TABLE `fileables` (
  `id` int(10) UNSIGNED NOT NULL,
  `files_id` int(10) UNSIGNED DEFAULT NULL,
  `fileable_id` int(11) NOT NULL,
  `fileable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fileables`
--

INSERT INTO `fileables` (`id`, `files_id`, `fileable_id`, `fileable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\Entities\\Post', '2018-06-13 09:11:17', '2018-06-13 09:11:17'),
(2, 2, 3, 'App\\Entities\\Links', '2018-06-13 09:51:21', '2018-06-13 09:51:21'),
(3, 3, 3, 'App\\Entities\\Taxonomies', '2018-06-13 22:08:15', '2018-06-13 22:08:15'),
(4, 4, 3, 'App\\Entities\\Post', '2018-06-13 22:22:33', '2018-06-13 22:22:33'),
(5, 5, 3, 'App\\Entities\\Post', '2018-06-14 01:07:42', '2018-06-14 01:07:42'),
(6, 6, 3, 'App\\Entities\\Post', '2018-06-14 01:23:13', '2018-06-14 01:23:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratories`
--

CREATE TABLE `laboratories` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `synonymous` text COLLATE utf8mb4_unicode_ci,
  `clinical_use` text COLLATE utf8mb4_unicode_ci,
  `preparation` text COLLATE utf8mb4_unicode_ci,
  `meaning` text COLLATE utf8mb4_unicode_ci,
  `range` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` enum('header','footer','services','social','social_footer') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `links`
--

INSERT INTO `links` (`id`, `url`, `location`, `icon`, `name`, `target`, `description`, `visible`, `notes`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '/categoria/musica', 'header', 'cat-1', 'Musica', '_blank', '<p>Noticias</p>', '1', NULL, 0, '2018-06-05 04:02:36', '2018-06-13 10:07:56'),
(2, 'https://www.facebook.com/cristianismodigital/', 'social', 'fa-facebook', 'Facebook', '_blank', '<p>Facebook</p>', '1', NULL, 0, '2018-06-05 04:27:24', '2018-06-05 04:27:24'),
(3, '/page/discipulados', 'services', 'none', 'Discipulados', NULL, '<p>Discipulados</p>', '1', NULL, 0, '2018-06-13 09:50:51', '2018-06-13 09:50:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_22_155731_create_permission_tables', 1),
(4, '2018_02_22_162225_column_user_table', 1),
(5, '2018_02_22_162346_create_user_metas_table', 1),
(6, '2018_02_22_162425_create_options_table', 1),
(7, '2018_02_22_162443_create_terms_table', 1),
(8, '2018_02_22_162524_create_posts_table', 1),
(9, '2018_02_22_162530_create_post_metas_table', 1),
(10, '2018_02_22_162554_create_taxonomies_table', 1),
(11, '2018_02_22_162610_create_multimedia_table', 1),
(12, '2018_02_22_162803_create_fileable_table', 1),
(13, '2018_02_22_162826_create_taxonomy_morphs_table', 1),
(14, '2018_02_22_162847_create_sliders_table', 1),
(15, '2018_02_22_162958_create_notifications_table', 1),
(16, '2018_03_09_142315_create_links_table', 1),
(18, '2018_04_24_150122_create_laboratories_table', 2),
(19, '2018_05_29_005415_create_ratings_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_id`, `model_type`) VALUES
(1, 3, 'App\\User'),
(2, 4, 'App\\User'),
(4, 6, 'App\\User'),
(6, 6, 'App\\User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` datetime DEFAULT NULL,
  `type_file` enum('csv','pdf','doc','docx','pps','ppt','xls','xlsx','pptx','jpg','jpeg','gif','png','bmp','tiff','psd','mp3','mp4','3gp','ogg','tar','zip','rar','7z','sql','svg') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`id`, `name`, `description`, `url`, `expiration`, `type_file`, `file_location`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'modificado', 'asdf', 'files/ac3136201841117.jpg', NULL, 'jpg', 'http://localhost:8000/files/ac3136201841117.jpg', NULL, '2018-06-13 09:11:17', '2018-06-13 09:11:17'),
(2, 'discipulado', 'discipulado', 'files/ac3136201845121.jpeg', NULL, 'jpeg', 'http://localhost:8000/files/ac3136201845121.jpeg', NULL, '2018-06-13 09:51:21', '2018-06-13 09:51:21'),
(3, 'discipulado', 'contenido discipulado', 'files/ac3136201817815.jpg', NULL, 'jpg', 'http://localhost:8000/files/ac3136201817815.jpg', NULL, '2018-06-13 22:08:15', '2018-06-13 22:08:15'),
(4, 'asdfaa', 'asdfasd', 'files/ac31362018172232.jpg', NULL, 'jpg', 'http://localhost:8000/files/ac31362018172232.jpg', NULL, '2018-06-13 22:22:32', '2018-06-13 22:22:32'),
(5, 'pdf', 'bloque', 'files/ac3136201820742.pdf', NULL, 'pdf', 'http://localhost:8000/files/ac3136201820742.pdf', NULL, '2018-06-14 01:07:42', '2018-06-14 01:07:42'),
(6, 'exs', 'exa', 'files/ac31362018202313.xlsx', NULL, 'xlsx', 'http://localhost:8000/files/ac31362018202313.xlsx', NULL, '2018-06-14 01:23:13', '2018-06-14 01:23:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `autoload` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'file.update', 'web', '2018-03-09 12:58:33', '2018-03-09 12:58:33'),
(2, 'file.create', 'web', '2018-03-09 12:58:40', '2018-03-09 12:58:40'),
(3, 'file.list', 'web', '2018-03-09 12:58:49', '2018-03-09 12:58:49'),
(4, 'file.destroy', 'web', '2018-03-09 12:59:09', '2018-03-09 12:59:09'),
(5, 'user.my.update', 'web', '2018-03-09 13:08:39', '2018-03-09 13:08:39'),
(6, 'files', 'web', '2018-03-09 13:09:06', '2018-03-09 13:09:06'),
(7, 'user.my.password', 'web', '2018-03-09 13:12:58', '2018-03-09 13:12:58'),
(8, 'user.my', 'web', '2018-03-09 13:13:58', '2018-03-09 13:13:58'),
(9, 'user.create', 'web', '2018-03-09 13:22:52', '2018-03-09 13:22:52'),
(10, 'user.list', 'web', '2018-03-09 13:23:03', '2018-03-09 13:23:03'),
(11, 'user.update', 'web', '2018-03-09 13:23:13', '2018-03-09 13:23:13'),
(12, 'user.destroy', 'web', '2018-03-09 13:23:24', '2018-03-09 13:23:24'),
(13, 'option.create', 'web', '2018-03-09 14:26:00', '2018-03-09 14:26:00'),
(14, 'option.update', 'web', '2018-03-09 14:26:12', '2018-03-09 14:26:12'),
(15, 'option.destroy', 'web', '2018-03-09 14:26:33', '2018-03-09 14:26:33'),
(16, 'option.list', 'web', '2018-03-09 14:26:41', '2018-03-09 14:26:41'),
(17, 'post.list', 'web', '2018-03-09 14:44:55', '2018-03-09 14:44:55'),
(18, 'post.create', 'web', '2018-03-09 14:45:08', '2018-03-09 14:45:08'),
(19, 'post.update', 'web', '2018-03-09 14:51:06', '2018-03-09 14:51:06'),
(20, 'post.destroy', 'web', '2018-03-09 14:51:13', '2018-03-09 14:51:13'),
(21, 'page', 'web', '2018-03-09 15:04:27', '2018-03-09 15:04:27'),
(22, 'post', 'web', '2018-03-09 15:04:43', '2018-03-09 15:04:43'),
(23, 'portfolio', 'web', '2018-03-09 15:04:55', '2018-03-09 15:04:55'),
(24, 'link.update', 'web', '2018-03-10 00:42:59', '2018-03-10 00:42:59'),
(25, 'link.create', 'web', '2018-03-10 00:43:06', '2018-03-10 00:43:06'),
(26, 'link.destroy', 'web', '2018-03-10 00:43:16', '2018-03-10 00:43:16'),
(27, 'link.list', 'web', '2018-03-10 00:43:30', '2018-03-10 00:43:30'),
(28, 'taxonomy.list', 'web', '2018-03-10 02:23:20', '2018-03-10 02:23:20'),
(29, 'taxonomy.create', 'web', '2018-03-10 02:23:27', '2018-03-10 02:23:27'),
(30, 'taxonomy.update', 'web', '2018-03-10 02:23:36', '2018-03-10 02:23:36'),
(31, 'taxonomy.destroy', 'web', '2018-03-10 02:23:49', '2018-03-10 02:23:49'),
(32, 'taxonomy', 'web', '2018-03-10 02:24:28', '2018-03-10 02:24:28'),
(33, 'taxonoable', 'web', '2018-03-10 05:15:26', '2018-03-10 05:15:26'),
(34, 'statistics', 'web', '2018-03-10 06:36:02', '2018-03-10 06:36:02'),
(35, 'lab.create', 'web', '2018-04-25 01:10:50', '2018-04-25 01:10:50'),
(36, 'lab.list', 'web', '2018-04-25 01:11:00', '2018-04-25 01:11:00'),
(37, 'lab.update', 'web', '2018-04-25 01:11:09', '2018-04-25 01:11:09'),
(38, 'lab.destroy', 'web', '2018-04-25 01:11:20', '2018-04-25 01:11:20'),
(39, 'estudiante.my', 'web', '2018-06-13 11:18:25', '2018-06-13 11:18:25'),
(40, 'lector.my', 'web', '2018-06-13 11:18:38', '2018-06-13 11:18:38'),
(41, 'lider.my', 'web', '2018-06-13 11:18:51', '2018-06-13 11:18:51'),
(42, 'alltaxos', 'web', '2018-06-14 00:31:00', '2018-06-14 00:31:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('page','post','publicity','course','homework','reading','leader') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` enum('published','draft','pending review') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `json` text COLLATE utf8mb4_unicode_ci,
  `views` int(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `excerpt`, `password`, `url`, `type`, `state`, `time_in`, `time_out`, `parent`, `json`, `views`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Las 15.000 esclavas holandesas de las Hermanas del Buen Pastor', '<h3>Mi tutora, la se&ntilde;orita Van de Biggelaar, me llev&oacute; en tren hasta Almelo [en el este de Holanda]. En Tilburgo, al menos ten&iacute;a un nombre que coser en la etiqueta de mi ropa, pero al llegar a Almelo me convert&iacute; en un n&uacute;mero m&aacute;s&quot;, cuenta Jo Keepers, de 76 a&ntilde;os. Hija de un padre alcoh&oacute;lico y maltratador, ella es una de las miles de v&iacute;ctimas holandesas de los trabajos forzados no remunerados de la orden cat&oacute;lica Hermanas del Buen Pastor.</h3>\r\n\r\n<p>Al menos 15.000 ni&ntilde;as y mujeres, en su mayor&iacute;a prostitutas, madres solteras o discapacitadas, trabajaron en condiciones de esclavitud entre 1860 y 1973 en las lavander&iacute;as y talleres de costura de esta congregaci&oacute;n en Holanda, seg&uacute;n una investigaci&oacute;n de a&ntilde;os realizada por el&nbsp;<a href=\"https://www.nrc.nl/nieuws/2018/05/22/15000vrouwen-werkten-onder-dwang-a1603853\" target=\"_blank\">medio holand&eacute;s NRC</a>.</p>\r\n\r\n<p>Las monjas, establecidas en los llamados &quot;refugios del amor&quot; en las ciudades de Almelo, Tilburgo, Zoeterwoude y Gelderland, viv&iacute;an de tareas de la costura comercial. Todas las esclavas que ten&iacute;an a su disposici&oacute;n elaboraron durante d&eacute;cadas todo tipo de indumentarias. Desde ropa de beb&eacute; hasta prendas para los militares, pasando por chalecos de fuerza para instituciones psiqui&aacute;tricas o camisas especiales para compa&ntilde;&iacute;as determinadas.</p>\r\n\r\n<p>Esta orden religiosa ya se vio implicada en&nbsp;<a href=\"http://www.bbc.com/mundo/noticias/2013/02/130205_lavanderias_magdalena_irlanda_irm\" target=\"_blank\">un esc&aacute;ndalo semejante en Irlanda</a>, donde participaban en la gesti&oacute;n de las llamadas &quot;lavander&iacute;as de las Magdalenas&quot;. All&iacute;, unas 10.000 mujeres j&oacute;venes, muchas de ellas madres solteras, fueron detenidas y forzadas a trabajar en las lavander&iacute;as que comenzaron a operar en la d&eacute;cada de 1920 e incluso segu&iacute;an vigentes hasta 1996, seg&uacute;n un informe del Gobierno de Dubl&iacute;n.</p>\r\n\r\n<p>A los trabajos de lavander&iacute;a se sumaba el bordado. Seg&uacute;n el Archivo holand&eacute;s de la Vida Conventual, que guarda tambi&eacute;n objetos, en El Buen Pastor se bordaba para la Casa Real. &ldquo;Se presume que para la entonces princesa Juliana (abuela del actual rey Guillermo)&rdquo;. Parte del lavado y almidonado de manteles del Palacio het Loo, residencia oficial de Juliana, tambi&eacute;n se hizo en los conventos de la orden.</p>\r\n\r\n<p>En el caso holand&eacute;s, las monjas prove&iacute;an con sus productos a las f&aacute;bricas textiles, empresas de moda, hoteles, hospitales, particulares, la Iglesia y el propio Gobierno. La investigaci&oacute;n de NRC incluye testimonios de varias v&iacute;ctimas y eleva su cifra a al menos 15.000 personas. Contactas por Efe, algunas de estas personas explican que por su estado de salud y edad prefieren no rememorar aquella &eacute;poca de nuevo hasta el d&iacute;a que tengan que dar testimonio ante un tribunal.</p>\r\n\r\n<p>Una de ellas es Margot Verhagen, de 85 a&ntilde;os. Su padre muri&oacute; en la Segunda Guerra Mundial y su madre falleci&oacute; en 1950, cuando ella ten&iacute;a 17 a&ntilde;os y seis hermanos. Verhagen se qued&oacute; con una de sus t&iacute;as, pero pocos d&iacute;as despu&eacute;s, dos polic&iacute;as y una mujer de protecci&oacute;n de menores la trasladaron a la instituci&oacute;n del Buen Pastor en Velp, donde las hermanas la pusieron a trabajar desde las seis de la ma&ntilde;ana hasta las diez de la noche, recuerda.</p>\r\n\r\n<p>Verhagen, nacida en La Haya, asegura en el medio holand&eacute;s que no solo fue sometida a los trabajos forzados en las lavander&iacute;as&nbsp;&mdash;&quot;una cultura normal de esa &eacute;poca&quot;, apostilla&mdash;&nbsp;sino que dice haber sido violada por el rector de la instituci&oacute;n. El episodio, seg&uacute;n ella, qued&oacute; impune porque las esclavas no ten&iacute;an voz, ni voto, ni derecho a quejarse.</p>\r\n\r\n<p>Se les consideraba ni&ntilde;as y mujeres &quot;perdidas&quot; cuando quedaban embarazadas fuera del matrimonio, hu&eacute;rfanas, abandonadas, maltratadas, discapacitadas o condenadas por un delito menor. En esos casos, su ingreso en la Hermandad era considerada &quot;la &uacute;nica soluci&oacute;n&quot;, refiere Verhagen. Nunca recibieron un salario por esas labores, aunque una vez al a&ntilde;o las monjas les entregaban un billete de cart&oacute;n, una especie de moneda ficticia con la que pod&iacute;an comprar dulces o comida en los puestos del mercado de la Hermandad.</p>\r\n\r\n<p>El trabajo de las j&oacute;venes serv&iacute;a para surtir a hoteles, particulares, la Iglesia y el propio Gobierno</p>\r\n\r\n<p>Jo Keepers tambi&eacute;n intent&oacute; escapar varias veces del centro de Almelo, pero siempre acababa detenida por la polic&iacute;a y castigada luego por las monjas, hasta que finalmente lo logr&oacute; el 20 de marzo de 1960, fecha que marca en el calendario como el d&iacute;a de su liberaci&oacute;n. Hasta la d&eacute;cada de 1970, las ni&ntilde;as, generalmente en contra de su voluntad, fueron colocadas en las instituciones por el Gobierno (como en el caso irland&eacute;s), las asociaciones de tutela, protecci&oacute;n infantil o los propios padres.</p>', 'las-15000-esclavas-holandesas-de-las-hermanas-del-buen-pastor', 'Mi tutora, la señorita Van de Biggelaar, me llevó en tren hasta Almelo [en el este de Holanda]. En Tilburgo, al menos tenía un nombre que coser en la etiqueta de mi ropa, pero al llegar a Almelo me convertí en un número más\", cuenta Jo Keepers, de 76 años. Hija de un padre alcohólico y maltratador, ella es una de las miles de víctimas holandesas de los trabajos forzados no remunerados de la orden católica Hermanas del Buen Pastor.', NULL, NULL, 'post', 'published', NULL, NULL, NULL, NULL, 18, 3, NULL, '2018-06-13 09:00:56', '2018-06-13 10:08:17'),
(2, 'Discipulados', '<p>Discipulado</p>', 'discipulados', 'Discipulado', NULL, NULL, 'page', 'published', NULL, NULL, NULL, NULL, 1, 3, NULL, '2018-06-13 09:48:48', '2018-06-13 09:50:10'),
(3, 'ate to ate', '<p>aot</p>', 'ate-to-ate', 'asda', NULL, NULL, 'course', 'published', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-06-14 00:35:48'),
(4, 'pape', '<p>pape</p>', 'pape', 'pape', NULL, NULL, 'course', 'published', NULL, NULL, NULL, NULL, NULL, 3, NULL, '2018-06-13 21:26:22', '2018-06-13 21:28:02'),
(5, 'Dante gebel', '<p>dante gebel</p>', 'dante-gebel', 'dante gebel', NULL, NULL, 'reading', 'published', NULL, NULL, NULL, NULL, NULL, 3, NULL, '2018-06-13 23:39:39', '2018-06-13 23:44:52'),
(6, 'liderazgo', '<p>liderazgo</p>', 'liderazgo', 'liderazgo', NULL, NULL, 'leader', 'published', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '2018-06-14 01:26:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_metas`
--

CREATE TABLE `post_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2018-03-15 05:00:00', '2018-03-15 05:00:00'),
(2, 'user', 'web', '2018-03-15 05:00:00', '2018-03-15 05:00:00'),
(3, 'webmaster', 'web', '2018-03-15 05:00:00', '2018-03-15 05:00:00'),
(4, 'estudiante', 'web', '2018-06-13 05:00:00', '2018-06-13 05:00:00'),
(6, 'lector', 'web', '2018-06-13 05:00:00', '2018-06-13 05:00:00'),
(7, 'lider', 'web', '2018-06-13 05:00:00', '2018-06-13 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 6),
(5, 7),
(6, 1),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 6),
(7, 7),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 6),
(8, 7),
(9, 1),
(10, 1),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(42, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `layers` text COLLATE utf8mb4_unicode_ci,
  `type` enum('attachment','page','post','revision','portfolio','directory','publicity') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxonoables`
--

CREATE TABLE `taxonoables` (
  `id` int(10) UNSIGNED NOT NULL,
  `taxonomies_id` int(11) DEFAULT NULL,
  `taxonoable_id` int(11) NOT NULL,
  `taxonoable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taxonoables`
--

INSERT INTO `taxonoables` (`id`, `taxonomies_id`, `taxonoable_id`, `taxonoable_type`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'App\\Entities\\Post', '2018-06-13 09:17:01', '2018-06-13 09:17:01'),
(3, 3, 4, 'App\\Entities\\Post', '2018-06-13 21:28:00', '2018-06-13 21:28:00'),
(4, 5, 5, 'App\\Entities\\Post', '2018-06-13 23:44:49', '2018-06-13 23:44:49'),
(5, 6, 3, 'App\\User', '2018-06-14 00:21:57', '2018-06-14 00:21:57'),
(7, 4, 3, 'App\\User', '2018-06-14 00:23:20', '2018-06-14 00:23:20'),
(8, 5, 3, 'App\\User', '2018-06-14 00:23:21', '2018-06-14 00:23:21'),
(10, 3, 6, 'App\\User', '2018-06-14 00:27:23', '2018-06-14 00:27:23'),
(12, 5, 6, 'App\\User', '2018-06-14 00:34:27', '2018-06-14 00:34:27'),
(15, 3, 3, 'App\\Entities\\Post', '2018-06-14 00:47:43', '2018-06-14 00:47:43'),
(16, 6, 6, 'App\\Entities\\Post', '2018-06-14 01:26:53', '2018-06-14 01:26:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxonomies`
--

CREATE TABLE `taxonomies` (
  `id` int(10) UNSIGNED NOT NULL,
  `taxonomy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('category','item','tag','publicity','course','homework','reading','leader') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `taxonomy`, `type`, `slug`, `description`, `parent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'lecturas', 'category', 'lecturas', '<p>Lecturas</p>', 0, NULL, '2018-06-13 08:59:25', '2018-06-13 08:59:25'),
(2, 'Musica', 'category', 'musica', '<p>cat-2</p>', 0, NULL, '2018-06-13 08:59:38', '2018-06-13 09:23:19'),
(3, 'Discipulado 1', 'course', 'discipulado_1', '<p>discipulado1</p>', 0, NULL, '2018-06-13 12:16:05', '2018-06-13 12:16:05'),
(4, 'Discipulado 2', 'course', 'discipulado_2', 'discipulado2', 0, NULL, '2018-06-13 21:27:14', '2018-06-13 21:27:14'),
(5, 'Dante Gebel', 'reading', 'dante_gebel', '<p>dantegebel</p>', 0, NULL, '2018-06-13 23:34:43', '2018-06-13 23:34:43'),
(6, 'Posicion Eclesial', 'leader', 'posicion_eclesial', '<p>posicioneclesial</p>', 0, NULL, '2018-06-13 23:35:38', '2018-06-13 23:35:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `terms` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `slug`, `status`, `display_name`, `deleted_at`) VALUES
(3, 'admin', 'wsgestor@gmail.com', '$2y$10$.l1uoAAI3/wlryuP1OaHm.rus4oc8QvEbPXZqBRop8wRLIlj69D8y', 'mQUEWPL0toyfQ8fuHDJWVpuMHulalPXD6uOKyclZSkY5RsHfjB6OWHWCvUFE', '2018-03-16 02:07:18', '2018-03-16 02:07:18', 'admin', 1, 'Darwin Yusef Gonzalez Triana', NULL),
(4, 'soporte', 'desyugo@hotmail.com', '$2y$10$XnV8tChQo728jKd65gY32eVseG2wc.RbbiwwwiC52zoV75y6WiUCa', NULL, '2018-03-17 19:39:29', '2018-03-17 19:39:29', 'soporte', 1, 'Aqui Creamos', NULL),
(6, 'pepo', 'pepito@hotmail.com', '$2y$10$sjb0pS7Jj9u5pADoM8ekdOcQDTZMRTjTI78AZFDAMKYce8MuY0ALy', NULL, '2018-06-13 10:43:19', '2018-06-13 11:36:25', 'pepo', 1, 'Pepito Perez', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_metas`
--

CREATE TABLE `user_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_metas`
--

INSERT INTO `user_metas` (`id`, `meta_key`, `meta_value`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'first', 'Darwin Yusef', 3, NULL, '2018-03-16 02:07:18', '2018-06-13 11:33:09'),
(2, 'last', 'Gonzalez Triana', 3, NULL, '2018-03-16 02:07:18', '2018-06-13 11:33:09'),
(3, 'mobile', '3202051241', 3, NULL, '2018-03-16 02:07:18', '2018-06-13 11:33:10'),
(4, 'church', 'Casa Sobre la Roca', 3, NULL, '2018-03-16 02:07:18', '2018-06-13 11:33:10'),
(5, 'course', 'discipulado1', 3, NULL, '2018-03-16 02:07:18', '2018-06-13 11:33:10'),
(6, 'country', 'Colombia', 3, NULL, '2018-03-16 02:07:19', '2018-06-13 11:33:10'),
(7, 'first', 'Aqui', 4, NULL, '2018-03-17 19:39:29', '2018-03-17 19:39:29'),
(8, 'last', 'Creamos', 4, NULL, '2018-03-17 19:39:29', '2018-03-17 19:39:29'),
(9, 'mobile', '3202051241', 4, NULL, '2018-03-17 19:39:29', '2018-03-17 19:39:29'),
(10, 'church', 'pepito', 4, NULL, '2018-03-17 19:39:29', '2018-03-17 19:39:29'),
(11, 'course', 'none', 4, NULL, '2018-03-17 19:39:30', '2018-03-17 19:39:30'),
(12, 'country', 'Fenalco', 4, NULL, '2018-03-17 19:39:30', '2018-03-17 19:39:30'),
(17, 'first', 'Pepito', 6, NULL, '2018-06-13 10:43:19', '2018-06-13 11:41:21'),
(18, 'last', 'Perez', 6, NULL, '2018-06-13 10:43:19', '2018-06-13 11:41:21'),
(19, 'mobile', '3105804606', 6, NULL, '2018-06-13 10:43:20', '2018-06-13 11:41:21'),
(20, 'country', 'Colombia', 6, NULL, '2018-06-13 10:43:20', '2018-06-13 11:41:21'),
(21, 'church', 'Casa Sobre la Roca', 6, NULL, '2018-06-13 10:43:20', '2018-06-13 11:41:21'),
(22, 'course', 'none', 6, NULL, '2018-06-13 10:43:20', '2018-06-13 11:41:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fileables`
--
ALTER TABLE `fileables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laboratories_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `post_metas`
--
ALTER TABLE `post_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_metas_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taxonoables`
--
ALTER TABLE `taxonoables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_metas`
--
ALTER TABLE `user_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_metas_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fileables`
--
ALTER TABLE `fileables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `post_metas`
--
ALTER TABLE `post_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `taxonoables`
--
ALTER TABLE `taxonoables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `user_metas`
--
ALTER TABLE `user_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `laboratories`
--
ALTER TABLE `laboratories`
  ADD CONSTRAINT `laboratories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_metas`
--
ALTER TABLE `post_metas`
  ADD CONSTRAINT `post_metas_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_metas`
--
ALTER TABLE `user_metas`
  ADD CONSTRAINT `user_metas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
