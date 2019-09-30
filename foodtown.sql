SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `amail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `apass` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `admin` (`aid`, `aname`, `amail`, `apass`) VALUES
(1, 'Ali', 'admin@mail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Erkan Bilsin', 'erkan@mail.com', '827ccb0eea8a706c4c34a16891f84e7b');

CREATE TABLE `cart` (
  `oid` int(11) NOT NULL,
  `ostatus` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `otime` datetime NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `cart` (`oid`, `ostatus`, `otime`, `pid`, `cid`) VALUES
(5, 'Preparing', '2019-09-30 16:41:36', 17, 2);

CREATE TABLE `category` (
  `ctid` int(11) NOT NULL,
  `ctname` varchar(32) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `category` (`ctid`, `ctname`) VALUES
(1, 'Burgers'),
(2, 'Pizzas'),
(3, 'Vegetarian'),
(4, 'Drinks'),
(5, 'Desserts');

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cmail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cpass` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `caddress` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `customer` (`cid`, `cname`, `cmail`, `cpass`, `caddress`) VALUES
(2, 'Ezgi Aygün', 'eaygun@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'A mah. b cad. c sokak İSTANBUL'),
(3, 'Ayşe Kaya', 'akaya@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'abcd Mah. \r\ntyuo Sok. \r\nİST'),
(4, 'Ali Bilirki', 'alibki@mail.com', '4297f44b13955235245b2497399d7a93', '150 teuk laak 2 near Khan Tuol Kouk, Phnom Penh');

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `ptitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pdesc` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pphoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `pprice` decimal(10,2) NOT NULL,
  `ctid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `product` (`pid`, `ptitle`, `pdesc`, `pphoto`, `pprice`, `ctid`) VALUES
(12, 'Luger Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tempor est sit amet finibus consequat. In congue aliquet augue. ', '/resources/site/img/burger-large.jpg', '18.00', 1),
(13, 'Big Pizza', 'Ut id sapien ut purus consequat vestibulum. Suspendisse sed ligula vel orci pretium condimentum. Phasellus eu metus non magna euismod lacinia. Etiam vitae commodo augue. Nulla ut massa laoreet, condimentum massa vitae, dapibus nibh. Maecenas at fermentum ', '/resources/site/img/big-pizza.png', '23.50', 2),
(14, 'Big Salad', 'Fusce scelerisque eu augue quis euismod. Ut massa massa, feugiat eget interdum a, aliquam sed velit. Mauris vehicula, justo sed cursus ullamcorper, nunc nisi semper diam, vel semper mauris sem vitae leo. Proin maximus convallis feugiat. ', '/resources/site/img/big-salad.png', '16.00', 3),
(15, 'Chicken Burger', 'Cras mattis lobortis gravida. Etiam ultrices nisl nisi. Mauris nec ex tristique, tempor orci quis, tristique arcu. Curabitur sed quam id leo imperdiet vestibulum. In mollis libero tempus, egestas nisi ut, dignissim mi. ', '/resources/site/img/burger2.jpg', '11.50', 1),
(16, 'Le Pigeon Burger', 'Donec maximus justo ut magna efficitur, nec luctus urna dignissim. Pellentesque vitae sem eu ante ultrices gravida. Cras pretium ante dolor, eu porta nibh porta non.', '/resources/site/img/burger3.jpg', '13.50', 1),
(17, 'Mint Oreo Cake', 'Donec fringilla lectus a dolor pretium condimentum. Nullam vitae scelerisque tellus. Donec cursus, augue quis laoreet facilisis, mauris erat pellentesque ipsum, elementum lacinia velit metus ut enim.', '/resources/site/img/dessert1.jpg', '12.50', 5),
(18, 'Polar Bevearges', 'Fusce ultricies a ipsum nec imperdiet. Morbi erat turpis, ultricies vel magna vel, posuere aliquet mi. Phasellus in urna tincidunt, facilisis mauris vestibulum, finibus justo. Nunc mauris tortor, finibus ac commodo sit amet, tempor ac sapien. Nunc venenat', '/resources/site/img/drink4.jpg', '16.00', 4),
(19, 'Meyer Lemon Bars', 'Aliquam molestie varius tellus, sit amet elementum massa. Pellentesque ante leo, consectetur eget arcu id, semper tristique est. Vivamus at odio non nibh aliquam accumsan et id magna. ', '/resources/site/img/dessert4.jpg', '14.00', 5),
(20, 'Pizza Mariana', 'Vestibulum in urna sed mi scelerisque aliquet. Nam eget quam at erat suscipit blandit. Maecenas semper enim eu nisi ultricies, a volutpat purus viverra. Vivamus vitae odio sed mi porta dictum.', '/resources/site/img/pizza2.jpg', '25.00', 2);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

ALTER TABLE `cart`
  ADD PRIMARY KEY (`oid`);

ALTER TABLE `category`
  ADD PRIMARY KEY (`ctid`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);


ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `cart`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `category`
  MODIFY `ctid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
