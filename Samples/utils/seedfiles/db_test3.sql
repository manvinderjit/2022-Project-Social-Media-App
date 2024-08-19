-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2022 at 05:34 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test3`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `postId` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `postId` (`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`postId`, `id`, `name`, `email`, `body`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'id labore ex et quam laborum', 'Sincere@april.biz', 'laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 2, 'quo vero reiciendis velit similique earum', 'Shanna@melissa.tv', 'est natus enim nihil est dolore omnis voluptatem numquam\net omnis occaecati quod ullam at\nvoluptatem error expedita pariatur\nnihil sint nostrum voluptatem reiciendis et', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 3, 'repellat consequatur praesentium vel minus molestias voluptatum', 'Sincere@april.biz', 'maiores sed dolores similique labore et inventore et\nquasi temporibus esse sunt id et\neos voluptatem aliquam\naliquid ratione corporis molestiae mollitia quia et magnam dolor', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 4, 'vero eaque aliquid doloribus et culpa', 'Lucio@annie.ca', 'harum non quasi et ratione\ntempore iure ex voluptates in ratione\nharum architecto fugit inventore cupiditate\nvoluptates magni quo et', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 5, 'alias odio sit', 'Julianne@kory.org', 'non et atque\noccaecati deserunt quas accusantium unde odit nobis qui voluptatem\nquia voluptas consequuntur itaque dolor\net qui rerum deleniti ut occaecati', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 6, 'odio adipisci rerum aut animi', 'Nathan@yesenia.net', 'quia molestiae reprehenderit quasi aspernatur\naut expedita occaecati aliquam eveniet laudantium\nomnis quibusdam delectus saepe quia accusamus maiores nam est\ncum et ducimus et vero voluptates excepturi deleniti ratione', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 7, 'et fugit eligendi deleniti quidem qui sint nihil autem', 'Lucio@annie.ca', 'doloribus at sed quis culpa deserunt consectetur qui praesentium\naccusamus fugiat dicta\nvoluptatem rerum ut voluptate autem\nvoluptatem repellendus aspernatur dolorem in', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 8, 'fugit labore quia mollitia quas deserunt nostrum sunt', 'Julianne@kory.org', 'ut dolorum nostrum id quia aut est\nfuga est inventore vel eligendi explicabo quis consectetur\naut occaecati repellat id natus quo est\nut blanditiis quia ut vel ut maiores ea', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 9, 'et omnis dolorem', 'Shanna@melissa.tv', 'ut voluptatem corrupti velit\nad voluptatem maiores\net nisi velit vero accusamus maiores\nvoluptates quia aliquid ullam eaque', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 10, 'provident id voluptas', 'Nathan@yesenia.net', 'sapiente assumenda molestiae atque\nadipisci laborum distinctio aperiam et ab ut omnis\net occaecati aspernatur odit sit rem expedita\nquas enim ipsam minus', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 11, 'eaque et deleniti atque tenetur ut quo ut', 'Julianne@kory.org', 'voluptate iusto quis nobis reprehenderit ipsum amet nulla\nquia quas dolores velit et non\naut quia necessitatibus\nnostrum quaerat nulla et accusamus nisi facilis', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 12, 'aut inventore non pariatur sit vitae voluptatem sapiente', 'Sincere@april.biz', 'fuga eos qui dolor rerum\ninventore corporis exercitationem\ncorporis cupiditate et deserunt recusandae est sed quis culpa\neum maiores corporis et', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 13, 'et officiis id praesentium hic aut ipsa dolorem repudiandae', 'Shanna@melissa.tv', 'vel quae voluptas qui exercitationem\nvoluptatibus unde sed\nminima et qui ipsam aspernatur\nexpedita magnam laudantium et et quaerat ut qui dolorum', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 14, 'debitis magnam hic odit aut ullam nostrum tenetur', 'Nathan@yesenia.net', 'nihil ut voluptates blanditiis autem odio dicta rerum\nquisquam saepe et est\nsunt quasi nemo laudantium deserunt\nmolestias tempora quo quia', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 15, 'modi ut eos dolores illum nam dolor', 'Lucio@annie.ca', 'expedita maiores dignissimos facilis\nipsum est rem est fugit velit sequi\neum odio dolores dolor totam\noccaecati ratione eius rem velit', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 16, 'eos est animi quis', 'Julianne@kory.org', 'consequatur necessitatibus totam sed sit dolorum\nrecusandae quae odio excepturi voluptatum harum voluptas\nquisquam sit ad eveniet delectus\ndoloribus odio qui non labore', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 17, 'aut et tenetur ducimus illum aut nulla ab', 'Lucio@annie.ca', 'veritatis voluptates necessitatibus maiores corrupti\nneque et exercitationem amet sit et\nullam velit sit magnam laborum\nmagni ut molestias', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 18, 'molestias expedita iste aliquid voluptates', 'Shanna@melissa.tv', 'qui harum consequatur fugiat\net eligendi perferendis at molestiae commodi ducimus\ndoloremque asperiores numquam qui\nut sit dignissimos reprehenderit tempore', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 19, 'perferendis temporibus delectus optio ea eum ratione dolorum', 'Nathan@yesenia.net', 'iste ut laborum aliquid velit facere itaque\nquo ut soluta dicta voluptate\nerror tempore aut et\nsequi reiciendis dignissimos expedita consequuntur libero sed fugiat facilis', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 20, 'sed impedit rerum quia et et inventore unde officiis', 'Sincere@april.biz', 'doloribus est illo sed minima aperiam\nut dignissimos accusantium tempore atque et aut molestiae\nmagni ut accusamus voluptatem quos ut voluptates\nquisquam porro sed architecto ut', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 21, 'aliquid rerum mollitia qui a consectetur eum sed', 'Shanna@melissa.tv', 'deleniti aut sed molestias explicabo\ncommodi odio ratione nesciunt\nvoluptate doloremque est\nnam autem error delectus', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 22, 'porro repellendus aut tempore quis hic', 'Nathan@yesenia.net', 'qui ipsa animi nostrum praesentium voluptatibus odit\nqui non impedit cum qui nostrum aliquid fuga explicabo\nvoluptatem fugit earum voluptas exercitationem temporibus dignissimos distinctio\nesse inventore reprehenderit quidem ut incidunt nihil necessitatibus rerum', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 23, 'quis tempora quidem nihil iste', 'Julianne@kory.org', 'voluptates provident repellendus iusto perspiciatis ex fugiat ut\nut dolor nam aliquid et expedita voluptate\nsunt vitae illo rerum in quos\nvel eligendi enim quae fugiat est', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 24, 'in tempore eos beatae est', 'Lucio@annie.ca', 'repudiandae repellat quia\nsequi est dolore explicabo nihil et\net sit et\net praesentium iste atque asperiores tenetur', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(6, 25, 'in deleniti sunt provident soluta ratione veniam quam praesentium', 'Lucio@annie.ca', 'incidunt sapiente eaque dolor eos\nad est molestias\nquas sit et nihil exercitationem at cumque ullam\nnihil magnam et', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 26, 'autem ab ea sit alias hic provident sit', 'Sincere@april.biz', 'sunt aut quae laboriosam sit ut impedit\nadipisci harum laborum totam deleniti voluptas odit rem ea\nnon iure distinctio ut velit doloribus\net non ex', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(6, 27, 'doloribus quibusdam molestiae amet illum', 'Shanna@melissa.tv', 'nisi vel quas ut laborum ratione\nrerum magni eum\nunde et voluptatem saepe\nvoluptas corporis modi amet ipsam eos saepe porro', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(6, 28, 'quo voluptates voluptas nisi veritatis dignissimos dolores ut officiis', 'Nathan@yesenia.net', 'voluptatem repellendus quo alias at laudantium\nmollitia quidem esse\ntemporibus consequuntur vitae rerum illum\nid corporis sit id', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(7, 29, 'ex velit ut cum eius odio ad placeat', 'Julianne@kory.org', 'quia incidunt ut\naliquid est ut rerum deleniti iure est\nipsum quia ea sint et\nvoluptatem quaerat eaque repudiandae eveniet aut', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(6, 30, 'eum distinctio amet dolor', 'Julianne@kory.org', 'tempora voluptatem est\nmagnam distinctio autem est dolorem\net ipsa molestiae odit rerum itaque corporis nihil nam\neaque rerum error', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(6, 31, 'quasi nulla ducimus facilis non voluptas aut', 'Sincere@april.biz', 'consequuntur quia voluptate assumenda et\nautem voluptatem reiciendis ipsum animi est provident\nearum aperiam sapiente ad vitae iste\naccusantium aperiam eius qui dolore voluptatem et', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(7, 32, 'dolorem architecto ut pariatur quae qui suscipit', 'Lucio@annie.ca', 'nihil ea itaque libero illo\nofficiis quo quo dicta inventore consequatur voluptas voluptatem\ncorporis sed necessitatibus velit tempore\nrerum velit et temporibus', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(7, 33, 'voluptatum totam vel voluptate omnis', 'Shanna@melissa.tv', 'fugit harum quae vero\nlibero unde tempore\nsoluta eaque culpa sequi quibusdam nulla id\net et necessitatibus', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(7, 34, 'omnis nemo sunt ab autem', 'Sincere@april.biz', 'omnis temporibus quasi ab omnis\nfacilis et omnis illum quae quasi aut\nminus iure ex rem ut reprehenderit\nin non fugit', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(7, 35, 'repellendus sapiente omnis praesentium aliquam ipsum id molestiae omnis', 'Nathan@yesenia.net', 'dolor mollitia quidem facere et\nvel est ut\nut repudiandae est quidem dolorem sed atque\nrem quia aut adipisci sunt', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(8, 36, 'sit et quis', 'Lucio@annie.ca', 'aut vero est\ndolor non aut excepturi dignissimos illo nisi aut quas\naut magni quia nostrum provident magnam quas modi maxime\nvoluptatem et molestiae', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(8, 37, 'beatae veniam nemo rerum voluptate quam aspernatur', 'Julianne@kory.org', 'qui rem amet aut\ncumque maiores earum ut quia sit nam esse qui\niusto aspernatur quis voluptas\ndolorem distinctio ex temporibus rem', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(8, 38, 'maiores dolores expedita', 'Sincere@april.biz', 'unde voluptatem qui dicta\nvel ad aut eos error consequatur voluptatem\nadipisci doloribus qui est sit aut\nvelit aut et ea ratione eveniet iure fuga', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(8, 39, 'necessitatibus ratione aut ut delectus quae ut', 'Shanna@melissa.tv', 'atque consequatur dolorem sunt\nadipisci autem et\nvoluptatibus et quae necessitatibus rerum eaque aperiam nostrum nemo\neligendi sed et beatae et inventore', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(8, 40, 'non minima omnis deleniti pariatur facere quibusdam at', 'Nathan@yesenia.net', 'quod minus alias quos\nperferendis labore molestias quae ut ut corporis deserunt vitae\net quaerat ut et ullam unde asperiores\ncum voluptatem cumque', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(9, 41, 'voluptas deleniti ut', 'Lucio@annie.ca', 'facere repudiandae vitae ea aut sed quo ut et\nfacere nihil ut voluptates in\nsaepe cupiditate accusantium numquam dolores\ninventore sint mollitia provident', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(9, 42, 'autem illo facilis', 'Shanna@melissa.tv', 'ipsum odio harum voluptatem sunt cumque et dolores\nnihil laboriosam neque commodi qui est\nquos numquam voluptatum\ncorporis quo in vitae similique cumque tempore', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(9, 43, 'nam qui et', 'Sincere@april.biz', 'aut culpa quaerat veritatis eos debitis\naut repellat eius explicabo et\nofficiis quo sint at magni ratione et iure\nincidunt quo sequi quia dolorum beatae qui', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(9, 44, 'molestias sint est voluptatem modi', 'Julianne@kory.org', 'voluptatem ut possimus laborum quae ut commodi delectus\nin et consequatur\nin voluptas beatae molestiae\nest rerum laborum et et velit sint ipsum dolorem', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(9, 45, 'hic molestiae et fuga ea maxime quod', 'Nathan@yesenia.net', 'qui sunt commodi\nsint vel optio vitae quis qui non distinctio\nid quasi modi dicta\neos nihil sit inventore est numquam officiis', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(10, 46, 'rerum commodi est non dolor nesciunt ut', 'Lucio@annie.ca', 'occaecati laudantium ratione non cumque\nearum quod non enim soluta nisi velit similique voluptatibus\nesse laudantium consequatur voluptatem rem eaque voluptatem aut ut\net sit quam', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(10, 47, 'rerum placeat quae minus iusto eligendi', 'Julianne@kory.org', 'id est iure occaecati quam similique enim\nab repudiandae non\nillum expedita quam excepturi soluta qui placeat\nperspiciatis optio maiores non doloremque aut iusto sapiente', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(10, 48, 'dignissimos et deleniti voluptate et quod', 'Sincere@april.biz', 'exercitationem et id quae cum omnis\nvoluptatibus accusantium et quidem\nut ipsam sint\ndoloremque illo ex atque necessitatibus sed', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(10, 49, 'consequatur animi dolorem saepe repellendus ut quo aut tenetur', 'Nathan@yesenia.net', 'illum et alias quidem magni voluptatum\nab soluta ea qui saepe corrupti hic et\ncum repellat esse\nest sint vel veritatis officia consequuntur cum', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(11, 50, 'molestias et odio ut commodi omnis ex', 'Sincere@april.biz', 'perferendis omnis esse\nvoluptate sit mollitia sed perferendis\nnemo nostrum qui\nvel quis nisi doloribus animi odio id quas', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(10, 51, 'dolorum soluta quidem ex quae occaecati dicta aut doloribus', 'Shanna@melissa.tv', 'eum accusamus aut delectus\narchitecto blanditiis quia sunt\nrerum harum sit quos quia aspernatur vel corrupti inventore\nanimi dicta vel corporis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(11, 52, 'esse autem dolorum', 'Lucio@annie.ca', 'et enim voluptatem totam laudantium\nimpedit nam labore repellendus enim earum aut\nconsectetur mollitia fugit qui repellat expedita sunt\naut fugiat vel illo quos aspernatur ducimus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(11, 53, 'maiores alias necessitatibus aut non', 'Nathan@yesenia.net', 'a at tempore\nmolestiae odit qui dolores molestias dolorem et\nlaboriosam repudiandae placeat quisquam\nautem aperiam consectetur maiores laboriosam nostrum', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(12, 54, 'et dolorem corrupti sed molestias', 'Sincere@april.biz', 'cum esse odio nihil reiciendis illum quaerat\nest facere quia\noccaecati sit totam fugiat in beatae\nut occaecati unde vitae nihil quidem consequatur', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(12, 55, 'sint minus reiciendis qui perspiciatis id', 'Nathan@yesenia.net', 'veritatis qui nihil\nquia reprehenderit non ullam ea iusto\nconsectetur nam voluptas ut temporibus tempore provident error\neos et nisi et voluptate', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(11, 56, 'culpa eius tempora sit consequatur neque iure deserunt', 'Shanna@melissa.tv', 'et ipsa rem ullam cum pariatur similique quia\ncum ipsam est sed aut inventore\nprovident sequi commodi enim inventore assumenda aut aut\ntempora possimus soluta quia consequatur modi illo', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(11, 57, 'quas pariatur quia a doloribus', 'Julianne@kory.org', 'perferendis eaque labore laudantium ut molestiae soluta et\nvero odio non corrupti error pariatur consectetur et\nenim nam quia voluptatum non\nmollitia culpa facere voluptas suscipit veniam', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(12, 58, 'qui quidem sed', 'Shanna@melissa.tv', 'dolorem facere itaque fuga odit autem\nperferendis quisquam quis corrupti eius dicta\nrepudiandae error esse itaque aut\ncorrupti sint consequatur aliquid', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(12, 59, 'quis ducimus distinctio similique et illum minima ab libero', 'Julianne@kory.org', 'cumque molestiae officia aut fugiat nemo autem\nvero alias atque sed qui ratione quia\nrepellat vel earum\nea laudantium mollitia', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(13, 60, 'quidem itaque dolores quod laborum aliquid molestiae', 'Lucio@annie.ca', 'deserunt cumque laudantium\net et odit quia sint quia quidem\nquibusdam debitis fuga in tempora deleniti\nimpedit consequatur veniam reiciendis autem porro minima', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(13, 61, 'libero beatae consequuntur optio est hic', 'Shanna@melissa.tv', 'tempore dolorum corrupti facilis\npraesentium sunt iste recusandae\nunde quisquam similique\nalias consequuntur voluptates velit', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(13, 62, 'occaecati dolor accusantium et quasi architecto aut eveniet fugiat', 'Sincere@april.biz', 'aut eligendi et molestiae voluptatum tempora\nofficia nihil sit voluptatem aut deleniti\nquaerat consequatur eaque\nsapiente tempore commodi tenetur rerum qui quo', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(12, 63, 'expedita libero quos cum commodi ad', 'Lucio@annie.ca', 'error eum quia voluptates alias repudiandae\naccusantium veritatis maiores assumenda\nquod impedit animi tempore veritatis\nanimi et et officiis labore impedit blanditiis repudiandae', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(13, 64, 'consequatur aut ullam voluptas dolorum voluptatum sequi et', 'Nathan@yesenia.net', 'sed illum quis\nut aut culpa labore aspernatur illo\ndolorem quia vitae ut aut quo repellendus est omnis\nesse at est debitis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(14, 65, 'eius nam consequuntur', 'Shanna@melissa.tv', 'necessitatibus libero occaecati\nvero inventore iste assumenda veritatis\nasperiores non sit et quia omnis facere nemo explicabo\nodit quo nobis porro', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(13, 66, 'earum ea ratione numquam', 'Julianne@kory.org', 'qui debitis vitae ratione\ntempora impedit aperiam porro molestiae placeat vero laboriosam recusandae\npraesentium consequatur facere et itaque quidem eveniet\nmagnam natus distinctio sapiente', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(14, 67, 'omnis consequatur natus distinctio', 'Nathan@yesenia.net', 'nulla quo itaque beatae ad\nofficiis animi aut exercitationem voluptatum dolorem doloremque ducimus in\nrecusandae officia consequuntur quas\naspernatur dolores est esse dolores sit illo laboriosam quaerat', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(15, 68, 'quia sunt dolor dolor suscipit expedita quis', 'Julianne@kory.org', 'quisquam voluptas ut\npariatur eos amet non\nreprehenderit voluptates numquam\nin est voluptatem dicta ipsa qui esse enim', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(14, 69, 'architecto ut deserunt consequatur cumque sapiente', 'Julianne@kory.org', 'sed magni accusantium numquam quidem omnis et voluptatem beatae\nquos fugit libero\nvel ipsa et nihil recusandae ea\niste nemo qui optio sit enim ut nostrum odit', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(14, 70, 'at aut ea iure accusantium voluptatum nihil ipsum', 'Sincere@april.biz', 'omnis dolor autem qui est natus\nautem animi nemo voluptatum aut natus accusantium iure\ninventore sunt ea tenetur commodi suscipit facere architecto consequatur\ndolorem nihil veritatis consequuntur corporis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(14, 71, 'eum magni accusantium labore aut cum et tenetur', 'Lucio@annie.ca', 'omnis aliquam praesentium ad voluptatem harum aperiam dolor autem\nhic asperiores quisquam ipsa necessitatibus suscipit\npraesentium rem deserunt et\nfacere repellendus aut sed fugit qui est', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(15, 72, 'vel pariatur perferendis vero ab aut voluptates labore', 'Shanna@melissa.tv', 'mollitia magnam et\nipsum consequatur est expedita\naut rem ut ex doloremque est vitae est\ncumque velit recusandae numquam libero dolor fuga fugit a', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(15, 73, 'ut non illum pariatur dolor', 'Nathan@yesenia.net', 'non accusamus eum aut et est\naccusantium animi nesciunt distinctio ea quas quisquam\nsit ut voluptatem modi natus sint\nfacilis est qui molestias recusandae nemo', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(16, 74, 'porro ut soluta repellendus similique', 'Sincere@april.biz', 'sunt qui consequatur similique recusandae repellendus voluptates eos et\nvero nostrum fugit magnam aliquam\nreprehenderit nobis voluptatem eos consectetur possimus\net perferendis qui ea fugiat sit doloremque', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(15, 75, 'ut quia ipsa repellat sunt et sequi aut est', 'Lucio@annie.ca', 'nam qui possimus deserunt\ninventore dignissimos nihil rerum ut consequatur vel architecto\ntenetur recusandae voluptate\nnumquam dignissimos aliquid ut reprehenderit voluptatibus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(15, 76, 'minus laboriosam consequuntur', 'Sincere@april.biz', 'natus numquam enim asperiores doloremque ullam et\nest molestias doloribus cupiditate labore vitae aut voluptatem\nitaque quos quo consectetur nihil illum veniam\nnostrum voluptatum repudiandae ut', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(16, 77, 'beatae ut ad quisquam sed repellendus et', 'Julianne@kory.org', 'et inventore sapiente sed\nsunt similique fugiat officia velit doloremque illo eligendi quas\nsed rerum in quidem perferendis facere molestias\ndolore dolor voluptas nam vel quia', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(16, 78, 'dolores et quo omnis voluptates', 'Shanna@melissa.tv', 'eos ullam dolorem impedit labore mollitia\nrerum non dolores\nmolestiae dignissimos qui maxime sed voluptate consequatur\ndoloremque praesentium magnam odio iste quae totam aut', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(16, 79, 'voluptas voluptas voluptatibus blanditiis', 'Nathan@yesenia.net', 'qui adipisci eveniet excepturi iusto magni et\nenim ducimus asperiores blanditiis nemo\ncommodi nihil ex\nenim rerum vel nobis nostrum et non', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(16, 80, 'et cumque ad culpa ut eligendi non', 'Lucio@annie.ca', 'dignissimos itaque ab et tempore odio omnis voluptatem\nitaque perferendis rem repellendus tenetur nesciunt velit\nqui cupiditate recusandae\nquis debitis dolores aliquam nam', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(17, 81, 'quia voluptatibus magnam voluptatem optio vel perspiciatis', 'Julianne@kory.org', 'ratione ut magni voluptas\nexplicabo natus quia consequatur nostrum aut\nomnis enim in qui illum\naut atque laboriosam aliquid blanditiis quisquam et laborum', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(17, 82, 'aut non consequuntur dignissimos voluptatibus dolorem earum recusandae dolorem', 'Lucio@annie.ca', 'illum et voluptatem quis repellendus quidem repellat\nreprehenderit voluptas consequatur mollitia\npraesentium nisi quo quod et\noccaecati repellendus illo eius harum explicabo doloribus officia', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(17, 83, 'ea est non dolorum iste nihil est', 'Sincere@april.biz', 'officiis dolorem voluptas aliquid eveniet tempora qui\nea temporibus labore accusamus sint\nut sunt necessitatibus voluptatum animi cumque\nat reiciendis voluptatem iure aliquid et qui dolores et', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(17, 84, 'nihil qui accusamus ratione et molestias et minus', 'Shanna@melissa.tv', 'et consequatur voluptates magnam fugit sunt repellendus nihil earum\nofficiis aut cupiditate\net distinctio laboriosam\nmolestiae sunt dolor explicabo recusandae', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(18, 85, 'suscipit est sunt vel illum sint', 'Nathan@yesenia.net', 'eum culpa debitis sint\neaque quia magni laudantium qui neque voluptas\nvoluptatem qui molestiae vel earum est ratione excepturi\nsit aut explicabo et repudiandae ut perspiciatis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(17, 86, 'non voluptas cum est quis aut consectetur nam', 'Nathan@yesenia.net', 'quisquam incidunt dolores sint qui doloribus provident\nvel cupiditate deleniti alias voluptatem placeat ad\nut dolorem illum unde iure quis libero neque\nea et distinctio id', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(18, 87, 'dolor asperiores autem et omnis quasi nobis', 'Julianne@kory.org', 'assumenda corporis architecto repudiandae omnis qui et odit\nperferendis velit enim\net quia reiciendis sint\nquia voluptas quam deserunt facilis harum eligendi', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(18, 88, 'officiis aperiam odit sint est non', 'Sincere@april.biz', 'laudantium corrupti atque exercitationem quae enim et veniam dicta\nautem perspiciatis sit dolores\nminima consectetur tenetur iste facere\namet est neque', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(19, 89, 'repellendus est laboriosam voluptas veritatis', 'Lucio@annie.ca', 'qui nisi at maxime deleniti quo\nex quas tenetur nam\ndeleniti aut asperiores deserunt cum ex eaque alias sit\net veniam ab consequatur molestiae', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(19, 90, 'repellendus aspernatur occaecati tempore blanditiis deleniti omnis qui distinctio', 'Nathan@yesenia.net', 'nihil necessitatibus omnis asperiores nobis praesentium quia\nab debitis quo deleniti aut sequi commodi\nut perspiciatis quod est magnam aliquam modi\neum quos aliquid ea est', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(19, 91, 'mollitia dolor deleniti sed iure laudantium', 'Julianne@kory.org', 'ut quis et id repellat labore\nnobis itaque quae saepe est ullam aut\ndolor id ut quis\nsunt iure voluptates expedita voluptas doloribus modi saepe autem', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(18, 92, 'in voluptatum nostrum voluptas iure nisi rerum est placeat', 'Shanna@melissa.tv', 'quibusdam rerum quia nostrum culpa\nculpa est natus impedit quo rem voluptate quos\nrerum culpa aut ut consectetur\nsunt esse laudantium voluptatibus cupiditate rerum', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(18, 93, 'eum voluptas dolores molestias odio amet repellendus', 'Lucio@annie.ca', 'vitae cupiditate excepturi eum veniam laudantium aspernatur blanditiis\naspernatur quia ut assumenda et magni enim magnam\nin voluptate tempora\nnon qui voluptatem reprehenderit porro qui voluptatibus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(19, 94, 'voluptatem unde quos provident ad qui sit et excepturi', 'Shanna@melissa.tv', 'at ut tenetur rem\nut fuga quis ea magnam alias\naut tempore fugiat laboriosam porro quia iure qui\narchitecto est enim', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(20, 95, 'reiciendis culpa omnis suscipit est', 'Nathan@yesenia.net', 'est ducimus voluptate saepe iusto repudiandae recusandae et\nsint fugit voluptas eum itaque\nodit ab eos voluptas molestiae necessitatibus earum possimus voluptatem\nquibusdam aut illo beatae qui delectus aut officia veritatis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(19, 96, 'vero repudiandae voluptatem nobis', 'Sincere@april.biz', 'reiciendis delectus nulla quae voluptas nihil provident quia\nab corporis nesciunt blanditiis quibusdam et unde et\nmagni eligendi aperiam corrupti perspiciatis quasi\nneque iure voluptatibus mollitia', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(20, 97, 'non sit ad culpa quis', 'Shanna@melissa.tv', 'eum itaque quam\nlaboriosam sequi ullam quos nobis\nomnis dignissimos nam dolores\nfacere id suscipit aliquid culpa rerum quis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(20, 98, 'praesentium dolorem ea voluptate et', 'Lucio@annie.ca', 'ex et expedita cum voluptatem\nvoluptatem ab expedita quis nihil\nesse quo nihil perferendis dolores velit ut culpa aut\ndolor maxime necessitatibus voluptatem', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(20, 99, 'laudantium delectus nam', 'Julianne@kory.org', 'aut quam consequatur sit et\nrepellat maiores laborum similique voluptatem necessitatibus nihil\net debitis nemo occaecati cupiditate\nmodi dolorum quia aut', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(20, 100, 'et sint quia dolor et est ea nulla cum', 'Sincere@april.biz', 'architecto dolorem ab explicabo et provident et\net eos illo omnis mollitia ex aliquam\natque ut ipsum nulla nihil\nquis voluptas aut debitis facilis', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(21, 101, 'perspiciatis magnam ut eum autem similique explicabo expedita', 'Sincere@april.biz', 'ut aut maxime officia sed aliquam et magni autem\nveniam repudiandae nostrum odio enim eum optio aut\nomnis illo quasi quibusdam inventore explicabo\nreprehenderit dolor saepe possimus molestiae', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(21, 102, 'officia ullam ut neque earum ipsa et fuga', 'Lucio@annie.ca', 'aut dolorem quos ut non\naliquam unde iure minima quod ullam qui\nfugiat molestiae tempora voluptate vel labore\nsaepe animi et vitae numquam ipsa', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(21, 103, 'ipsum a ut', 'Julianne@kory.org', 'totam eum fugiat repellendus\nquae beatae explicabo excepturi iusto et\nrepellat alias iure voluptates consequatur sequi minus\nsed maxime unde', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(21, 104, 'a assumenda totam', 'Shanna@melissa.tv', 'qui aperiam labore animi magnam odit est\nut autem eaque ea magni quas voluptatem\ndoloribus vel voluptatem nostrum ut debitis enim quaerat\nut esse eveniet aut', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(21, 105, 'voluptatem repellat est', 'Nathan@yesenia.net', 'ut rerum illum error at inventore ab nobis molestiae\nipsa architecto temporibus non aliquam aspernatur omnis quidem aliquid\nconsequatur non et expedita cumque voluptates ipsam quia\nblanditiis libero itaque sed iusto at', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(22, 106, 'maiores placeat facere quam pariatur', 'Julianne@kory.org', 'dolores debitis voluptatem ab hic\nmagnam alias qui est sunt\net porro velit et repellendus occaecati est\nsequi quia odio deleniti illum', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(22, 107, 'ut veritatis corporis placeat suscipit consequatur quaerat', 'Shanna@melissa.tv', 'at a vel sequi nostrum\nharum nam nihil\ncumque aut in dolore rerum ipsa hic ratione\nrerum cum ratione provident labore ad quisquam repellendus a', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(22, 108, 'eveniet ut similique accusantium qui dignissimos', 'Nathan@yesenia.net', 'aliquid qui dolorem deserunt aperiam natus corporis eligendi neque\nat et sunt aut qui\nillum repellat qui excepturi laborum facilis aut omnis consequatur\net aut optio ipsa nisi enim', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(22, 109, 'in ipsam vel id impedit possimus eos voluptate', 'Sincere@april.biz', 'eveniet fugit qui\nporro eaque dolores eos adipisci dolores ut\nfugit perferendis pariatur\nnumquam et repellat occaecati atque ipsum neque', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(22, 110, 'sint est odit officiis similique aut corrupti quas autem', 'Lucio@annie.ca', 'cum sequi in eligendi id eaque\ndolores accusamus dolorem eum est voluptatem quisquam tempore\nin voluptas enim voluptatem asperiores voluptatibus\neius quo quos quasi voluptas earum ut necessitatibus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(23, 111, 'sint quo debitis deleniti repellat', 'Sincere@april.biz', 'voluptatem sint quia modi accusantium alias\nrecusandae rerum voluptatem aut sit et ut magnam\nvoluptas rerum odio quo labore voluptatem facere consequuntur\nut sit voluptatum hic distinctio', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(23, 112, 'occaecati dolorem eum in veniam quia quo reiciendis', 'Nathan@yesenia.net', 'laudantium tempore aut\nmaiores laborum fugit qui suscipit hic sint officiis corrupti\nofficiis eum optio cumque fuga sed voluptatibus similique\nsit consequuntur rerum commodi', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(23, 113, 'possimus facilis deleniti nemo atque voluptate', 'Lucio@annie.ca', 'ullam autem et\naccusantium quod sequi similique soluta explicabo ipsa\neius ratione quisquam sed et excepturi occaecati pariatur\nmolestiae ut reiciendis eum voluptatem sed', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(23, 114, 'dolore aut aspernatur est voluptate quia ipsam', 'Shanna@melissa.tv', 'ut tempora deleniti quo molestiae eveniet provident earum occaecati\nest nesciunt ut pariatur ipsa voluptas voluptatem aperiam\nqui deleniti quibusdam voluptas molestiae facilis id iusto similique\ntempora aut qui', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(23, 115, 'optio et sunt non', 'Julianne@kory.org', 'nihil labore qui\nquis dolor eveniet iste numquam\nporro velit incidunt\nlaboriosam asperiores aliquam facilis in et voluptas eveniet quasi', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(24, 116, 'veritatis sit tempora quasi fuga aut dolorum', 'Shanna@melissa.tv', 'quia voluptas qui assumenda nesciunt harum iusto\nest corrupti aperiam\nut aut unde maxime consequatur eligendi\nveniam modi id sint rem labore saepe minus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(24, 117, 'incidunt quae optio quam corporis iste deleniti accusantium vero', 'Nathan@yesenia.net', 'doloribus esse necessitatibus qui eos et ut est saepe\nsed rerum tempore est ut\nquisquam et eligendi accusantium\ncommodi non doloribus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(24, 118, 'quisquam laborum reiciendis aut', 'Julianne@kory.org', 'repudiandae aliquam maxime cupiditate consequatur id\nquas error repellendus\ntotam officia dolorem beatae natus cum exercitationem\nasperiores dolor ea', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(24, 119, 'minus pariatur odit', 'Sincere@april.biz', 'et omnis consequatur ut\nin suscipit et voluptatem\nanimi at ut\ndolores quos aut numquam esse praesentium aut placeat nam', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(25, 120, 'ad eos explicabo odio velit', 'Lucio@annie.ca', 'nostrum perspiciatis doloribus\nexplicabo soluta id libero illo iste et\nab expedita error aliquam eum sint ipsum\nmodi possimus et', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(24, 121, 'harum error sit', 'Lucio@annie.ca', 'iusto sint recusandae placeat atque perferendis sit corporis molestiae\nrem dolor eius id delectus et qui\nsed dolorem reiciendis error ullam corporis delectus\nexplicabo mollitia odit laborum sed itaque deserunt rem dolorem', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(25, 122, 'deleniti quo corporis ullam magni praesentium molestiae', 'Shanna@melissa.tv', 'soluta mollitia impedit cumque nostrum tempore aut placeat repellat\nenim adipisci dolores aut ut ratione laboriosam necessitatibus vel\net blanditiis est iste sapiente qui atque repellendus alias\nearum consequuntur quia quasi quia', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(25, 123, 'nihil tempora et reiciendis modi veniam', 'Nathan@yesenia.net', 'doloribus veritatis a et quis corrupti incidunt est\nharum maiores impedit et beatae qui velit et aut\nporro sed dignissimos deserunt deleniti\net eveniet voluptas ipsa pariatur rem ducimus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(25, 124, 'nostrum suscipit aut consequatur magnam sunt fuga nihil', 'Julianne@kory.org', 'ut ut eius qui explicabo quis\niste autem nulla beatae tenetur enim\nassumenda explicabo consequatur harum exercitationem\nvelit itaque consectetur et possimus', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(25, 125, 'porro et voluptate et reprehenderit', 'Sincere@april.biz', 'aut voluptas dolore autem\nreprehenderit expedita et nihil pariatur ea animi quo ullam\na ea officiis corporis\neius voluptatum cum mollitia dolore quaerat accusamus', '2022-01-13 05:32:27', '2022-01-13 05:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `userId` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`userId`, `id`, `title`, `body`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit', 'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 2, 'qui est esse', 'est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 3, 'eum et est occaecati', 'ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 4, 'magnam facilis autem', 'dolore placeat quibusdam ea quo vitae\nmagni quis enim qui quis quo nemo aut saepe\nquidem repellat excepturi ut quia\nsunt ut sequi eos ea sed quas', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 5, 'nesciunt quas odio', 'repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 6, 'ea molestias quasi exercitationem repellat qui ipsa sit aut', 'et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 7, 'dolorem eum magni eos aperiam quia', 'ut aspernatur corporis harum nihil quis provident sequi\nmollitia nobis aliquid molestiae\nperspiciatis et ea nemo ab reprehenderit accusantium quas\nvoluptate dolores velit et doloremque molestiae', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 8, 'dolorem dolore est ipsam', 'dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 9, 'nesciunt iure omnis dolorem tempora et accusantium', 'consectetur animi nesciunt iure dolore\nenim quia ad\nveniam autem ut quam aut nobis\net est aut quod aut provident voluptas autem voluptas', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 10, 'optio molestias id quia eum', 'quo et expedita modi cum officia vel magni\ndoloribus qui repudiandae\nvero nisi sit\nquos veniam quod sed accusamus veritatis error', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 11, 'et ea vero quia laudantium autem', 'delectus reiciendis molestiae occaecati non minima eveniet qui voluptatibus\naccusamus in eum beatae sit\nvel qui neque voluptates ut commodi qui incidunt\nut animi commodi', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 12, 'in quibusdam tempore odit est dolorem', 'itaque id aut magnam\npraesentium quia et ea odit et ea voluptas et\nsapiente quia nihil amet occaecati quia id voluptatem\nincidunt ea est distinctio odio', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 13, 'voluptatem eligendi optio', 'fuga et accusamus dolorum perferendis illo voluptas\nnon doloremque neque facere\nad qui dolorum molestiae beatae\nsed aut voluptas totam sit illum', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 14, 'fugit voluptas sed molestias voluptatem provident', 'eos voluptas et aut odit natus earum\naspernatur fuga molestiae ullam\ndeserunt ratione qui eos\nqui nihil ratione nemo velit ut aut id quo', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 15, 'dolorum ut in voluptas mollitia et saepe quo animi', 'aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 16, 'eveniet quod temporibus', 'reprehenderit quos placeat\nvelit minima officia dolores impedit repudiandae molestiae nam\nvoluptas recusandae quis delectus\nofficiis harum fugiat vitae', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 17, 'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio', 'suscipit nam nisi quo aperiam aut\nasperiores eos fugit maiores voluptatibus quia\nvoluptatem quis ullam qui in alias quia est\nconsequatur magni mollitia accusamus ea nisi voluptate dicta', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 18, 'doloribus ad provident suscipit at', 'qui consequuntur ducimus possimus quisquam amet similique\nsuscipit porro ipsam amet\neos veritatis officiis exercitationem vel fugit aut necessitatibus totam\nomnis rerum consequatur expedita quidem cumque explicabo', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 19, 'voluptate et itaque vero tempora molestiae', 'eveniet quo quis\nlaborum totam consequatur non dolor\nut et est repudiandae\nest voluptatem vel debitis et magnam', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 20, 'adipisci placeat illum aut reiciendis qui', 'illum quis cupiditate provident sit magnam\nea sed aut omnis\nveniam maiores ullam consequatur atque\nadipisci quo iste expedita sit quos voluptas', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 21, 'asperiores ea ipsam voluptatibus modi minima quia sint', 'repellat aliquid praesentium dolorem quo\nsed totam minus non itaque\nnihil labore molestiae sunt dolor eveniet hic recusandae veniam\ntempora et tenetur expedita sunt', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 22, 'autem hic labore sunt dolores incidunt', 'enim et ex nulla\nomnis voluptas quia qui\nvoluptatem consequatur numquam aliquam sunt\ntotam recusandae id dignissimos aut sed asperiores deserunt', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(1, 23, 'est et quae odit qui non', 'similique esse doloribus nihil accusamus\nomnis dolorem fuga consequuntur reprehenderit fugit recusandae temporibus\nperspiciatis cum ut laudantium\nomnis aut molestiae vel vero', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 24, 'dolor sint quo a velit explicabo quia nam', 'eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 25, 'maxime id vitae nihil numquam', 'veritatis unde neque eligendi\nquae quod architecto quo neque vitae\nest illo sit tempora doloremque fugit quod\net et vel beatae sequi ullam sed tenetur perspiciatis', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 26, 'rem alias distinctio quo quis', 'ullam consequatur ut\nomnis quis sit vel consequuntur\nipsa eligendi ipsum molestiae et omnis error nostrum\nmolestiae illo tempore quia et distinctio', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(4, 27, 'iusto eius quod necessitatibus culpa ea', 'odit magnam ut saepe sed non qui\ntempora atque nihil\naccusamus illum doloribus illo dolor\neligendi repudiandae odit magni similique sed cum maiores', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(5, 28, 'a quo magni similique perferendis', 'alias dolor cumque\nimpedit blanditiis non eveniet odio maxime\nblanditiis amet eius quis tempora quia autem rem\na provident perspiciatis quia', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(2, 29, 'quasi id et eos tenetur aut quo autem', 'eum sed dolores ipsam sint possimus debitis occaecati\ndebitis qui qui et\nut placeat enim earum aut odit facilis\nconsequatur suscipit necessitatibus rerum sed inventore temporibus consequatur', '2022-01-13 05:32:26', '2022-01-13 05:32:26'),
(3, 30, 'delectus ullam et corporis nulla voluptas sequi', 'non et quaerat ex quae ad maiores\nmaiores recusandae totam aut blanditiis mollitia quas illo\nut voluptatibus voluptatem\nsimilique nostrum eum', '2022-01-13 05:32:26', '2022-01-13 05:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `password_hash`, `phone`, `website`, `createdAt`, `updatedAt`) VALUES
(1, 'Leanne Graham', 'leo', 'Sincere@april.biz', 'graham', '$2b$12$br3Wijo37QcQmtwWlIHYZum5vxj2tR72xVy/0mEFzPMSqEGybWWNu', '1-770-736-8031 x56442', 'hildegard.org', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(2, 'Clementine Bauch', 'clem', 'Nathan@yesenia.net', 'bauch', '$2b$12$ntDqXRN1ogJfm8wCgtCW4upvgP8tpvMvzkb.pxofzsmF.XLMo.mGy', '1-463-123-4447', 'ramiro.info', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(3, 'Chelsey Dietrich', 'kamren', 'Lucio@annie.ca', 'chelkam', '$2b$12$sOvVgF1mhGagKHEaokQ3eOMB5MhjH/saXjkxmBK7T2seoLn6fDiKC', '(254)954-1289', 'demarco.info', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(4, 'Patricia Lebsack', 'pat', 'Julianne@kory.org', 'lebsack', '$2b$12$ZKP7F4I2/CriHmxxRiI/du8Hb23bVeSVd6erPFdPtX.ob6KqkeCLq', '493-170-9623 x156', 'kale.biz', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(5, 'Bret Lee', 'bret', 'Shanna@melissa.tv', 'lee', '$2b$12$XBVvcTKOCIfinX3hSHg0Wu/3llaMahVHlMZwMouz4sfXunf8hZ0Xe', '1-770-736-8031 x56442', 'midguard.org', '2022-01-13 05:32:27', '2022-01-13 05:32:27'),
(6, 'Dennis Schulist', 'den', 'Karley_Dach@jasper.info', 'schu', '$2b$12$ovNV5w96xJzig8gMy14.ueLRdftRc1Qy0/yYvwT6OEtmlHg.HAju.', '1-477-935-8478 x6430', 'ola.org', '2022-01-13 05:32:27', '2022-01-13 05:32:27');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
