-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 10:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`izzbookstore`/*!40100 DEFAULT CHARACTER SET latin1 */;

USE `izzbookstore`;

--
-- Database: `izzbookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `ReleaseDate` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `Title`, `Author`, `ReleaseDate`, `Publisher`, `Description`, `Price`) VALUES
('9780141990903', 'The Second Mountain', 'David Brooks', '-', 'Penguin', 'DEBUTED AT NO.1 ON THE NEW YORK TIMES BESTSELLER LIST. NO.1 BESTSELLING AUTHOR OF THE SOCIAL ANIMAL. Are you on your first or second mountain? Is life about you - or others? About success - or something deeper? The world tells us that we should pursue our self-interest: career wins, high status, nice things. These are the goals of our first mountain. But at some point in our lives we might find that we’re not interested in what other people tell us to want. We want the things that are truly worth wanting.', '154'),
('9780241437414', 'Art: A Visual History', 'Robert Cumming', '-', 'DK', 'Discover the history of Western art - from prehistory to the 21st century - through profiles of over 650 artists and their key works. Covering every era and over 650 artists, this comprehensive, illustrated guide offers an accessible yet expansive view of art history, featuring everything from iconic works and lesser-known gems to techniques and themes. Offering a comprehensive overview of Western artists, themes, paintings, techniques, and stories, Art: A Visual History is packed full of large, full-colour images of iconic works and lesser-known gems. Covering every era, from 30,000BCE to the present, it includes features on the major schools and movements, as well as close-up critical appraisals of 22 masterpieces - from Botticelli’s Primavera to J. M. W. Turner’s The Fighting Temeraire. With detailed referencing, crisp reproductions and a fresh design, Art: A Visual History is a must-have for anyone with an interest in art history - from first-time gallery goers to knowledgeable art', '280'),
('9780571356508', 'Find Me', 'Andre Aciman', '-', 'Faber & Faber', 'Elio believes he has left behind his first love - but as an affair with an older man intensifies, his thoughts turn to the past and to Oliver. Oliver, a college professor, husband and father, is preparing to leave New York. The imminent trip stirs up longing and regret, awakening an old desire and propelling him towards a decision that could change everything. In Call Me By Your Name, we fell in love with Oliver and Elio. Find Me returns to these unforgettable characters, exploring how love can ripple out from the past and into the future.', '126'),
('9781524855048', 'Cat’s Cafe: A Comics Collection', 'Matt Tarpley', '-', 'Andrew McMeel Publishing', 'Welcome to Cat’s Cafe, a neighborhood coffee shop where all are welcome! Based on the popular webcomic, Cat’s Cafe introduces readers to the adorable denizens of this world. There’s Penguin, who has a bit of a coffee problem; Rabbit, whose anxiety sometimes overwhelms him; Axolotl, whose confidence inspires his friends; the always-supportive Cat, who provides hot drinks made with love and a supportive ear for anyone’s troubles; and many, many more. With a sensitive take on real issues and a gentle, positive outlook, Cat’s Cafe is about the power of acceptance, friendship, and love ... and delicious cups of coffee.', '142'),
('9781780721989', 'Fast Exercise', 'Michael Mosley', '-', 'Short Books', 'In Fast Exercise, Michael Mosley, a self-confessed sloth, teams up with super-fit health journalist Peta Bee to dispel common exercise myths. They offer practical advice and a range of workouts that take just a few minutes a day and can be done any time, anywhere. Fast Exercise is for everyone: those who don’t enjoy exercise but want to lose fat and stay healthy, those who love exercise and want to enhance their performance, and those who just want to understand the science behind it all.', '128'),
('9781984820198', 'Devolution', 'Max Brooks', '2020', 'Del Rey', 'The #1 bestselling author of World War Z takes on the Bigfoot legend with a tale that blurs the lines between human and beast--and asks what we are capable of in the face of the unimaginable. As the ash and chaos from Mount Rainier’s eruption swirled and finally settled, the story of the Greenloop massacre has passed unnoticed, unexamined . . . until now. But the journals of resident Kate Holland, recovered from the town’s bloody wreckage, capture a tale too harrowing--and too earth-shattering in its implications--to be forgotten. In these pages, Max Brooks brings Kate’s extraordinary account to light for the first time, faithfully reproducing her words alongside his own extensive investigations into the massacre and the legendary beasts behind it. Kate’s is a tale of unexpected strength and resilience, of humanity’s defiance in the face of a terrible predator’s gaze, and inevitably, of savagery and death. Yet it is also far more than that. Because if what Kate Holland saw in those day', '157'),
('9789570855319', '瓜地馬拉手繪旅行', '張佩瑜', '2019', '聯經出版事業股份有限公司', '本書特色：\r\n＊收錄Peiyu佩瑜的素描和彩色寫生作品、當地生活的食衣住行、背包客須知、口袋訊息\r\n＊地理老師Peiyu也常常現身解說氣候、地景、古蹟、語言等等的小道理\r\n＊詳載Peiyu佩瑜有史以來最認真的西班牙文學習記，以及差點喪命於山地黑森林的超驚險迷途實況。\r\n', '163'),
('9789578567580', '回到古代去旅行－－逛名城、訪美景，跟各朝大咖聊八卦', '解愛芹', '2020', '如果出版社', '從春秋戰國到清朝，本書提供歷朝歷代 ● 各朝大勢摘要 ● 重要歷史事件 ● 當代民風民情 ● 實用生活指南 讓你無論到哪個朝代，都知道要去哪些城市逛街？該拜訪哪位大人物？應該瞧瞧什麼重大事件才不枉此行？必備行李？違禁品有哪些？要攜帶哪種貨幣？有什麼值得購買的特產？該遵守什麼習俗？不一樣的旅行，帶你認識不一樣的中國歷史！', '120'),
('9789620432170', '有米', '陳曉蕾', '2012', '三聯書店(香港)有限公司', '「『搵食』不是向人低頭，而是向土地彎腰；『為啖飯』付出的，不盡是妥協，而是有尊嚴地腳踏實地。這幾年到處採訪，深覺香港遠比我們想像的『富裕』。」繼《香港正菜》後，陳曉蕾繼續關心本港鄉郊生活。這次從香港的氣候入手，思考為何香港沒有了春天，而沒有春天對我們的生活有何影響。曉蕾也將視點對焦選擇「另類生活」的人，有搬到新界居住的年輕人，有知足變通的獨居老伯，有自耕自足的農耕人，有崇尚環保生活的情侶，看看這些在香港「核心價值」以外的香港人如何在這裡生活。', '108'),
('9789620447297', '路向 (增訂版)', '伍成邦, 陳曉蕾, 蘇美智', '2019', '三聯書店(香港)有限公司', '社會上有一群人，他們因為不同原因導致四肢傷殘，經歷過人生低谷，但最終都站起來，靠的不是雙腳，而是身下的輪椅、身邊人的支持，以及心態上的轉變。四位資深記者訪問了十二位路向四肢傷殘人士協會的會員，將他們曲折的人生旅途和心路歷程記錄下來，寫成《路向》一書，希望加深大眾對四肢傷殘人士的了解，亦透過他們的故事獲得啟發與鼓勵。', '138'),
('9789620746017', '尋覓張愛玲', '吳邦謀', '2020', '商務印書館(香港)有限公司', '祖師奶奶張愛玲百歲誕辰紀念之作 香港收藏家吳邦謀為了紀念張愛玲百年誕辰及逝世廿五週年，特意蒐集超過二百件有關張愛玲的珍貴藏品，包括早期著作初版、報刊雜誌原刊小說、電影宣傳刊物、廣告及照片等，向讀者展示張愛玲顛簸跌宕的一生，她矢志不移的文學創作路，及她與香港交織的一點緣。書內部分藏品屬首次曝光，包括收錄張愛玲十一歲作品〈不幸的她〉的海外孤本《鳳藻》；附張愛玲鈐印的首作《傳奇》；張愛玲代表香港於《西風》雜誌徵文比賽獲獎的〈天才夢〉；電影《不了情》試映戲票等。每件藏品背後，記下張愛玲生命中或大或小的步伐，都是真實的見證，跟其著作同樣歷久彌新。著名畫家李志清更首度呈獻多幅畫風各異的手繪作品，描繪他眼中形象多變的張愛玲。', '148'),
('9789620757396', '社會契約論 The Social Contract', '讓-雅克．盧梭(Jean-Jacques Rousseau)', '-', '商務印書館(香港)有限公司', '\'縱觀歷史，有些書能改變世界，這些著作扭轉了我們對自身和他人的看法，甚至引發爭論、產生異見，挑起戰爭，催化革命。這些著作發人深省，激發憤懣，鼓動情緒，提供慰藉。它們使我們的生命變得豐盛，卻同時帶來破壞。“偉大思想系列”叢書精挑細選了偉大思想家、先驅、激進分子和夢想家的經典著作，當中的思想曾經撼動世界，也塑造了讀者的人生。盧梭對於人類自由讓人震撼的呼聲推動了法國大革命，而且至今仍主導著我們對如何作出管治的討論。《社會契約論》被視為一份政治恐慌的藍圖，也作為民主的基礎宣言。', '92'),
('9789863447818', '擺脫內耗人生－－走出焦慮、自責、憤怒、悔恨⋯⋯透過有效練習轉化情緒，讓你停止內在糾結、化解自我衝突，', '于德志', '2020', '麥田出版股份有限公司', '你是感受的主人，而非感受的奴隸！要想結束這一切糟糕的心情，先停止與自己較勁！這本書裡，透過眾多心理學研究，從注意轉換、思維處理、感受管理、身體調整、表達傾聽等多個方向，解決我們持續內耗的心理困境，讓全新的思維與行為模式變成下意識的習慣，每個人都將擁有重新掌控人生的能力。', '148'),
('9789888528424', 'EVERYDAY MASCULINITIES IN 21ST-CENTURY CHINA', 'Magdalena Wong', '-', 'Hong Kong University Press', 'Everyday Masculinities in 21st-Century China: The Making of Able-Responsible Men argues that a moral dimension in Chinese masculinity is of growing significance in fast-changing China. ‘Able-responsible men’—those who can create wealth and shoulder responsibilities—have replaced the ‘moneyed elite’ of the earlier reform-and-opening-up era as the dominant male ideal. With vivid and highly readable case studies, Wong presents a compelling account of the forces that coerce men to live up to the able-responsible standard. She demonstrates the impact this pressure has on the lives of not only boys and men, but also on women, and shows how it invites both complicit and resistant reactions. The book lays bare the socio-political context that nurtures the cultural expressions of hegemonic masculinity under the rule of Xi Jinping. The president himself has emerged in public consciousness as the embodiment of the ideal able-responsible man. Based on anthropological fieldwork in Nanchong, Sichuan', '400');

-- --------------------------------------------------------

--
-- Table structure for table `create_customer_account`
--

CREATE TABLE `create_customer_account` (
  `Account_ID` int(11) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `contactSurname` varchar(50) NOT NULL,
  `contactGivenname` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `DateOfBirth` varchar(50) DEFAULT NULL,
  `Address_city` varchar(50) NOT NULL,
  `Address_district` varchar(50) NOT NULL,
  `Address_street` varchar(50) NOT NULL,
  `Address_building` varchar(1000) NOT NULL,
  `Address_floor` varchar(50) NOT NULL,
  `Address_flat` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_customer_account`
--

INSERT INTO `create_customer_account` (`Account_ID`, `CustomerName`, `contactSurname`, `contactGivenname`, `phone`, `gender`, `DateOfBirth`, `Address_city`, `Address_district`, `Address_street`, `Address_building`, `Address_floor`, `Address_flat`, `Email`, `Password`) VALUES
(1, 'A', 'Chan', 'Arthur', '12345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'a@gmail.com', '1'),
(2, 'B', 'Lee', 'Benjamin', '22345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'b@gmail.com', '2'),
(3, 'C', 'Wong', 'Camillie', '32345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'c@gmail.com', '3'),
(4, 'D', 'Sze', 'Daniel', '42345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'd@gmail.com', '4'),
(5, 'E', 'Siu', 'Eliza', '52345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'E@gmail.com', '5'),
(6, 'F', 'Fung', 'Flinz', '62345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'F@gmail.com', '6'),
(7, 'G', 'Yip', 'Glamon', '72345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'G@gmail.com', '7'),
(8, 'H', 'Sum', 'Hazel', '82345678', NULL, NULL, 'Hong Kong', 'Kowloon City', 'Tat Chee Avenue', 'Li Dak Sum Yip Yio Chin Academic Building (LI), City University of Hong Kong', '2/F', '2999', 'H@gmail.com', '8');

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `OrderID` int(11) NOT NULL,
  `Account_ID` int(11) NOT NULL,
  `Quantity` varchar(11) NOT NULL,
  `TotalAmount` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`OrderID`, `Account_ID`, `Quantity`, `TotalAmount`) VALUES
(1, 1, '3', '400'),
(2, 2, '4', '356'),
(3, 3, '3', '759'),
(4, 4, '2', '333');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `create_customer_account`
--
ALTER TABLE `create_customer_account`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `Account_ID` (`Account_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `create_customer_account` (`Account_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
