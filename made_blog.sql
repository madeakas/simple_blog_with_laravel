-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2022 at 09:24 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `made_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(2, 'Web Desain', 'web-desain', '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(3, 'Personal', 'personal', '2022-04-23 02:19:28', '2022-04-23 02:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_16_195049_create_posts_table', 1),
(5, '2022_04_17_105404_create_categories_table', 1),
(6, '2022_04_24_022610_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Incidunt ea autem.', 'praesentium-est-aut-nemo', NULL, 'Adipisci expedita est impedit natus repellendus. Exercitationem ex impedit illum ducimus laborum. Perferendis quo nam officiis vitae consectetur a et. Autem dolorem sed repellendus veniam.', '<p>Ab inventore libero natus harum quod. Cum harum aperiam dolorem. Eos fugit autem et enim voluptas at aut. Similique nisi tempora atque iure.</p><p>Esse laborum est ut voluptates velit officia. Labore illum ut corrupti sint. Non eum aut vel iste repellat qui architecto.</p><p>Dolores unde aliquid tenetur. Ad quod ipsum molestiae neque porro. Nostrum non qui ullam voluptas amet unde.</p><p>Nostrum nihil qui quasi quo. Vero sit consequatur eaque consectetur eligendi. Doloribus tempora mollitia et nisi quaerat sapiente. Aut perferendis exercitationem et dolor aut culpa voluptates consequatur.</p><p>Non voluptatibus eaque cum sit consequatur dolorem. Recusandae tenetur voluptas itaque. Atque odio facilis consequatur quo. Occaecati maxime aut sunt magni ut maiores quis.</p><p>Qui voluptas hic et repellendus corporis vel voluptatem. Quis aliquam ipsam aut delectus. Quae commodi eveniet id numquam aut est unde eum. Enim at voluptatibus vel minus dignissimos. Reiciendis aut voluptatem officia voluptatem tempore.</p><p>Sunt modi ut consequuntur vero consequuntur vel ut. Dolores rerum nihil similique. Sit culpa consequatur aut quibusdam.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(2, 3, 1, 'Aut aliquam itaque non aut.', 'autem-doloribus-consequatur', NULL, 'Illum sit iure eligendi nam aspernatur. Fuga accusantium qui voluptatem qui. Quam et odio vel aut quis. Quis enim repellat a quas dolorem sit. Voluptatem vel ducimus animi aut aut impedit.', '<p>Esse at doloremque magnam quos quia. Aut ut aliquam consectetur cum beatae suscipit vel. Similique et qui facere voluptas a.</p><p>Iure similique necessitatibus pariatur sunt animi. Et dolore enim deleniti iure iure. Voluptatem ut ipsum deleniti impedit dolores vero ut alias. Reprehenderit dolorem voluptatem deleniti nihil sunt. Vitae quasi molestiae aut pariatur ut natus.</p><p>Asperiores dolorem id facere qui aut dolorem qui. Veniam beatae aut soluta vel quis sint est aut. Necessitatibus a eum mollitia in expedita voluptatum.</p><p>Nobis qui atque recusandae deserunt provident. Quidem a enim ea sit quo sequi. Consectetur recusandae nesciunt quos quo debitis quas ut. In magni eaque et harum non consequuntur.</p><p>Laudantium doloribus soluta sed commodi. Beatae sed a pariatur ex quo quidem. Rerum repellendus molestias accusantium aut quia culpa.</p><p>Est qui ut ea voluptas. Delectus rerum dolorem sint sed dolor illo iste consequatur. Aut voluptate officiis magni et quia nisi voluptates.</p><p>Voluptates ex placeat minus perspiciatis in odio commodi. Sit aspernatur exercitationem tenetur doloremque. Dolor nostrum quae quo excepturi et id. Vero amet deleniti animi assumenda aut quia.</p><p>Quo ducimus in inventore. Ut eligendi unde cum numquam itaque esse possimus. Distinctio ut autem qui sed aut. Ea voluptatem sequi debitis cupiditate expedita repellat.</p><p>Expedita qui non sint nam. Qui non animi quas. Minus laborum adipisci omnis nesciunt et repellendus.</p><p>Laborum voluptatem velit tenetur ipsam optio hic. Voluptas facere aperiam vel odio. Illum dolorem voluptas voluptatem et nesciunt dolores itaque. Eveniet odit autem pariatur ullam quod sed. Odio expedita non tempore nostrum repellendus laboriosam.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(3, 3, 1, 'Distinctio magni officiis.', 'dolorum-eum-dolores', NULL, 'Dolores quia ullam minus eum distinctio voluptas. Ut nisi id esse rem et eum. Similique architecto necessitatibus hic sint quaerat provident quo. Aut doloribus ut maxime eos sit.', '<p>Enim repellendus vel qui natus omnis. Quia qui quidem alias et eum quis. In libero sint corporis repudiandae fugit neque. Et dolore ad rerum natus.</p><p>Eum sint maiores modi est qui doloremque dolores. Hic repudiandae inventore libero. Sequi iste labore dolores eligendi.</p><p>Laborum officiis sint laboriosam praesentium ut quas quo. Id quia minima inventore est. Et non enim quas voluptatem soluta tenetur neque.</p><p>Vel quod quas asperiores impedit. Non numquam nam vel aut. Dicta libero illo accusamus voluptatem excepturi.</p><p>Ratione esse corporis architecto ut suscipit qui. Quia debitis rem quaerat dolorum aut. Est repellendus explicabo nisi laborum facere est modi. Vero voluptas accusamus omnis enim cumque alias dolores cupiditate.</p><p>Quisquam sint et unde. Sequi ab maxime ea dolorem. Quos tenetur aut consequatur velit in sit ipsam soluta. Accusantium enim harum autem a incidunt.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(4, 2, 1, 'Blanditiis quia.', 'voluptatem-est-qui-consequatur-deserunt', NULL, 'In aspernatur reprehenderit qui eum magni ut. Amet nemo nulla aliquam eveniet minus ut aut. Aut minima doloribus odit culpa magni fugit.', '<p>Sequi minima sunt sint fugit dicta. Minima odio ut ea maxime tempore fugiat qui. Et quidem suscipit rerum est dolorum fugiat.</p><p>Ad dolor dolor ad qui ut. Doloribus repellat voluptatem eius voluptas ipsa est. Exercitationem molestiae autem velit minus. Et consectetur in vero ut.</p><p>Laboriosam iste veniam et dolorem ut eaque. Non minus dolorem sit repudiandae praesentium. Est vel quisquam optio ipsum. Illum et tenetur laboriosam autem.</p><p>Dolorum quia magni perspiciatis sunt accusantium molestiae et provident. Incidunt quibusdam consequatur esse neque et vel dignissimos. Dignissimos nihil a ea nihil cum modi modi adipisci.</p><p>Expedita minus consequatur qui et tempore eum consequatur. Nobis sed aut magnam voluptates optio nihil temporibus.</p><p>Animi odio molestiae et est aspernatur. Quia accusamus provident sed excepturi repellat optio. Qui voluptas voluptas amet aliquam. Voluptatibus velit ut molestias quam qui quisquam unde.</p><p>Eius harum aut et voluptas tempore est voluptatem. Ratione rerum est commodi omnis et magnam. Quis laboriosam quis necessitatibus repudiandae.</p><p>Quam aut in est quia necessitatibus. Sunt ad qui occaecati explicabo dolor quam omnis. Delectus eum quos rerum rerum voluptatem.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(5, 1, 1, 'Quaerat qui.', 'quisquam-eos-hic', NULL, 'A sit voluptas sed ad architecto incidunt qui. Et saepe voluptas et suscipit optio non. Autem ad impedit asperiores quam non. Commodi harum vel enim eos.', '<p>Fuga nostrum possimus ab omnis. Eius ex dolorem perferendis modi. Voluptate ab explicabo perferendis eos nobis exercitationem fugit. Dicta et molestiae dolore quod natus neque error nisi.</p><p>A alias nostrum earum et accusantium. Corrupti vitae natus sed placeat voluptatem voluptatibus natus. Molestiae beatae quidem sit sunt sint accusamus harum saepe. Ut et consequatur quas ratione omnis veniam et. Molestiae sunt nobis et voluptate ut et quaerat.</p><p>Aperiam autem rerum assumenda ipsa voluptatum. Quia porro atque sunt ex excepturi similique. Nihil aut blanditiis aut a.</p><p>Necessitatibus placeat tenetur quam similique. Molestias officiis aut dicta consectetur non.</p><p>Ut quia ut qui labore et. Et ea hic est sint. Autem et perferendis omnis deleniti delectus eos occaecati. Voluptatibus sit voluptatem molestiae sed.</p><p>Consequatur consequatur sunt molestias vel. Beatae eos id velit. Dicta qui culpa neque error.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(6, 3, 1, 'Distinctio nisi.', 'commodi-ut-iste-harum', NULL, 'Odit aut illum velit hic. Dolorum molestiae est dicta cum veniam. Accusantium velit vero et harum velit quo dicta.', '<p>Voluptate tenetur molestiae eum vitae. Blanditiis tempora et minus commodi. Est aut adipisci repellendus quod quidem iste dolorum sed. Quo eos laborum incidunt odio quibusdam voluptatum ut.</p><p>Nihil quia error distinctio molestias ratione. Rem fuga dolore voluptatum ut eius illo fuga. Fugiat dolorem non soluta ducimus dolore dolores. Autem sunt quisquam natus consectetur eum qui.</p><p>Accusantium corrupti perferendis beatae eveniet modi quo est. Architecto illum blanditiis molestiae possimus suscipit illo quia. Et ab aut deserunt placeat omnis molestiae. Et eum sunt deleniti vel occaecati dolores quae.</p><p>Omnis cum optio reprehenderit facere ullam praesentium quos. Enim eum id voluptates ducimus. Modi voluptates suscipit at quaerat.</p><p>Ut nesciunt porro tenetur qui repellendus nesciunt labore. Unde et minus aliquid. Debitis aut natus tempora dolorum maiores voluptas.</p><p>Veritatis nihil aut sint. Sint nesciunt sed sunt beatae voluptas illo.</p><p>Ut quod assumenda et error iure id. Minima qui expedita molestias dolor eveniet quia sint. Vel quos animi repellendus.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(7, 3, 3, 'Vel vitae.', 'eius-facere-dicta-sint', NULL, 'Molestiae praesentium nam libero saepe. Adipisci dolorem nihil excepturi nihil sint. Eos molestiae voluptatibus cupiditate quia magni ut. Quae eos iure dicta quisquam.', '<p>Consequatur aliquam eum laborum quis accusamus voluptatem et et. Nesciunt cumque aspernatur nostrum id. Quo corrupti minus qui voluptates et. Qui eius esse qui accusamus.</p><p>Qui similique aut quaerat. Consequatur libero voluptatibus nesciunt qui. Id temporibus sit quia molestiae incidunt earum. In ea voluptas iusto et. Illum nisi aut est omnis quidem aut quibusdam.</p><p>Ab autem et facilis deserunt. Et enim qui voluptas natus natus. Nemo animi neque recusandae tenetur. Qui voluptas unde alias nobis molestiae culpa voluptates ad.</p><p>Voluptatem omnis laudantium sed totam eum. Corrupti laudantium explicabo necessitatibus ut quas doloribus reiciendis. Repudiandae est quis laboriosam distinctio explicabo tempore.</p><p>Ipsum et esse rerum est. Reiciendis sed eaque dolor excepturi rem. Porro eos nemo et et est quibusdam. Soluta nesciunt repudiandae in sunt eum.</p><p>Fuga dolorem debitis sunt sit tenetur. Quo est repellat a. Eaque ad corporis tempora eum sit.</p><p>Sed ipsam quasi rerum aut aut ea. Fugiat et magni qui dolorem sapiente aut. Porro aut et voluptatem perspiciatis ducimus eius accusamus.</p><p>Suscipit praesentium corporis vel. Id aut voluptate ratione. Et sunt et quo non et expedita.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(8, 3, 2, 'Voluptate in quisquam.', 'neque-doloremque-ratione-facilis', NULL, 'Quos et officia laborum natus. Sunt doloribus doloribus nemo deserunt. Est adipisci quisquam sed natus repellendus et qui. Sequi quis non rerum hic in harum cum quisquam.', '<p>Voluptate tempore quis qui. Iusto optio qui voluptas porro minus dolorem. Vel deserunt voluptas nisi hic et eaque non.</p><p>Quidem libero dolor necessitatibus quae sed. Repellat itaque quis id sed at qui quae. Voluptatem expedita dolorem quidem.</p><p>In velit cum aliquid rem et optio. Ratione vitae cumque velit. Distinctio est et qui quo suscipit.</p><p>Nesciunt vero voluptates aliquam perferendis similique natus. Corrupti sint velit tenetur illo facilis cumque beatae. Minima dolores accusamus nesciunt ullam architecto et.</p><p>Repellat iure est quidem numquam laudantium error dolores. Repellendus libero assumenda excepturi quia. Ipsum veritatis ratione et ullam voluptas quia. Distinctio et aut expedita sunt explicabo.</p><p>Sequi labore reiciendis modi veritatis. Alias ratione aut architecto consectetur eveniet magni voluptates. Nesciunt alias hic quis cumque enim incidunt.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(9, 1, 1, 'Molestias qui.', 'similique-deleniti-molestias', NULL, 'Repudiandae vero quasi omnis maxime quo ea repudiandae. Qui blanditiis perspiciatis voluptatum qui dignissimos. Quisquam facere cupiditate tempore ullam est aut amet sequi.', '<p>Numquam velit et molestias magnam voluptas. Assumenda cupiditate architecto reiciendis mollitia in qui temporibus. Ut laudantium quia assumenda temporibus voluptatem quibusdam expedita. Itaque odio itaque maiores labore tenetur facilis dolore.</p><p>Quia consequatur ab ut. Omnis recusandae ratione incidunt omnis. Alias sapiente cumque aut hic in et.</p><p>Aliquid dolore dolorem voluptas voluptate ipsum non eum quibusdam. Eum provident corporis iusto. Totam quia dolores qui aliquam. Maiores earum nesciunt nulla et et.</p><p>Animi architecto qui quas nihil. Iure rerum dolorem voluptas consectetur. Molestiae distinctio ut rerum et qui.</p><p>Odit dolores sit architecto iste architecto itaque. Nam temporibus architecto sunt maiores. Sapiente fuga aperiam eveniet dignissimos impedit non.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(10, 2, 3, 'Dolore occaecati velit autem.', 'tempore-qui-id-debitis', NULL, 'Dolorem corrupti dolorem rem autem id. Reiciendis nobis ullam et alias cum sit. Molestiae repudiandae dolore et quaerat excepturi dolorum repudiandae. Exercitationem quo nesciunt ipsa excepturi sit nesciunt.', '<p>Neque excepturi similique maxime sunt consequatur ratione corporis voluptatem. Ratione quo quas sit voluptatem omnis est. Asperiores magnam laudantium consequatur omnis ut.</p><p>Nisi dolore expedita et deserunt. Sit et sequi est libero ea ipsum fuga. Non earum ipsa corporis nihil quia adipisci.</p><p>Quo deleniti provident voluptatem consequatur explicabo fuga occaecati. Voluptatem tempora magni nihil facilis dolores. Accusantium voluptas sit error minus qui. Repellat quo aut et corporis qui. Et quia consequatur repellendus sapiente culpa.</p><p>Cumque quisquam possimus eos adipisci maxime quis voluptate. Tempore doloremque iusto aperiam. Incidunt quae architecto mollitia maiores. Sint magnam saepe velit occaecati. A delectus est aut nobis incidunt et.</p><p>Dolore consectetur porro minus ipsum. Voluptatum aut quos est et alias consectetur quo. Repellendus voluptas excepturi aut qui aut sit pariatur.</p><p>Ea ut veniam quis. Praesentium suscipit doloribus aut nam facilis quis delectus quae. Est numquam similique culpa tenetur laborum magnam. Rerum fugiat molestias est harum aliquid.</p><p>Qui modi optio est. Non odit deleniti impedit. Qui est cum voluptatibus et pariatur impedit.</p><p>Placeat totam quibusdam adipisci non consectetur. Voluptates adipisci commodi distinctio earum porro enim sed quia. Quisquam aut tempore vero facilis et possimus.</p><p>Praesentium libero voluptatibus sit enim expedita. Et adipisci consequatur et qui. Qui voluptates unde quo nam rerum rem voluptatum sit.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(11, 2, 2, 'Eos eum alias.', 'nemo-praesentium', NULL, 'Nostrum enim cumque voluptatem autem hic commodi facilis. Hic assumenda tempore vitae occaecati perspiciatis porro. Et explicabo natus inventore consequatur et nesciunt.', '<p>Aliquid qui eaque error expedita et quidem aut. Et recusandae officiis est repellendus. Totam ipsa consequuntur repudiandae et a.</p><p>Rerum dolor voluptas quia reprehenderit. Natus ut sit et et qui molestias fugit doloremque. Consequatur dolores culpa pariatur id quia ab.</p><p>Quia quasi voluptates libero sed voluptatem. Molestiae in voluptas molestias. Quibusdam voluptates blanditiis ut et ab. Iure soluta id delectus id. Asperiores dignissimos voluptas sint distinctio dolor ad inventore.</p><p>Eum sed praesentium rem consequatur quo repudiandae quaerat. Neque dolorem temporibus odio ut eos. Non quae aut molestiae voluptatem tempora. Rem aut dolor aut aut.</p><p>Totam velit in illum rerum. Cupiditate odio modi ratione suscipit vel repellendus iure. Harum et voluptate fuga vel.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(12, 2, 2, 'Rerum vel ratione.', 'aliquam-eius-vitae-cum', NULL, 'Ducimus ab alias et doloribus earum. Porro fuga labore dolorum facere dolorem ut. Voluptatem qui placeat iure et corrupti illo. Maxime sint tempore nemo omnis.', '<p>Et aut reprehenderit aut. Sit at laudantium quasi deleniti et doloremque enim. Velit eius ut dolorem unde quod nam expedita aliquid.</p><p>Asperiores minima nesciunt deleniti repudiandae. Voluptates est ipsam rerum impedit. Est accusantium consequuntur eaque velit.</p><p>Facilis cum aut ab aliquid. Illo facere repudiandae sunt distinctio nobis quam possimus. Enim quia autem debitis voluptatem earum ad sed.</p><p>Soluta ut veritatis incidunt. Iure facilis ipsa occaecati et culpa qui reprehenderit. Ad temporibus dolorum expedita quisquam sed cumque a iure. Libero quisquam explicabo quidem velit quidem.</p><p>Illum nobis similique nulla. Quasi corrupti accusantium assumenda est et excepturi eos molestias. Odio recusandae et laborum alias sed repellat.</p><p>Iste ut rerum deleniti quia iure dolorem alias. Iusto provident est labore nam et nemo. Consequatur vitae iusto quia ullam. Quo quibusdam inventore odit voluptates fuga nostrum nam.</p><p>Corporis qui aut aliquid ipsum ipsam vel ut. Occaecati repellendus voluptatem alias quia qui ut. Itaque veniam et velit ut quia provident perspiciatis laboriosam.</p><p>Vel perferendis dicta ab molestias corporis. Blanditiis pariatur quos nesciunt dignissimos. Voluptatem omnis consequatur quia a dolores.</p><p>Laudantium occaecati aut adipisci et. Officia quis provident facere assumenda eos. Eum molestias aliquid repellendus nam deleniti. Ullam est libero et tenetur facilis.</p><p>Tenetur eum sed nihil doloribus non laboriosam similique. A dolores labore dicta aut expedita. Voluptatum delectus vel asperiores cum et sit atque.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(13, 3, 3, 'Enim saepe aut.', 'eius-impedit-esse-sit-et', NULL, 'Voluptatem et aut nobis. Ipsam accusamus assumenda repudiandae laborum quos ex. Officiis molestias iusto necessitatibus aperiam saepe nam sunt iusto.', '<p>Eum dolores odit rerum minima quaerat aliquam. Qui velit ea vitae porro. Atque est iure ipsum aspernatur voluptatem quas. Provident aliquam est possimus fugiat voluptatem qui doloremque placeat.</p><p>Repellendus et repellendus dolorem voluptate ut. Facere corporis reprehenderit et aut autem commodi nemo. Quaerat minus excepturi odit est quia. Eveniet eius praesentium nihil.</p><p>Deserunt et unde accusamus dolorum assumenda velit est. Ut at aut voluptatem blanditiis eligendi aut. Qui qui et dolor deserunt.</p><p>Enim numquam et rerum et. Perspiciatis possimus in illo voluptatum doloremque magnam. Qui fugiat reprehenderit distinctio veniam qui. Et et quo quam eos voluptatibus commodi.</p><p>Cupiditate facere fuga dolores eligendi ullam libero velit. Perspiciatis et officia sit. Sit dolorem eius esse sunt. Consequatur tenetur et est odit quia soluta.</p><p>Dolores ut aut facilis adipisci aperiam. Voluptate ullam eius dolorem nihil consectetur quia voluptatum. Ipsum sed consequatur maxime quis dolore quibusdam quidem. Modi quam labore non ea.</p><p>Sed quia repudiandae voluptatibus maxime animi aperiam. Non aut natus quae culpa et et cumque. Tempore est modi veritatis vero eum ea reprehenderit. Sit eum accusamus voluptatem adipisci consequatur.</p><p>Recusandae fuga earum aperiam quo minima. Odio cum illum fugiat saepe sed deleniti quia. In id cumque magni itaque aut vel laudantium repellat. Aspernatur labore voluptate reiciendis unde omnis earum quo.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(14, 2, 1, 'Distinctio rerum error totam.', 'mollitia-beatae-velit', NULL, 'Assumenda labore impedit quas quasi vero et. Asperiores iusto dolores ut. Sed beatae saepe velit reiciendis in quae sunt.', '<p>Aut eveniet autem non sint consequuntur. Nemo rem aut consequuntur quis voluptas odio voluptatem. Ab et et delectus fugiat. Voluptas quia modi consequuntur enim beatae a officia iusto.</p><p>Molestiae recusandae in ea sed quis. Eius rerum porro amet praesentium est.</p><p>Occaecati explicabo qui vero minus accusantium temporibus. Doloremque repudiandae quos sint quod eum natus. Et eius quo quia nesciunt. Voluptatem nam perspiciatis libero placeat ducimus aperiam consectetur ad.</p><p>Perferendis magnam voluptatum cum impedit consequatur voluptatem voluptas. Consectetur qui ut magni sint necessitatibus. Maxime quaerat est illum ut officiis.</p><p>Nihil ab a aliquam aperiam. Ut enim asperiores repellendus aliquam. Et odio dignissimos nihil praesentium id.</p><p>Corrupti rerum quaerat animi praesentium. Fuga sint pariatur et earum ipsam aliquid. Quae enim nihil libero minima impedit. Et cupiditate voluptatem molestiae totam. In doloremque voluptas ab nobis deserunt dolores id facilis.</p><p>Assumenda incidunt veritatis ipsa a atque officiis. Excepturi consequuntur non ipsam sed sed. Qui illo sit aperiam in optio est est et.</p><p>Et ut molestiae et vel ratione quo natus. Provident ipsam labore et corporis voluptatibus aut quibusdam. Facere dolorem nostrum dolores quia illo non.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(15, 3, 3, 'Qui aliquid tempora.', 'et-totam-ut', NULL, 'Voluptatibus eius aspernatur nostrum cumque et voluptatem dolorem architecto. Quisquam modi nobis modi eligendi aut id magni. Nihil ipsum ducimus quia enim earum placeat. Vel tempore minima officia.', '<p>Recusandae corrupti illum aut. A maxime quo nihil esse impedit. Ex quam aperiam reprehenderit ullam rerum. Hic est quia et.</p><p>Ut quo ipsam possimus quae ut. Ut officia magnam similique maiores sed totam optio quaerat. Non totam sint at in quos et nulla.</p><p>Laudantium voluptas doloremque placeat eos non dolore. Enim aliquid et dolor odit eligendi qui officiis. Dolores consequatur aut numquam nostrum tempora veritatis iure velit.</p><p>Voluptatem consequuntur in occaecati iusto. Vitae eos voluptas consequatur culpa expedita. Corrupti tempora omnis in praesentium officia et. Suscipit aut voluptatem nisi voluptate eveniet odit nihil. Voluptates voluptates quod enim nostrum accusantium saepe neque.</p><p>Et et beatae aut minus corporis numquam sed. Exercitationem impedit voluptatibus voluptatibus recusandae ducimus. Ut aut et hic ullam. Ut ut eum tempore explicabo corporis.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(16, 1, 2, 'Explicabo soluta accusamus.', 'qui-nesciunt-perferendis', NULL, 'Aliquid corrupti sed quis sed. Et molestias sint est incidunt. Est pariatur sit quae recusandae aut vero sit. Ab ipsam non ducimus aut molestiae ut et consectetur. Recusandae distinctio facere ut nam repudiandae.', '<p>Molestias tempore a magnam dolores. Vel omnis et qui fugiat dicta illum. Aut deleniti fugiat ut fugit laborum ullam laudantium.</p><p>Qui libero blanditiis nam velit neque ducimus. Eveniet a enim veritatis sunt. Nobis inventore rerum voluptate error facere.</p><p>Eius voluptas laudantium eos non vitae. Rerum et voluptas id cupiditate et ut reiciendis. Est velit aut sunt maxime perferendis rerum.</p><p>Aut rerum commodi nostrum vel et sunt iusto. Quam labore quo id quae nesciunt recusandae placeat. Praesentium minima autem saepe. Dolorem qui eveniet laborum aliquam qui voluptas.</p><p>Est nisi quisquam nulla dolorem esse aut nesciunt. Veritatis doloribus est corporis inventore quidem et. Nam alias expedita aperiam sunt illum.</p><p>Voluptates voluptatem ex molestias et repudiandae iusto et saepe. Cum quam quia iste qui consectetur. Qui et tenetur qui recusandae nihil et dolore.</p><p>Perferendis deleniti et assumenda qui in esse. Commodi iste animi ratione qui placeat ipsa ducimus. Repellendus est quae nostrum qui fuga quam. Vero debitis aut aut dolores ipsam.</p><p>Velit ut blanditiis quidem nihil eveniet quae ducimus. Laboriosam et qui harum consequatur natus et. Autem perferendis sit quae vel nam sit. Repellat sequi libero reprehenderit ipsam officiis.</p><p>Aut similique facilis et laudantium sed quo inventore. Dolor sapiente architecto ipsum quos animi et unde. Et quo incidunt aut. Ut quisquam eum similique eius possimus perspiciatis vitae.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(17, 3, 3, 'Sint deleniti.', 'fuga-facilis-voluptatibus', NULL, 'Harum id nesciunt aut sit itaque sint assumenda explicabo. Laborum est et eos voluptate inventore. Earum accusantium sapiente dolorem animi cum dolores nihil. Rem corporis consequatur sunt rerum ad aperiam.', '<p>Delectus sunt ipsa ut quidem nihil quia. Quia nihil quod omnis quia. Est quia deleniti dolorem quis quia dicta et.</p><p>Laboriosam tempore quia veritatis ipsam omnis veritatis. Aspernatur neque et quidem qui aliquid id.</p><p>Tempora est et cumque odio suscipit. Dolorem itaque aspernatur doloremque voluptas quaerat temporibus rerum. Provident et aut facere quaerat. Labore qui voluptatem nostrum soluta. Nam quos officia aperiam sed.</p><p>Modi adipisci non alias aut ipsa assumenda nulla. Voluptatem magni fuga tenetur aut voluptas repellendus. Laborum quibusdam occaecati accusamus sint. Itaque officiis eos aut rerum et. Necessitatibus et sit at sed.</p><p>Qui debitis quae ipsa et. Sequi quo beatae nobis porro. Reprehenderit est vero eius.</p><p>Quisquam consectetur impedit non voluptas eum. Fuga dignissimos maiores temporibus molestias temporibus similique. Voluptatem distinctio neque et praesentium veritatis nihil eaque.</p><p>Necessitatibus saepe similique dolorem sapiente. Et deleniti dicta aut nulla nulla laboriosam. Atque exercitationem iste quaerat blanditiis atque.</p><p>Qui vel qui dolor non. Quaerat et est veritatis recusandae quis. Ut nulla repudiandae dolor corporis modi.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(18, 1, 1, 'Temporibus possimus doloribus.', 'debitis-ea', NULL, 'Veritatis sed ipsa corrupti. Magni est id dicta fuga sint autem perferendis. Rerum maiores laboriosam alias iure praesentium consequuntur quae. Similique accusantium molestiae nostrum. Aut enim nobis vel aut earum.', '<p>Ut magni incidunt et id aut sit. Quam error praesentium facere. Consequuntur fuga accusamus incidunt accusamus reprehenderit laboriosam.</p><p>Dicta quo voluptas qui saepe repellendus consequatur temporibus. Eligendi iusto itaque ut quo maxime aperiam doloribus fugiat. Omnis in eveniet nihil harum corrupti odit.</p><p>Quibusdam ratione tenetur sit vitae. Molestiae aut maxime ea. Ex porro ipsum itaque dignissimos similique neque nesciunt.</p><p>Reiciendis qui labore praesentium blanditiis sit quibusdam hic. Molestiae et consequatur tenetur blanditiis harum doloribus illum. Officia tempora itaque perspiciatis asperiores.</p><p>Qui eligendi ut rerum. Incidunt qui rerum aut. Earum ut deserunt harum amet consequatur culpa vitae. Atque similique voluptatem architecto sit sunt molestiae voluptatum est.</p><p>Odit voluptatum temporibus suscipit assumenda aut delectus. Consectetur delectus eum quod occaecati repellat quasi beatae. Quos maiores molestiae tempore dolorum error.</p><p>Odit alias consectetur vel. Ut officiis iste temporibus autem possimus magni voluptas. Blanditiis doloribus officia enim et nihil. Et dolores at quaerat totam excepturi.</p><p>Est laborum enim fugit similique praesentium quam esse non. Iusto excepturi aut est soluta rem qui ab. Molestiae recusandae nihil sunt voluptatem. Quis ducimus consectetur velit eius iusto. Sapiente quaerat architecto exercitationem repellat unde rem.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(19, 3, 1, 'Veniam optio veniam id.', 'omnis-aut-sint', NULL, 'Suscipit eaque doloremque voluptatem atque. Nisi sint quo quaerat adipisci dolores. Aperiam dolore beatae mollitia rerum ipsum eos.', '<p>Voluptatum quam et maxime quaerat tempore qui dolore. Autem cupiditate repellat iure at et officiis.</p><p>Quia ad eaque delectus debitis. Ab ut aspernatur non. Quisquam ut accusamus occaecati mollitia dolores. Ipsum sunt animi est nihil placeat omnis.</p><p>Veniam vitae ex ea id eum eligendi laudantium quis. Perferendis iure atque neque est reiciendis. Velit aut modi molestiae. Unde quaerat dignissimos impedit consequatur aperiam nisi excepturi recusandae.</p><p>Corrupti deleniti quisquam error. Consequatur amet explicabo laudantium eos qui sequi deserunt. Rem quia suscipit debitis hic.</p><p>Et adipisci excepturi est quasi. Quis eius ut a impedit dignissimos. Modi delectus quibusdam nihil qui autem tenetur. Sunt doloribus et deleniti perspiciatis.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(20, 3, 2, 'Qui dolores dolorum.', 'repudiandae-iste-fuga', NULL, 'Expedita fuga totam quia et ut dolore. Nobis temporibus quis aliquid temporibus corporis inventore natus. Ullam consequatur veniam nam et illum voluptatem suscipit voluptate.', '<p>Voluptatem non fuga qui sed reiciendis. Consequatur nobis libero odio quo. Et voluptas in ut est non laudantium. Magnam corporis eaque sit ex exercitationem odio molestias.</p><p>Aut quam libero consequatur optio dolorum accusantium aut. Sed maiores quod voluptatem voluptas ad velit nihil. Aut officia enim dolor quibusdam velit.</p><p>Cum molestiae voluptate dolorem sed aut officia voluptates. Odit similique natus fugit repudiandae. Mollitia odio ut esse exercitationem eligendi expedita repellendus et. Rerum quibusdam impedit qui quia accusamus.</p><p>Quia quibusdam consequatur dolorem mollitia cumque debitis. Fugiat velit voluptatem consequuntur quia quia enim. Sunt fugit placeat fugiat quia voluptas architecto alias.</p><p>Sequi dolor nisi et. Asperiores soluta nisi temporibus ut harum aut numquam. Alias exercitationem ea est mollitia occaecati. Aliquid molestiae omnis earum in ipsa nesciunt.</p><p>Qui soluta voluptatum rem aperiam omnis quis. Unde animi ipsa est fuga ut necessitatibus. Voluptatibus inventore atque tempora non consequatur ipsam.</p><p>Reiciendis aut provident exercitationem architecto. Nihil nesciunt tenetur molestiae quas est. Ut omnis natus quod magnam et rerum. Aut et omnis eum voluptatem nihil ut animi.</p>', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28'),
(22, 2, 1, 'rewat', 'rewat', 'post-images/AhFGBk0VvL8PwL0SfTX58UuKnHupqViyCcQaaq8s.jpg', 'Lorem ipsu...', '<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Maiores iste vero provident mollitia eos totam error cupiditate voluptatem sequi corrupti? Incidunt tempore magnam inventore nisi non ex aperiam eligendi. Unde quo cumque corporis eius. Obcaecati blanditiis corrupti fugiat porro quia. Reiciendis animi consequuntur corrupti nisi quod! Ab animi natus voluptatibus doloremque illum qui alias nam nihil repellendus et quia obcaecati perferendis exercitationem laudantium, nobis facere aut sunt beatae eligendi placeat hic sed asperiores amet optio. Sint quam at itaque fuga voluptates sit error cum rem laboriosam repudiandae maiores consequuntur omnis, delectus minus incidunt accusamus autem recusandae ducimus tempora numquam, amet fugit. Sit inventore repellat soluta aperiam iure, perferendis nostrum ducimus esse eum possimus, minima eos saepe autem illum placeat molestiae est natus aliquid iusto adipisci odit beatae iste explicabo dicta? Officiis, autem vitae, at officia odio non nihil, perferendis repellat nesciunt aliquid dolor blanditiis quaerat voluptate aspernatur! Aperiam vero id rerum illo ipsa magnam amet voluptates facere! Totam ea, modi nulla optio molestias culpa inventore, voluptas in quasi non fugit alias? Dolorem laboriosam, dolore consectetur autem iusto minus delectus deleniti exercitationem maxime sint quaerat fugit doloremque eum incidunt recusandae est doloribus sunt illo! Repellat voluptatibus, blanditiis ea dolorem veritatis exercitationem.&nbsp;<br><br>Minus possimus, inventore at, iure aut sint mollitia dignissimos soluta alias reiciendis recusandae nulla similique impedit deserunt itaque quibusdam ipsa illo hic. Qui dolor accusamus voluptates nostrum impedit recusandae, ut aspernatur nihil adipisci, harum optio enim, labore maxime dolores ad voluptatibus animi commodi magnam aut? Facilis commodi rem dicta, alias saepe, quo iste corporis atque dolores recusandae cupiditate, modi asperiores. Optio, esse ullam. Nostrum rerum aliquid, tempora, saepe quod incidunt laborum assumenda rem itaque suscipit quos, ad doloribus aliquam. Dolor saepe dolorum nobis ratione autem, debitis ad aut distinctio eaque quos ipsa dolore a asperiores? Dignissimos amet nihil sit? Earum doloremque nesciunt, aliquam veritatis sapiente hic labore perferendis quae rerum modi, illum sit dolorum rem vero dolorem, incidunt recusandae. Eum modi expedita consectetur tenetur vero impedit a perspiciatis unde, aliquid, hic ut, dolore qui accusantium non est quas asperiores. Ab praesentium natus iste, maxime, animi voluptate necessitatibus doloribus dolores quisquam magni molestias blanditiis impedit nostrum dolorem, officiis iusto delectus repellat cumque ipsam! Earum cumque ducimus possimus aliquam nam explicabo nostrum exercitationem reiciendis sint, cum natus iusto quos voluptatibus alias vero.&nbsp;<br><br>Maiores iusto repellat ipsum molestias doloribus? Sed ea dolores nam adipisci ex, soluta veritatis consequatur voluptate magni, eveniet sapiente, quo asperiores necessitatibus. Atque eum porro pariatur, iure ducimus explicabo similique iste. Repudiandae id nesciunt inventore minima, vitae, accusantium laudantium animi ipsum molestias accusamus velit ab nobis doloremque iste est itaque reiciendis aliquid voluptates ex error nisi provident? Est at veritatis facere ullam voluptatem iste sequi, quae maxime, omnis cumque perspiciatis fugiat impedit facilis architecto! Blanditiis labore asperiores error, ipsa, ex officia impedit debitis delectus, eos quisquam facilis vero? Dicta cumque corporis explicabo nihil dolorem laborum eligendi maxime maiores, distinctio expedita, accusamus earum illo modi consectetur. Sunt fugiat ex esse dignissimos laudantium et aut sequi non, nisi libero quam itaque nam!</div>', NULL, '2022-04-23 02:59:20', '2022-04-23 02:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$IDlQwGcd92vqL6yF.h5Dzu516HFxencJV6vyI7d3eI5ijGhQr1MTK', NULL, '2022-04-23 02:19:28', '2022-04-23 02:19:28', 1),
(2, 'Cakrawangsa Iswahyudi', 'jaswadi50', 'zwijaya@gmail.com', '2022-04-23 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KV9G8XgkiGM7rWKfi7C6XkudO8EjfxazzVR0cAvZ7X0Ju5mhdEvN5tbB0O9u', '2022-04-23 02:19:28', '2022-04-23 02:19:28', 0),
(3, 'Nilam Lintang Pudjiastuti M.M.', 'sakura25', 'pangeran81@example.org', '2022-04-23 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OBa776fRh9', '2022-04-23 02:19:28', '2022-04-23 02:19:28', 0),
(4, 'Ira Usyi Widiastuti', 'widiastuti.rama', 'cramadan@example.net', '2022-04-23 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xoWFxjSYMz', '2022-04-23 02:19:28', '2022-04-23 02:19:28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
