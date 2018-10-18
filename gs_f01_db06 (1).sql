-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 10 月 18 日 15:36
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f01_db06`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `anime_post`
--

CREATE TABLE IF NOT EXISTS `anime_post` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `anime_post`
--

INSERT INTO `anime_post` (`id`, `name`, `mail`, `sex`, `created_at`) VALUES
(15, 'fff', 'fff.com', 'man', '2018-09-18 20:26:13'),
(16, 'fffg', 'fff.cogm', 'man', '2018-09-18 20:28:28'),
(18, 'fffghf', 'fff.cogmhf', 'man', '2018-09-18 20:35:09'),
(19, 'fffghfd', 'ffdf.cogmhf', 'man', '2018-09-18 20:35:27'),
(20, 'fffgfddd', 'ffdf.cgmhff', 'woman', '2018-09-18 20:35:43'),
(21, 'ffgfd', 'ffdf.cghf', 'man', '2018-09-18 20:36:12'),
(22, 'ffgf', 'ffdf.cgh', 'man', '2018-09-18 20:36:34'),
(24, 'ffjh', 'ffdf.ghh', 'woman', '2018-09-18 20:45:47'),
(26, 'fh', 'fff.gh', 'woman', '2018-09-18 20:46:50'),
(29, 'fhpp', 'ff.ghpp', 'woman', '2018-09-18 20:47:55'),
(30, 'hpp', 'ff.ghp', 'woman', '2018-09-18 20:48:26'),
(31, 'ghgb', 'gbgg.vom', 'man', '2018-09-19 19:59:40'),
(32, 'ghg', 'gbgg.vo', 'woman', '2018-09-19 19:59:49'),
(33, 'test', 'test', 'man', '2018-09-22 15:03:40'),
(34, 'ggg', 'lll', 'man', '2018-09-22 17:02:01'),
(35, 'bbbb', 'bbbb', 'woman', '2018-10-04 20:39:08');

-- --------------------------------------------------------

--
-- テーブルの構造 `anime_user`
--

CREATE TABLE IF NOT EXISTS `anime_user` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kanri_flg` int(1) DEFAULT NULL,
  `life_flg` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `anime_user`
--

INSERT INTO `anime_user` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'kano', 'kano', 'kano', 1, 0),
(2, 'ffff', 'fff', 'fff', 1, 0),
(3, 'aaa', 'aaa', 'aaa', 0, 0),
(5, 'ccc', 'ccc', 'ccc', 0, 0),
(6, 'hhh', 'hhh', 'hhh', 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_ajax_table`
--

CREATE TABLE IF NOT EXISTS `gs_ajax_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_ajax_table`
--

INSERT INTO `gs_ajax_table` (`id`, `name`, `email`, `youtube`, `indate`) VALUES
(8, 'kano', 'kano', 'Y8jFH0WGQeE', '2018-10-18 20:25:52'),
(9, 'kano', 'kano', 'Y8jFH0WGQeE', '2018-10-18 20:36:14'),
(10, 'kano', 'kano', 'Y8jFH0WGQeE', '2018-10-18 20:37:53'),
(11, 'kk', 'sss', '61RJQxwcRAI', '2018-10-18 21:56:27'),
(12, 'ttt', 'ttt', 'UpK0HLP8-nU', '2018-10-18 22:34:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_data_table`
--

CREATE TABLE IF NOT EXISTS `gs_data_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_data_table`
--

INSERT INTO `gs_data_table` (`id`, `name`, `email`, `detail`, `indate`, `image`) VALUES
(1, 'こだま', 'kdm@gs.fuk', '来週は任意授業！', '2018-10-04 15:19:05', NULL),
(2, 'たろう', 'taro@gs.fuk', 'ajax使おう！', '2018-10-04 15:20:01', NULL),
(3, 'ゆうき', 'yuki@gs.fuk', '認証できなくて詰んだ', '2018-10-04 15:21:30', NULL),
(4, 'いせき', 'isk@gs.fuk', 'ラズパイ買ったぞ―', '2018-10-04 15:22:15', NULL),
(5, 'aaa', 'aaa', 'aaa', '2018-10-06 15:29:32', 'upload/20181006082932d41d8cd98f00b204e9800998ecf8427e.png'),
(6, 'bbb', 'bbb', 'bb', '2018-10-06 15:32:16', 'upload/20181006083216d41d8cd98f00b204e9800998ecf8427e.png'),
(7, 'ccc', 'ccc', 'ccc', '2018-10-06 15:37:50', 'upload/20181006083750d41d8cd98f00b204e9800998ecf8427e.png'),
(8, 'bbb', 'bbb', 'bbb', '2018-10-06 15:47:35', 'upload/20181006084735d41d8cd98f00b204e9800998ecf8427e.png'),
(9, 'ggg', 'ggg', '<p><span style="font-size:11px">tetakakoreha</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">jjjjj</span></p>\r\n', '2018-10-06 16:02:26', NULL),
(10, 'test', 'test', '<script>alert("iseki");</script>', '2018-10-06 16:05:27', 'upload/20181006090527d41d8cd98f00b204e9800998ecf8427e.png');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php02_table`
--

CREATE TABLE IF NOT EXISTS `gs_php02_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `age` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php02_table`
--

INSERT INTO `gs_php02_table` (`id`, `name`, `email`, `detail`, `indate`, `age`) VALUES
(1, 'ジーズ福岡', 'gs_f@test.com', 'test', '2018-09-15 15:21:50', 20),
(2, 'ジーズ札幌', 'test.com', 'turai', '2018-09-15 15:23:49', 30),
(3, 'gs hiroshima', 'email.com', 'nemui', '2018-09-15 15:27:06', 10),
(4, 'gs oosaka', 'nandemo.com', 'kakakaka', '2018-09-15 15:28:40', 40),
(5, 'gs nagoya', 'jjj.com', 'daijoubu', '2018-09-15 15:30:06', 10),
(6, 'abac', 'ajkaka', 'nemui', '2018-09-15 16:14:58', 20),
(7, 'fff', 'fff', 'fff', '2018-09-15 16:48:05', 30),
(8, 'hshs', 'hshs', 'hshshh', '2018-09-15 17:28:44', 40),
(9, 'ggg', 'ttest1@gmail.com', 'atui-', '2017-05-26 15:18:10', 20),
(10, 'sss', 'ss', 'sss', '2018-09-29 00:00:00', 34);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php03_table`
--

CREATE TABLE IF NOT EXISTS `gs_php03_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php03_table`
--

INSERT INTO `gs_php03_table` (`id`, `name`, `email`, `detail`, `indate`) VALUES
(4, 'moritaっっs', 'morita@gs.gs', 'test04っs', '2018-09-15 15:23:48'),
(6, 'kamiyama', 'kamiyama@gs.gs', 'test06', '2018-09-15 16:12:26'),
(8, 'kosuge', 'kosuge@gs.gs', 'test08', '2018-09-15 16:17:04'),
(9, 'iseki', 'iseki@gs.gs', 'test09', '2018-09-15 16:47:30'),
(12, 'jjj', 'jjj', 'jjjj', '2018-10-01 22:02:20'),
(13, 'aaa', 'aaa', 'aaa', '2018-10-04 20:25:08');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'ohsugi', 'osg', 'osg', 1, 0),
(2, 'kodama', 'kdm', 'kdm', 0, 0),
(3, 'yamasaki', 'ymsk', 'ymsk', 0, 0),
(4, 'iseki', 'isk', 'isk', 0, 0),
(5, 'morita', 'mrt', 'mrt', 0, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `posted_anime`
--

CREATE TABLE IF NOT EXISTS `posted_anime` (
  `post_id` int(11) NOT NULL,
  `anime_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `posted_anime`
--

INSERT INTO `posted_anime` (`post_id`, `anime_id`) VALUES
(16, 'aLytobHKcYz'),
(16, 'DckKwTmP67D'),
(16, 'LrNfsLeRzB4'),
(16, 'kUo2pH3C4kt'),
(16, 'WquSXndWraC'),
(16, 'zqNJzDhYntv'),
(17, 'aLytobHKcYz'),
(17, 'Lqk6JMuEDQQ'),
(17, 'LrNfsLeRzB4'),
(17, 'kUo2pH3C4kt'),
(17, 'zqNJzDhYntv'),
(18, 'Lqk6JMuEDQQ'),
(18, 'LrNfsLeRzB4'),
(18, 'kUo2pH3C4kt'),
(18, 'zqNJzDhYntv'),
(19, 'LrNfsLeRzB4'),
(19, 'kUo2pH3C4kt'),
(19, 'zqNJzDhYntv'),
(21, 'zqNJzDhYntv'),
(24, 'oxcsZoLMHkG'),
(24, 'Ht8AgZgswLs'),
(24, 'vUgLk2ujykA'),
(24, 'snKhpZaVGVj'),
(24, 'JxGvhLF5MNy'),
(24, 'ix3opPxu4de'),
(24, 'E8yVxji683t'),
(24, '2EZeRaoMfyo'),
(25, 'oxcsZoLMHkG'),
(25, 'vUgLk2ujykA'),
(25, 'snKhpZaVGVj'),
(25, 'JxGvhLF5MNy'),
(25, 'ix3opPxu4de'),
(25, 'E8yVxji683t'),
(25, '2EZeRaoMfyo'),
(27, 'snKhpZaVGVj'),
(27, 'JxGvhLF5MNy'),
(27, 'ix3opPxu4de'),
(27, 'E8yVxji683t'),
(27, '2EZeRaoMfyo'),
(28, 'JxGvhLF5MNy'),
(28, 'ix3opPxu4de'),
(28, 'E8yVxji683t'),
(28, '2EZeRaoMfyo'),
(29, 'JxGvhLF5MNy'),
(29, '2EZeRaoMfyo'),
(30, '2EZeRaoMfyo'),
(31, 'dSNf8NVzHP3'),
(31, 'LwddXNaC6Up'),
(31, 'KmvZjhND2Uj'),
(31, 'NwMY4xQkTRG'),
(31, 'og2xYeo9qBZ'),
(31, 'wZqoifgtX8b'),
(31, 'JxGvhLF5MNy'),
(31, 'iMFtZumFwuH'),
(31, 'CiLNVjNcgxR'),
(31, 'bsQTdnxBRCg'),
(31, '8Nxtr25dGEj'),
(31, '6NtnUrNncmN'),
(31, 'h9N6hv83FQY'),
(32, 'dSNf8NVzHP3'),
(32, 'LwddXNaC6Up'),
(32, 'KmvZjhND2Uj'),
(32, 'NwMY4xQkTRG'),
(32, 'og2xYeo9qBZ'),
(32, 'wZqoifgtX8b'),
(32, 'JxGvhLF5MNy'),
(32, 'iMFtZumFwuH'),
(32, 'CiLNVjNcgxR'),
(32, 'bsQTdnxBRCg'),
(32, '8Nxtr25dGEj'),
(32, '6NtnUrNncmN'),
(32, 'h9N6hv83FQY'),
(33, '2qHNKcLyfrE'),
(33, 'ssBi7GRkzJW'),
(34, 'XQyVhRL2Um4'),
(34, 'wygCjFghAkt'),
(34, 'mE4RB76f6jh'),
(35, 'HDJfna97L7u'),
(23, 'qPYrVEGV6CS'),
(23, 'oxcsZoLMHkG'),
(23, 'tqRtvs6osFP'),
(23, 'vUgLk2ujykA'),
(23, 'snKhpZaVGVj'),
(23, 'JxGvhLF5MNy'),
(23, 'ix3opPxu4de'),
(23, 'E8yVxji683t'),
(23, '2EZeRaoMfyo'),
(20, 'HDJfna97L7u'),
(20, 'hgYXb3RXRmd'),
(20, 'Sbx75rt3vWk'),
(20, 'kUo2pH3C4kt'),
(20, 'zqNJzDhYntv'),
(35, 'FXcwoLPv76T'),
(35, 'SAWMxkiUqBQ'),
(35, 'wwF6yP7k9pf'),
(22, 'zqNJzDhYntv'),
(22, 'gjzju87bZ8U'),
(26, 'vUgLk2ujykA'),
(26, 'snKhpZaVGVj'),
(26, 'JxGvhLF5MNy'),
(26, 'ix3opPxu4de'),
(26, 'E8yVxji683t'),
(26, '2EZeRaoMfyo'),
(15, 'SGa7km8ze6b'),
(15, 'zqNJzDhYntv');

-- --------------------------------------------------------

--
-- テーブルの構造 `selectedanime`
--

CREATE TABLE IF NOT EXISTS `selectedanime` (
  `animeID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `selectedanime`
--

INSERT INTO `selectedanime` (`animeID`, `title`, `year`) VALUES
('SGa7km8ze6b', '探偵歌劇 ミルキィホームズ TD', 2015),
('zN6Pst8So5a', 'みんな集まれ!ファルコム学園SC', 2015),
('HDJfna97L7u', 'アブソリュート・デュオ', 2015),
('3MoStXjZSm5', 'うわばきクック', 2015),
('ApwQ8cmCS9a', 'ドアマイガーD', 2015),
('bGov4PP5q7o', 'キュートランスフォーマー 帰ってきたコンボイの謎', 2015),
('Ed9hWpKaEhT', 'わしも WASIMO', 2015),
('FSURvquefRr', '神様はじめました◎', 2015),
('hgYXb3RXRmd', 'ユリ熊嵐', 2015),
('oTPNuPDEMwp', '美男高校地球防衛部LOVE!', 2015),
('jDxYYNGAnbW', 'みりたり!', 2015),
('aLytobHKcYz', '艦隊これくしょん -艦これ-', 2015),
('MeVrdbwepQU', '新妹魔王の契約者', 2015),
('bRFCWQF3EJs', 'ぱんきす!2次元', 2015),
('hKuCwixsVGr', '血液型くん!2', 2015),
('9qZKeYJc7Ay', '蒼穹のファフナー EXODUS', 2015),
('sotK6sF9ddp', '東京喰種トーキョーグール√A', 2015),
('ccy89fMd4Kp', '冴えない彼女の育てかた', 2015),
('t5Df5sQg596', '銃皇無尽のファフニール', 2015),
('Tx4BtzLhqJs', '幸腹グラフィティ', 2015),
('X428EoRtjyF', 'ジョジョの奇妙な冒険 スターダストクルセイダース エジプト編', 2015),
('N6uYeuK72jm', 'アイドルマスター シンデレラガールズ', 2015),
('LKHQsZCZHWD', '少年ハリウッド -HOLLY STAGE FOR 50-', 2015),
('3JCNwHRV7rD', '劇場版 PSYCHO-PASS サイコパス', 2015),
('2meMZDUaLaE', 'デュラララ!!×2 承', 2015),
('9fB6NRniuAE', 'デス・パレード', 2015),
('vh6Au2dUtmJ', '暗殺教室', 2015),
('GGn63MxDRQc', 'オズ めざせ！エメラルドの国へ', 2015),
('cKAXUyWZyyU', 'アルドノア・ゼロ', 2015),
('bRp9w7duTMZ', 'ローリング☆ガールズ', 2015),
('45jk8E8Hkwu', '夜ノヤッターマン', 2015),
('F8XFiZJdMtM', '純潔のマリア', 2015),
('cMdRnJBccAs', '"DOG DAYS"""', 2015),
('HXDdwnF6Eoa', '黒子のバスケ', 2015),
('xb2BngVTm2J', '聖剣使いの禁呪詠唱', 2015),
('6H3cxsfdnZX', '戦国無双', 2015),
('aGKbtBp89ru', 'アップルシード アルファ', 2015),
('DDWjeiD5bLb', 'ISUCA', 2015),
('YcQu45hCNaS', '劇場版 蒼き鋼のアルペジオ -アルス・ノヴァ- DC', 2015),
('fUck4amf7o8', 'Go!プリンセスプリキュア', 2015),
('KCQeZT4whhi', '花とアリス 殺人事件', 2015),
('s7hneztr5DD', '劇場版 ムーミン 南の海で楽しいバカンス', 2015),
('m2qW26CEUBS', 'ナッツジョブ　サーリー＆バディのピーナッツ大作戦！', 2015),
('vtNtrHM42zg', 'Je t''aime', 2015),
('uXNvYkamuTw', '映画ドラえもん のび太の宇宙英雄記', 2015),
('EZ2Ac2VhEV2', '劇場版シドニアの騎士', 2015),
('dSNf8NVzHP3', '劇場版プリパラ　み～んなあつまれ！プリズム☆ツアーズ', 2015),
('SPvZxAZDzay', '今、ふたりの道', 2015),
('JTQ2jPisNeh', '劇場版 しまじろうのわお！ おおきなきのうたをうたおう！', 2015),
('ohW8DC9Zqr2', '劇場版 しまじろうのわお！ しまじろうとおおきな木', 2015),
('oFf3s3ewTYv', '映画 プリキュアオールスターズ 春のカーニバル', 2015),
('owsbzVgVrVM', '劇場版「境界の彼方-I''LL BE HERE-」 過去篇', 2015),
('cSFyv7uNaov', 'トランスフォーマー アドベンチャー', 2015),
('4UWhQdi8kJX', 'ヒックとドラゴン2', 2015),
('uS89V8CKnSk', 'クミとチューリップ', 2015),
('sktGNFpaTAd', 'ハッピーカムカム', 2015),
('R4gDNx66CAk', 'アキの奏で', 2015),
('cKRpqBP9aPU', '音楽少女', 2015),
('4Tz8Ko2ZEL3', 'ゴー!ゴー!キッチン戦隊クックルン', 2015),
('R2gkEb4ZDwR', 'グッド・モーニング!!!ドロンジョ', 2015),
('xqNHCBmAgyy', 'ふなっしーのふなふなふな日和', 2015),
('kQhEutc5uNK', 'おまかせ!みらくるキャット団', 2015),
('zCnxkAhi2GA', '美少女戦士セーラームーンCrystal', 2015),
('bewfwBk9WEm', 'バトルスピリッツ 烈火魂', 2015),
('aRP7XJF9Dy7', '天才バカヴォン ～ 蘇るフランダースの犬 ～', 2015),
('nECsxUCx2MQ', '夕やけだん団', 2015),
('WY4wrQkJDTq', 'やはり俺の青春ラブコメはまちがっている。続', 2015),
('sFYncXBPyS4', '旦那が何を言っているかわからない件 2スレ目', 2015),
('ymFYmQHLWR2', '魔法少女リリカルなのはViVid', 2015),
('pfTeeC4KeVK', '秘密結社鷹の爪 DO', 2015),
('qRG4iXLh9aZ', 'レーカン!', 2015),
('wgUQ6P2PKGD', 'ダンジョンに出会いを求めるのは間違っているだろうか', 2015),
('yqQbc3PVWSY', 'ガンスリンガー ストラトス', 2015),
('Sqe87qkBuJv', 'ハイスクールD×D BorN', 2015),
('vnkR27oX7oQ', '終わりのセラフ', 2015),
('2swfstJYenr', '長門有希ちゃんの消失', 2015),
('tBBoxy8HbQd', 'GON -ゴン-', 2015),
('AysAcvZN4QV', 'VAMPIRE HOLMES', 2015),
('q578kgVkm3W', '食戟のソーマ', 2015),
('Ua2o7FoeLCH', '境界のRINNE', 2015),
('QnB4t3zsyam', '電波教師', 2015),
('Q4Dxh57rnE7', 'てさぐれ!部活もの すぴんおふ プルプルんシャルムと遊ぼう', 2015),
('6HgPNFBV7CM', 'うたの☆プリンスさまっ♪ マジLOVEレボリューションズ', 2015),
('DckKwTmP67D', 'Fate/stay night Unlimited Blade Works', 2015),
('fWagZLRJsUk', '『たまゆら～卒業写真～』第1部 芽-きざし-', 2015),
('XQyVhRL2Um4', 'PERSONA3 THE MOVIE #3 Falling Down', 2015),
('SiPU53hCjBn', '攻殻機動隊 ARISE PYROPHORIC CULT', 2015),
('FzigR2eUo2p', 'ジュエルペット マジカルチェンジ', 2015),
('2vfuZGeiGKW', 'プラスティック・メモリーズ', 2015),
('uV2TwgnYDKY', 'デュエル・マスターズ VSR', 2015),
('e4BQtmeQtnG', 'ベイビーステップ', 2015),
('ZpSFNg4ozoG', 'パンパカパンツ おNEW!', 2015),
('2Pieb6odHAa', 'アルスラーン戦記', 2015),
('jZYdzbwVyow', 'SHOW BY ROCK!!', 2015),
('znBUfhVQQmf', '雨色ココア', 2015),
('ugEKGmRtTXT', '血界戦線', 2015),
('zBuCPr6XAx7', 'にゅるにゅる!!KAKUSENくん', 2015),
('9QxZmTaQJu2', 'ダイヤのA -SECOND SEASON-', 2015),
('8MHxuUAZQuk', 'ハロー!!きんいろモザイク', 2015),
('9t5bRzW63wv', '怪盗ジョーカー', 2015),
('pGbvcYv5hvA', '高宮なすのです! ～てーきゅうスピンオフ～', 2015),
('x29EJsmgAn4', 'てーきゅう', 2015),
('YEhm6sF8xRb', 'ミカグラ学園組曲', 2015),
('gxrpBKy7JAq', 'BAR 嫌われ野菜', 2015),
('sEraSCjs2Cm', '響け! ユーフォニアム', 2015),
('JaCrF5ZAbfc', '銀魂゜', 2015),
('pReVP6CiXS6', '放課後のプレアデス', 2015),
('P3fHipt9fvX', 'トリアージX', 2015),
('Uo8WSd2TyKv', 'えとたま', 2015),
('Uoqvav6evCJ', '俺物語!!', 2015),
('dMUMyeaEMXg', '浦和の調ちゃん', 2015),
('zWrvEn2uaRN', 'パンチライン', 2015),
('zZKuZHuQCJr', 'ニセコイ:', 2015),
('Y2GGWWt2Q9S', 'フューチャーカード バディファイト100', 2015),
('JcicJanKMNt', 'シドニアの騎士 第九惑星戦役', 2015),
('2HaDJgx2XpH', '映画　きかんしゃトーマス　勇者とソドー島の怪物', 2015),
('8EmZYMagyvE', '山田くんと7人の魔女', 2015),
('q6unvwbPqpv', 'グリザイアの迷宮', 2015),
('xtqycEZkyZU', '英国一家、日本を食べる', 2015),
('m9nykZiJdGk', 'アニメガタリ', 2015),
('fMZK9zyb5cF', '映画クレヨンしんちゃん オラの引越し物語～サボテン大襲撃～', 2015),
('XG9sXmaFGMC', 'ドラゴンボールZ　復活の「F」', 2015),
('Z9ZHQBqDzBt', '名探偵コナン 業火の向日葵', 2015),
('ouw7rU9KDUe', 'グリザイアの楽園', 2015),
('PqvE8XxBCLE', '劇場版「境界の彼方-I''LL BE HERE-」 未来篇', 2015),
('qPYrVEGV6CS', 'アナと雪の女王／エルサのサプライズ', 2015),
('fgyC3T3Mdb4', 'ピカイア!', 2015),
('ndTCeG7VQFV', 'コードギアス 亡国のアキト 第3章「輝くもの天より堕つ」', 2015),
('P4KVCxqSFbK', '百日紅 Miss HOKUSAI', 2015),
('qLzDdzBxpHN', 'スポンジ・ボブ 海のみんなが世界を救Woo!', 2015),
('LJdu7sN7Ghq', '劇場版　蟲師続章　鈴の雫', 2015),
('3ygZ7LJx532', 'ナルどマ', 2015),
('seBp2xize4s', '新劇場版『頭文字D Legend2-闘走-』', 2015),
('UDafcbMDBMj', '出番ですよ!オニギリズ', 2015),
('fsN68Fm3CTi', '極道酒場でんでん ～極道大戦争外伝～', 2015),
('gFydM49VASA', '台風のノルダ', 2015),
('U8ck7bnfhnz', 'ガンバレー部NEXT!', 2015),
('oxcsZoLMHkG', '弱虫ペダル Re：ROAD', 2015),
('TkKnwB7qxui', 'ラブライブ！The School Idol Movie', 2015),
('5okrZNAf7SY', '攻殻機動隊 新劇場版', 2015),
('LUrsw36XW3v', '劇場版 進撃の巨人 [後編] ～自由の翼～', 2015),
('uAzdLJXtAVV', 'ケイオスドラゴン 赤竜戦役', 2015),
('vyBdy9nRdGd', 'おくさまが生徒会長!', 2015),
('Hvrurhjqmdu', '明治東亰恋伽', 2015),
('rAU3r84KgUy', 'GANGSTA.', 2015),
('HWtdgfHR2CS', 'ミス・モノクローム -The Animation- 2', 2015),
('ZUptwWjBhQH', 'うーさーのその日暮らし 夢幻編', 2015),
('nr8TD6B2mVx', '乱歩奇譚 Game of Laplace', 2015),
('Lqk6JMuEDQQ', '城下町のダンデライオン', 2015),
('rVnJUysyFCq', 'わかば*ガール', 2015),
('9JwersAabVz', '青春×機関銃', 2015),
('KcyVoukgLQ5', '金夜、安部礼司～平均的サラリーマンの異常な日常～', 2015),
('xHJ9BAxBxe8', '劇場版総集編 前編 ハイキュー！！ 終わりと始まり', 2015),
('LwddXNaC6Up', '下ネタという概念が存在しない退屈な世界', 2015),
('wXhjQEmpqmo', 'GATE 自衛隊 彼の地にて、斯く戦えり', 2015),
('kmRmaNQ9dwM', '戦姫絶唱シンフォギアGX', 2015),
('bGKQj7WF9eS', 'アクエリオンロゴス', 2015),
('vqueeAuLoaa', 'デュラララ!!×2 転', 2015),
('Ht8AgZgswLs', 'Classroom☆Crisis', 2015),
('Ex6TeWnwydq', 'ブーブーボーイ', 2015),
('hP6wWo7dTxr', 'うしおととら', 2015),
('xKc5vgiiS3B', 'コードギアス 亡国のアキト 第4章「憎しみの記憶から」', 2015),
('PNkTs2rQ84m', '映画 ひつじのショーン～バック・トゥ・ザ・ホーム～', 2015),
('y6B5BiNLRjd', 'それいけ！アンパンマン ミージャと魔法のランプ', 2015),
('7uz4RY8ixaW', 'リズムでうたおう！アンパンマン夏まつり', 2015),
('Yme4i4BQrnA', 'ガッチャマン クラウズ インサイト', 2015),
('7akiuPbwnbJ', 'シンドバッド 空とぶ姫と秘密の島', 2015),
('zn742HjKmG9', 'VENUS PROJECT -CLIMAX-', 2015),
('gpEWUEGthEs', 'ドラゴンボール超', 2015),
('puo4CygJVSQ', 'WORKING!!!', 2015),
('5T2rjYTtLWm', '六花の勇者', 2015),
('a7vP8Zp3Cxt', 'Charlotte', 2015),
('G3cVpwqhAaQ', 'ワカコ酒', 2015),
('mEaCS4XBjDL', '暗闇三太', 2015),
('pqx3Po5mVNq', 'キュートランスフォーマー さらなる人気者への道', 2015),
('sjW2QCZriyF', 'のんのんびより りぴーと', 2015),
('wiGAibmoNvh', '怪獣酒場 カンパーイ!', 2015),
('Ug6QijhFGvM', 'てーきゅう', 2015),
('Nimbt8KgLvk', 'オーバーロード', 2015),
('JW3CDK2tb8Z', 'ミリオンドール', 2015),
('MvstS8ttXfZ', '赤髪の白雪姫', 2015),
('tY7PJ4zPiiQ', 'それが声優!', 2015),
('zxr9Cfrd8k7', '実は私は', 2015),
('5h2fQ3UUobf', 'To LOVEる -とらぶる- ダークネス 2nd', 2015),
('mu2BTSHKy4Q', 'モンスター娘のいる日常', 2015),
('zkeEKhPyxV6', 'ビキニ・ウォリアーズ', 2015),
('E6dFntptvmE', '洲崎西 THE ANIMATION', 2015),
('TdFeUnffAdA', '空戦魔導士候補生の教官', 2015),
('onFpa8TJv7D', '干物妹!うまるちゃん', 2015),
('MCm7sACAJJa', 'がっこうぐらし!', 2015),
('MYTLAC3mxZv', '純情ロマンチカ3', 2015),
('ZLDjEWgsaeQ', '野球部あるある', 2015),
('Qn72RuMSGsS', 'だんちがい', 2015),
('ViQnEM5szgZ', '監獄学園', 2015),
('rnLAH6d3cSn', 'バケモノの子', 2015),
('f7gpU6cpSy8', 'GOD EATER', 2015),
('zLVibQyiAGx', '枕男子', 2015),
('u8wcWvBqF2i', 'アイドルマスター シンデレラガールズ', 2015),
('JQFbd2ZN7K6', 'ポケモン・ザ・ムービーXY「ピカチュウとポケモンおんがくたい」', 2015),
('wmRociSVbFH', 'ポケモン・ザ・ムービーXY「光輪の超魔神 フーパ」', 2015),
('VwoyH24SndY', '雪の女王 新たなる旅立ち', 2015),
('2BrwzRRXhLJ', '南の島のラブソング', 2015),
('6yM96qTxwkc', 'インサイド･ヘッド', 2015),
('R5boN4jg7KE', 'Fate/kaleid liner プリズマ☆イリヤ ツヴァイ ヘルツ!', 2015),
('udv4uSobryY', 'ミニオンズ', 2015),
('wmLNjwJXssv', 'BORUTO ボルト -NARUTO THE MOVIE-', 2015),
('Gmf9jCy8LTA', 'NHKスペシャル アニメドキュメント あの日、僕らは戦場で', 2015),
('8sFKZzPZtaY', '団地ともおスペシャル ～夏休みの宿題は終わったのかよ?ともお～', 2015),
('geR54uP2rBn', 'くまのアーネストおじさんとセレスティーヌ', 2015),
('7o5fsBo6hAJ', 'サンダーバード ARE GO', 2015),
('nzsu5zFyirm', 'ゆるゆり なちゅやちゅみ!+', 2015),
('h5EW4gTSw7W', 'アイカツ！ミュージックアワード　みんなで賞をもらっちゃいまSHOW！', 2015),
('qjrhq3DmQbk', '劇場版 デート・ア・ライブ 万由里ジャッジメント', 2015),
('e2iHH2KzJki', '氷川丸ものがたり', 2015),
('g3GtoAhZ7T6', '劇場版 弱虫ペダル', 2015),
('byUPBrC5iL2', '『たまゆら～卒業写真～』第2部 響-ひびき-', 2015),
('guNFU3c5xi4', '映画 かいけつゾロリ うちゅうの勇者たち', 2015),
('bagzFqihzMn', '劇場版総集編 後編 ハイキュー！！ 勝者と敗者', 2015),
('a3QCzdeb9GU', '心が叫びたがってるんだ。', 2015),
('nCJjCNGVx5b', 'トランスフォーマー アドベンチャー', 2015),
('orufbGhUoLb', 'オシリスの天秤', 2015),
('qzvs3nvb2bq', 'ふうせんいぬティニー', 2015),
('xPw6Z3iTQFv', '"DIABOLIK LOVERS MORE BLOOD"', 2015),
('LrNfsLeRzB4', '"Wake Up Girls！続・劇場版 青春の影"', 2015),
('6diMh6bMTe3', 'ARIA The AVVENIRE', 2015),
('qgsZPQH4UAV', 'かみさまみならい ヒミツのここたま', 2015),
('JHqzLpVb3Nk', 'きょーふ!ゾンビ猫', 2015),
('Pb9uUZH4EPm', 'ミス・モノクローム -The Animation- 3', 2015),
('96V9aySmxd5', 'ハッカドール THE あにめ～しょん', 2015),
('RdCho4XrTsY', '金田一少年の事件簿R', 2015),
('SQbj4Dd8yut', 'ヤング ブラック・ジャック', 2015),
('i5gHQ47wmB7', 'ランス・アンド・マスクス', 2015),
('NuisQR3rif6', '猫なんかよんでもこない。', 2015),
('L3A4kLpeUjV', 'ロボットガールズZプラス', 2015),
('UExSfGVZBKD', 'ヘヴィーオブジェクト', 2015),
('KV3uaCbxPYV', 'ルパン三世', 2015),
('7EGaTbZhqCJ', 'いとしのムーコ', 2015),
('NUsKtKoQ3Zs', '影鰐-KAGEWANI-', 2015),
('MmnWuiuftyX', '屍者の帝国', 2015),
('oDZmTd5GB47', '劇場版 蒼き鋼のアルペジオ -アルス・ノヴァ- Cadenza', 2015),
('KmvZjhND2Uj', '機動戦士ガンダム 鉄血のオルフェンズ', 2015),
('734YiUFLZ5j', '蒼穹のファフナー EXODUS', 2015),
('acVj3sLXkBG', 'ハイキュー!! セカンドシーズン', 2015),
('VuvJt8bHDJt', 'うたわれるもの 偽りの仮面', 2015),
('rwFvwPRF5pH', '学戦都市アスタリスク', 2015),
('ynRTpaLzBFY', 'K RETURN OF KINGS', 2015),
('gSwkcCataNX', 'ノラガミ ARAGOTO', 2015),
('jP3jUuJ9pxW', '落第騎士の英雄譚', 2015),
('b5H8g2RTAWw', 'コンクリート・レボルティオ～超人幻想～', 2015),
('nMNai73vGK3', '雨色ココア Rainy colorへようこそ!', 2015),
('RCLgVAPSTVW', 'コメット・ルシファー', 2015),
('n3SUYsuF38x', '温泉幼精ハコネちゃん', 2015),
('TDgvNyskTa7', '小森さんは断れない!', 2015),
('MA8JR5NBhkH', '進撃!巨人中学校', 2015),
('wvvv3TBt8jW', 'Peeping Life', 2015),
('NmRtGJqx5EF', 'こわぼん', 2015),
('Gofd3hRb4pM', '終物語', 2015),
('QtG47BDesZr', 'おしりかじり虫', 2015),
('dAbKrdkAFsP', 'どちゃもん じゅにあ', 2015),
('yNmqEmayqQN', 'ワンパンマン', 2015),
('wmXrFwu3pND', 'ゆるゆり さん☆ハイ!', 2015),
('edwCUFaAF8W', 'てーきゅう', 2015),
('NGe3EiWqGkc', '緋弾のアリアAA', 2015),
('38d3eSiUNcv', '新あたしンち', 2015),
('EwW8nrW6Sk2', 'おそ松さん', 2015),
('yoAUNmdf2EP', 'スタミュ', 2015),
('9FbVixq7b52', 'JKめし!', 2015),
('TUrXE8Lzfzf', '俺がお嬢様学校に「庶民サンプル」としてゲッツされた件', 2015),
('vdFWhoEEemS', '探偵チームKZ事件ノート', 2015),
('87UKWRJ4yst', '不思議なソメラちゃん', 2015),
('UWg3cU76Mkc', 'Dance with Devils', 2015),
('J4ZeQfMvArD', '北斗の拳 イチゴ味', 2015),
('2kSm8kUUMmW', 'DD北斗の拳2', 2015),
('QWWpz9E7skU', '櫻子さんの足下には死体が埋まっている', 2015),
('cpuCGErBni3', '対魔導学園35試験小隊', 2015),
('FDrH5ZHPwJM', 'リトルウィッチアカデミア 魔法仕掛けのパレード', 2015),
('N9zTTJFVDPa', 'すべてがFになる THE PERFECT INSIDER', 2015),
('RTJbs6mgnRZ', 'カードファイト!! ヴァンガードG ギアースクライシス編', 2015),
('9i5mbR5PTxu', '終わりのセラフ 名古屋決戦編', 2015),
('x4vTcrQE7Ly', 'VALKYRIE DRIVE -MERMAID-', 2015),
('F76DF3Q9quA', 'GAMBA ガンバと仲間たち', 2015),
('2mKEqmfeiEi', 'ご注文はうさぎですか??', 2015),
('MvgSVVcG8ua', '新妹魔王の契約者 BURST', 2015),
('qnikfP5AMyz', '牙狼 -紅蓮ノ月-', 2015),
('Rst7dGLne64', 'UFO学園の秘密', 2015),
('jH4gwkxnGR5', 'どうしても干支にはいりたい', 2015),
('e6AW89J5gqw', 'ブレイブビーツ', 2015),
('TGcdwe8Doow', '血液型くん!3', 2015),
('2wmJo2pT2Se', 'あにトレ!EX', 2015),
('wtaCqceh75Q', '猫のダヤン 日本へ行く', 2015),
('SCutZXxT4jS', 'とびだすプリパラ　み～んなでめざせ！アイドル☆グランプリ', 2015),
('pXiYDgQyNFC', 'ポケットモンスター XY&Z', 2015),
('EKxD3vetj3C', '映画 Go！プリンセスプリキュア Go！Go！！豪華3本立て！！！ パンプキン王国のたからもの', 2015),
('gBhkbax9Pwj', 'プリキュアとレフィのワンダーナイト！', 2015),
('cacVUFxwkQa', 'キュアフローラといたずらかがみ', 2015),
('fLGyQ34cqHG', 'ミニはま -MINIMUM HAMATORA-', 2015),
('aYkGGY6kwpx', 'こども刑事めめたん', 2015),
('5A9PuW8uNgQ', 'ハーモニー', 2015),
('q8y3LAWXvyf', '劇場版 ミニはま', 2015),
('PArWsCvjMFk', 'Fw:ハマトラ', 2015),
('nCTPG2rV8vp', 'デジモンアドベンチャー tri.第1章「再会」', 2015),
('2AirV7ouK7p', 'リトルプリンス 星の王子さまと私', 2015),
('DD59aESALmm', 'ガールズ＆パンツァー 劇場版', 2015),
('xw5WKNkX5L9', '亜人 第1部 -衝動-', 2015),
('TXHxpQ9pFwu', '『たまゆら～卒業写真～』第3部 憧 - あこがれ -', 2015),
('HZphiYggtzW', 'I LOVE スヌーピー THE PEANUTS MOVIE', 2015),
('Wmmz5VUjCRd', 'ハイ☆スピード！-Free！ Starting Days-', 2015),
('pWGLE5PkfPd', '紅殻のパンドラ', 2015),
('omo9NveM79P', '"Wake Up Girls！ Beyond the Bottom"', 2015),
('DXgJ8UnXsvK', '映画 妖怪ウォッチ エンマ大王と5つの物語だニャン！', 2015),
('2VBks6UeZvV', 'コチンPa!', 2015),
('YcjFHT6kK4A', '映画ちびまる子ちゃん イタリアから来た少年', 2015),
('EviBHMnN9vr', 'ミムマムミント', 2015),
('wYzQuRCLdDN', '青春×機関銃 特別編', 2015),
('YjVRNJxTmJD', 'プリンス・オブ・ストライド オルタナティブ', 2016),
('5YaeB8XaWgS', 'アクティヴレイド -機動強襲室第八係-', 2016),
('tqRtvs6osFP', 'ハルチカ～ハルタとチカは青春する～', 2016),
('6xBqnwEFGpa', '無彩限のファントム・ワールド', 2016),
('gYzHCfKRYux', '少女たちは荒野を目指す', 2016),
('J2DSTBQiy5a', 'NORN9 ノルン+ノネット', 2016),
('KN9Vo55Gvyd', 'SUSHI POLICE', 2016),
('84iM9PDYtu2', 'ファンタシースターオンライン2 ジ アニメーション', 2016),
('LVE3vyKfqbH', 'おしえて! ギャル子ちゃん', 2016),
('kbSRoLVzUEu', 'おじさんとマシュマロ', 2016),
('uRUNLSbDsW5', '紅殻のパンドラ', 2016),
('WX4aYXzq3y2', 'ディバインゲート', 2016),
('NwMY4xQkTRG', '僕だけがいない街', 2016),
('GSSNPDSoVRE', '旅街レイトショー', 2016),
('SmzfAG8tVEK', '暗殺教室', 2016),
('acFH7SdNMDu', '傷物語 鉄血篇', 2016),
('3QETP76pKDu', '石膏ボーイズ', 2016),
('kJVM6KJ6JR6', 'だがしかし', 2016),
('eGnHPBm2KSy', 'GATE 自衛隊 彼の地にて、斯く戦えり', 2016),
('zGVLZeCAqSZ', 'KING OF PRISM by PrettyRhythm', 2016),
('Am4fMyiiDzQ', 'ガラスの花と壊す世界', 2016),
('ZHwk5bP2UEY', '霊剣山 星屑たちの宴', 2016),
('vUgLk2ujykA', 'デュラララ!!×2 結', 2016),
('FGr6xE8BhU4', 'ブブキ・ブランキ', 2016),
('X2xxZT2G8Vs', 'ラクエンロジック', 2016),
('iCiRcJXziFS', '昭和元禄落語心中', 2016),
('uh5svt9fege', 'ナースウィッチ小麦ちゃんR', 2016),
('KdNeBinwXLF', '大家さんは思春期!', 2016),
('E4Gr8yzCJDk', 'Dimension W', 2016),
('sbb9ehaiinv', '虹色デイズ', 2016),
('wR99MB5oERN', 'シュヴァルツェスマーケン', 2016),
('VEaV2UqtS6R', '灰と幻想のグリムガル', 2016),
('dQr4soKkaN9', '最弱無敗の神装機竜', 2016),
('Wd6Zyaeh3FN', '闇芝居', 2016),
('Nt7YqByuRuE', '魔法少女なんてもういいですから。', 2016),
('G5NffHXzdcX', '蒼の彼方のフォーリズム', 2016),
('Kxo6e4wTPBH', '赤髪の白雪姫', 2016),
('oJF5tsZoimM', 'てーきゅう', 2016),
('Bjw5qsbem94', '血液型くん!4', 2016),
('Ng9VXLwMYSz', 'この素晴らしい世界に祝福を!', 2016),
('Mwb8pxcZvfz', 'シンドバッド 魔法のランプと動く島', 2016),
('yN9ZGXgtXvB', '亜人', 2016),
('82nKMekMWWT', 'がんばれ! ルルロロ TINY★TWIN★BEARS', 2016),
('kqQx6EfT4wd', 'PERSONA3 THE MOVIE #4 Winter of Rebirth', 2016),
('UBwrYkN6dJZ', 'この男子、魔法がお仕事です。', 2016),
('ZutNcZYduon', '劇場版 ラストエグザイル ‐銀翼のファム‐ Over The Wishes', 2016),
('zKvEchV6HyA', 'コードギアス　亡国のアキト　最終章「愛シキモノタチヘ」', 2016),
('hVsFBCNqwbY', '新劇場版『頭文字D Legend3 -夢現-』', 2016),
('A8x3xGVfBup', 'リルリルフェアリル ～妖精のドア～', 2016),
('cMjmBX24QWF', '魔法つかいプリキュア!', 2016),
('7wpyXd8mwna', '想いのかけら', 2016),
('nWhw2aLdiUb', '劇場版 selector destructed WIXOSS', 2016),
('YdTMDd7X6Fj', 'モンスターホテル2', 2016),
('3DoDDoCuC8x', '同級生', 2016),
('wScHdg4aqLc', '劇場版　探偵オペラ　ミルキィホームズ～逆襲のミルキィホームズ～', 2016),
('SrPskJuupzm', 'カラフル忍者いろまき', 2016),
('PUdVXvQQHsh', 'かっちけねぇ！', 2016),
('YGfBdFuomf9', '父を探して', 2016),
('oETrE5YE67o', '風の又三郎', 2016),
('uojGR2rmUcW', 'UTOPA', 2016),
('xt9cN8zSEHd', '彼女と彼女の猫 -Everything Flows-', 2016),
('EEG4589wArN', 'ひつじのショーン スペシャル いたずらラマがやってきた！', 2016),
('ifusSd8LFwC', '映画ドラえもん　新・のび太の日本誕生', 2016),
('2CLtFc2ekws', '映画 プリパラ み～んなのあこがれ♪レッツゴー☆プリパリ', 2016),
('aFv5CjWm2vA', 'デジモンアドベンチャー tri.第2章「決意」', 2016),
('JpP8MxT2ojn', 'アーロと少年', 2016),
('2r9oEk5V8oc', 'ボクのスーパーチーム', 2016),
('uXEKPD5kC5U', '甲鉄城のカバネリ 序章', 2016),
('nQPUSKCF4gE', '映画プリキュアオールスターズ みんなで歌う♪奇跡の魔法！', 2016),
('gf2zZDDYUBH', '想いのかけら', 2016),
('qbZnkepuDXS', '宇宙パトロールルル子', 2016),
('QeVHaecXKrh', 'うしおととら', 2016),
('8Mk2B4jEwGD', '影鰐-KAGEWANI-承', 2016),
('eaWspnwx6sp', '迷家 -マヨイガ-', 2016),
('G9PFkTLnMMu', '猫も、オンダケ', 2016),
('GHXzwHXfHFU', 'ジョジョの奇妙な冒険 ダイヤモンドは砕けない', 2016),
('y96bbQXPxmT', '『たまゆら～卒業写真～』第4部 朝-あした-', 2016),
('yvSjgg3vP9e', 'フューチャーカード バディファイトDDD', 2016),
('grDSCZmPAW8', '逆転裁判 ～その「真実」、異議あり!～', 2016),
('wygCjFghAkt', '学戦都市アスタリスク', 2016),
('UucwakUGeGq', 'テラフォーマーズ リベンジ', 2016),
('6BNMPey2vxa', 'パンパカパンツ WおNEW!', 2016),
('SptcqXHkpZP', 'アグレッシブ烈子', 2016),
('s7uQuVutQB6', 'ぼのぼの', 2016),
('s2QV7ZqTkPw', '僕のヒーローアカデミア', 2016),
('Ky5oQdnCYJ3', 'ラグナストライクエンジェルズ', 2016),
('og2xYeo9qBZ', '機動戦士ガンダムUC Re:0096', 2016),
('DtvLEpDF8p3', 'デュエル・マスターズ VSRF', 2016),
('x4r242fLkRs', 'エンドライド', 2016),
('sMqSr99PogZ', 'パンでPeace!', 2016),
('NascPQ6TvYp', 'マクロスΔ', 2016),
('wVxAgQv79CG', 'くまみこ', 2016),
('5KtpEpHyy8Z', '美少女戦士セーラームーンCrystal Season', 2016),
('PkwewYR6P9X', '12歳。 ～ちっちゃなムネのトキメキ～', 2016),
('bVV3WYeN48a', 'Re:ゼロから始める異世界生活', 2016),
('djv8mUbEUb2', 'ベイブレードバースト', 2016),
('rZTe6QDDHPC', '怪盗ジョーカー', 2016),
('QDXWyiQbqWd', '朝だよ!貝社員', 2016),
('5Z7bkgXR7FE', '聖戦ケルベロス 竜刻のファタリテ', 2016),
('XNDkobPhE3y', '少年アシベ GO! GO! ゴマちゃん', 2016),
('6dA3YDCrdQG', '薄桜鬼 ～御伽草子～', 2016),
('i93w8EFLrH5', 'ジョーカー・ゲーム', 2016),
('rAoxP4X3v2P', 'ハンドレッド', 2016),
('CEcEt9N2hCb', 'ばくおん!!', 2016),
('H35nq6g7U5G', '美少女遊戯ユニット クレーンゲール', 2016),
('KkX7XZuXxFg', 'バトルスピリッツ ダブルドライブ', 2016),
('QutvBsiA9Z7', 'SUPER LOVERS', 2016),
('tbE25CZZzTv', 'ねこねこ日本史', 2016),
('TagWWiZvacu', '双星の陰陽師', 2016),
('Qd6RndmtCya', 'ネトゲの嫁は女の子じゃないと思った?', 2016),
('JiVKqtJ5GEt', '文豪ストレイドッグス', 2016),
('6J22pHSKDrK', 'アイカツスターズ!', 2016),
('bbr3SuBoBit', 'あんハピ♪', 2016),
('DM8yuyxbhiP', 'クロムクロ', 2016),
('XJifFwJhZ3s', '鬼斬', 2016),
('rgzxwgHQbLn', '甲鉄城のカバネリ', 2016),
('qLBhvkKvDrW', 'あはれ!名作くん', 2016),
('snKhpZaVGVj', '坂本ですが?', 2016),
('vZJqa8d5j39', '少年メイド', 2016),
('DLk6PnzdAxP', '映画 きかんしゃトーマス 探せ！！ 謎の海賊船と失われた宝物', 2016),
('CUHTsoh7bwz', '田中くんはいつもけだるげ', 2016),
('AVbLdSAi58X', '境界のRINNE', 2016),
('feCogiyGYqX', 'キズナイーバー', 2016),
('YfggZWDDTZF', 'CoCO & NICO', 2016),
('33BDEht5u6e', 'コンクリート・レボルティオ～超人幻想～ THE LAST SONG', 2016),
('N7n3tBgFdiM', 'なめこ ～せかいのともだち～', 2016),
('V7iPo5MNzGb', 'ハイスクール・フリート', 2016),
('QMmDQEg8mxc', 'とんかつDJアゲ太郎', 2016),
('etEL2THxb2d', 'ふらいんぐうぃっち', 2016),
('HZraLzPYfWB', '三者三葉', 2016),
('YwAmkHggonW', '忍者ハットリくん', 2016),
('crWZkj9Spqw', 'ワガママハイスペック', 2016),
('ubnuz3gR5QX', 'うさかめ', 2016),
('KWpWWkGHrnc', '映画クレヨンしんちゃん 爆睡！ ユメミーワールド大突撃', 2016),
('saFuqzcDsVu', '名探偵コナン 純黒の悪夢', 2016),
('M38SRhmQgEq', 'ビッグオーダー', 2016),
('rTw6S2zCFFU', 'カードファイト!! ヴァンガードG ストライドゲート編', 2016),
('a9fxRTYi9ek', 'マギ シンドバッドの冒険', 2016),
('VZu8z4skK2f', '劇場版 響け！ユーフォニアム ～ 北宇治高校吹奏楽部へようこそ ～', 2016),
('xvnDTPeFWP2', 'ずっと前から好きでした。 ～告白実行委員会～', 2016),
('fTEEWmaiP4f', 'カミワザ・ワンダ', 2016),
('72P8Vr35GHU', 'ズートピア', 2016),
('7iTs4YVkeSn', 'FNS地球特捜隊ダイバスター緊急出動! トーテムとか徹底調査SP', 2016),
('v4detZGFcdk', '遊☆戯☆王 THE DARK SIDE OF DIMENSIONS', 2016),
('c7ib94LR7oW', 'ムズムズ18', 2016),
('qmNd3S3qCre', 'それいけ!サブイボマスク', 2016),
('PTYZusGQpyW', '亜人 第2部 -衝突-', 2016),
('KRF6t79iNRg', 'シンドバッド', 2016),
('YFN6oV2kXhS', 'ガルム・ウォーズ', 2016),
('2NjMcew9sH4', '劇場版 牙狼〈GARO〉‐DIVINE FLAME‐', 2016),
('6oq3KAEJg4n', 'なぜ生きる －蓮如上人と吉崎炎上ー', 2016),
('yDgpDbAiv8m', '明日の世界', 2016),
('wZqoifgtX8b', 'ガールズ＆パンツァー OVA 「愛里寿・ウォー！」', 2016),
('At5d8GJt7wo', 'レゴ ネックスナイツ 4D ムービー', 2016),
('vEkaxH3sUUf', 'オトナの一休さん', 2016),
('MveGpUmZVRP', 'ほのぼのログ', 2016),
('bV4AxLMhg63', 'ネコこのゴロ', 2016),
('yDXmtvmuj8j', 'オシリスの天秤 -season2-', 2016),
('TADmjBFgUCb', 'RS計画 -Rebirth Storage-', 2016),
('CXaKjNp9DW2', '不機嫌なモノノケ庵', 2016),
('UjbsZF6Eht4', 'ぐらP&ろで夫II', 2016),
('QPoaobR5X4k', 'ベルセルク', 2016),
('CFUtWCbk5ng', 'ももくり', 2016),
('TNnT7SsHmCQ', 'それいけ！アンパンマン おもちゃの星のナンダとルンダ', 2016),
('225L5UjcFvx', 'ラブライブ!サンシャイン!!', 2016),
('HSGmqxFRbTE', '食戟のソーマ 弐ノ皿', 2016),
('QYMrFd9W86p', '初恋モンスター', 2016),
('D9LCqdspEXQ', 'Rewrite', 2016),
('faaTrrGfKx2', 'ReLIFE', 2016),
('2qHNKcLyfrE', 'テイルズ オブ ゼスティリア ザ クロス', 2016),
('ssBi7GRkzJW', 'B-PROJECT～鼓動＊アンビシャス～', 2016),
('wTaqMgBKMNS', 'アルスラーン戦記 風塵乱舞', 2016),
('XzTMWGesHxT', 'ちょびっとづかん', 2016),
('gbqqYMnfLTT', 'おなら吾郎', 2016),
('YpsQyinMN7D', 'DAYS', 2016),
('3FBVEgBL7hH', 'トランスフォーマーアドベンチャー -マイクロンの章-', 2016),
('8LGPdy8fXKi', 'パズドラクロス', 2016),
('tHszyCDoqtE', '斉木楠雄のΨ難', 2016),
('ti2J5EdvN5r', 'NEW GAME!', 2016),
('eWu7gEatx8j', 'ばなにゃ', 2016),
('7v6c2kVcgD4', 'orange', 2016),
('aywMEapW5gr', 'SHOW BY ROCK!! しょ～と!!', 2016),
('c2NuUBhuHay', 'SERVAMP -サーヴァンプ-', 2016),
('PqUU543VRso', 'D.Gray-man HALLOW', 2016),
('NgidLsLXWSv', 'タブー・タトゥー', 2016),
('vWhrcBXgQMs', '腐男子高校生活', 2016),
('2xtcqwTqDS9', 'チア男子!!', 2016),
('qh8YQhWz8qM', '甘々と稲妻', 2016),
('X5ZC26ZFeFC', 'Fate/kaleid liner プリズマ☆イリヤ ドライ!!', 2016),
('xfpRWWSCLdd', 'スカーレッドライダーゼクス', 2016),
('Jv3MdvDM3HX', 'ツキウタ。 THE ANIMATION', 2016),
('oWxU9w4DbLj', '魔装学園H×H', 2016),
('6ZhgWsNskAd', 'レガリア The Three Sacred Stars', 2016),
('BSvv7vnLRqz', '魔法少女?なりあ☆がーるず', 2016),
('kWRiF53aS2x', 'OZMAFIA!!', 2016),
('PreJExKU9VC', '美男高校地球防衛部LOVE!LOVE!', 2016),
('URtz33Qnyt4', 'この美術部には問題がある!', 2016),
('eFrn8UAtesL', 'あまんちゅ!', 2016),
('bjRKKBEFwWJ', 'はんだくん', 2016),
('2C94MzEBiiy', 'タイムトラベル少女～マリ・ワカと8人の科学者たち～', 2016),
('DyN2xb3NDfG', 'ねじ巻き精霊戦記 天鏡のアルデラミン', 2016),
('apUrMmjZTwX', 'KINGSGLAIVE FINAL FANTASY XV', 2016),
('o8WVtqiMx3v', '一人之下 the outcast', 2016),
('eiYAayDPWFw', '風のように', 2016),
('bZfoua4pBzB', '91Days', 2016),
('GzB2BidjcSp', 'アンジュ・ヴィエルジュ', 2016),
('fis7h6ELdaH', 'クオリディア・コード', 2016),
('c8zRvr5BNJL', 'ダンガンロンパ3 -The End of 希望ヶ峰学園- 未来編', 2016),
('YXXhPRhHkXR', 'アクティヴレイド -機動強襲室第八係- 2nd', 2016),
('8LFp6ibcwJi', 'モブサイコ100', 2016),
('vxmASZqx98z', 'ダンガンロンパ3 -The End of 希望ヶ峰学園- 絶望編', 2016),
('Wgcw2VkXbfy', 'バッテリー', 2016),
('q3xcDZWzHJV', 'ポケモン・ザ・ムービー XY&Z ボルケニオンと機巧のマギアナ', 2016),
('iiEQNAz2pK9', 'ファインディング・ドリー', 2016),
('gVeG2eEPwqU', 'アクセル・ワールド INFINITE∞BURST', 2016),
('E2Y7Nwxm7mk', 'ONE PIECE FILM GOLD', 2016),
('VpLVrpjPo9h', 'ムズムズ18', 2016),
('thLxsoy4yZm', 'LIFE!～人生に捧げるコント～', 2016),
('63rZLjyXCah', 'ルドルフとイッパイアッテナ', 2016),
('kw7q6B4qVdU', 'ねむれ思い子 空のしとねに', 2016),
('tBhHRSKioE3', 'ラチェット＆クランク THE MOVIE', 2016),
('5uTWjURBGZe', 'ミニオンズ：アルバイト大作戦', 2016),
('JbvFnxctGEG', 'アルプスの少女ハイジ?ちゃらおんじ', 2016),
('SPNiDnvvwpT', 'ペット', 2016),
('n2nWRj9oaZC', 'アイカツ！ ねらわれた魔法のアイカツ！カード', 2016),
('B7ayhZFnRLD', '劇場版アイカツスターズ！', 2016),
('eKRhiPwxUyC', '傷物語Ⅱ 熱血篇', 2016),
('LPekahHmzPb', 'ソング・オブ・ザ・シー 海のうた', 2016),
('2cZoeuSnQMX', 'ガンダムビルドファイターズトライ アイランド・ウォーズ', 2016),
('WZUBs7YrokF', 'ミカンせいじん現わる', 2016),
('JxGvhLF5MNy', '君の名は。', 2016),
('PCF9Uz9Reka', '七つの大罪 聖戦の予兆', 2016),
('HyCpnpb2UpN', 'やさ村やさしのやさしい世界', 2016),
('P5HkeDGDb7A', 'PERSONA5 the Animation -THE DAY BREAKERS-', 2016),
('uPnVGpyruGg', 'こちら葛飾区亀有公園前派出所「THE FINAL 両津勘吉 最後の日」', 2016),
('bvNy7qSumbf', 'ヘボット!', 2016),
('ir5xTazwwmd', '亜人 最終章 -衝戟-', 2016),
('9mtvgbmYXyz', 'にゃんぼー!', 2016),
('86JFCczBD8b', 'ダンガンロンパ3 -The End of 希望ヶ峰学園- 希望編', 2016),
('yAF2yE4SiRr', 'タマ&フレンズ ～うちのタマ知りませんか？～', 2016),
('kzWtV3fXHLA', 'デジモンユニバース アプリモンスターズ', 2016),
('9PhZzirhg33', 'ブブキ・ブランキ 星の巨人', 2016),
('MPesDBv9gfn', '猫のダヤン ふしぎ劇場', 2016),
('66r4LspCryk', 'タイムボカン24', 2016),
('pN3QRrhN8fL', '終末のイゼッタ', 2016),
('nVn45itquB7', 'WWW.WORKING!!', 2016),
('xdRSWdkaF73', 'Bloodivores', 2016),
('Dc8prREeTGM', 'うたの☆プリンスさまっ♪マジLOVEレジェンドスター', 2016),
('Tfbf9iLFE4h', '機動戦士ガンダム 鉄血のオルフェンズ', 2016),
('YRevdKKKVzW', 'モンスターハンター ストーリーズ RIDE ON', 2016),
('WsydRN7skLZ', 'カードファイト!! ヴァンガードG NEXT', 2016),
('4hehsw2xHSy', 'こねこのチー ポンポンらー大冒険', 2016),
('AMFUxR2NAsi', 'マジきゅんっ!ルネッサンス', 2016),
('Q6TXenkeLHu', 'おくさまが生徒会長!+!', 2016),
('rfc9JZtkaZn', '雨色ココア in Hawaii', 2016),
('CgCReQxxP2A', '魔法少女育成計画', 2016),
('3Cx4XXVuLxo', 'SHOW BY ROCK!!#', 2016),
('wv9KoP2tAZ8', 'タイガーマスクW', 2016),
('7a87pGgWimQ', 'ペペペペン議員', 2016),
('iCm4DFWTshp', 'ViVid Strike!', 2016),
('aBscB5PxtqX', '12歳。～ちっちゃなムネのトキメキ～', 2016),
('oPPzLWVxwDj', '聖闘士星矢 黄金魂 -soul of gold-', 2016),
('bpe7dKHbN2f', 'あおおに～じ・あにめぇしょん～', 2016),
('xiLFRhLZpZT', '3ねんDぐみガラスの仮面', 2016),
('uggPuRrK98c', '怪盗ジョーカー', 2016),
('NRouVk5xXKT', 'アイドルメモリーズ', 2016),
('zzdBqXsqCv4', '刀剣乱舞－花丸－', 2016),
('MUekadBrnok', 'ステラのまほう', 2016),
('5TTqEtDnft7', 'TRICKSTER -江戸川乱歩「少年探偵団」より-', 2016),
('UvmT3eJwNqg', '侍霊演武：将星乱', 2016),
('m7CzkAsePtK', '学園ハンサム', 2016),
('GbrGdaVHGUy', '灼熱の卓球娘', 2016),
('tte4sgUUgXh', '信長の忍び', 2016),
('rEHsH2wCfjf', '魔法少女なんてもういいですから。 セカンドシーズン', 2016),
('MUN8hju8ebu', '美少女遊戯ユニット クレーンゲールギャラクシー', 2016),
('iNiMApPbgvp', 'あにトレ!XX -ひとつ屋根の下で-', 2016),
('Sgutypnk6z5', '奇異太郎少年の妖怪絵日記', 2016),
('aaC95vNaRsc', 'てーきゅう', 2016),
('DmvE8QVpuEL', 'CHEATING CRAFT', 2016),
('ZUhEm8cXXUT', '装神少女まとい', 2016),
('Dv5NFUP3rA5', '夏目友人帳 伍', 2016),
('nUtJSA9cMKA', 'TO BE HERO', 2016),
('k6Y4fnr8PBf', 'ナゾトキネ', 2016),
('HnCeYx4hScP', 'ナンバカ', 2016),
('chqq2ppn7j3', '文豪ストレイドッグス', 2016),
('4HW4FYdvWtQ', '響け!ユーフォニアム2', 2016),
('bkUXETc9kzQ', 'フリップフラッパーズ', 2016),
('rVxbiYEk7kh', 'ブレイブウィッチーズ', 2016),
('dsLrAA7PErN', 'ユーリ!!! on ICE', 2016),
('XBdf3NdNgpK', '競女!!!!!!!!', 2016),
('hzZttUBN9jd', 'ガーリッシュナンバー', 2016),
('oCnEtZzRhAN', '私がモテてどうすんだ', 2016),
('kr3JNEYqSb4', 'バーナード嬢曰く。', 2016),
('VcSDu7BXy8o', 'ドリフターズ', 2016),
('DCeEjaAoaiR', 'ドリフェス！', 2016),
('pdKffKscWyB', 'ALL OUT!!', 2016),
('NbbQzVGLCLK', 'Occultic;Nine -オカルティック・ナイン-', 2016),
('bgKc7XHQEej', 'ハイキュー!! 烏野高校VS白烏沢学園高校', 2016),
('i5EtHFmvSZ6', 'Lostorage incited WIXOSS', 2016),
('iMFtZumFwuH', 'ろんぐらいだぁす！', 2016),
('Sbx75rt3vWk', 'クラシカロイド', 2016),
('HMer9nShGvw', '3月のライオン', 2016),
('MzVTCogA9xj', '亜人', 2016),
('oUkYwPAgEGx', 'うどんの国の金色毛鞠', 2016),
('cnspUHRiNua', '戦国鳥獣戯画～甲～', 2016),
('fNBXR2a8yG9', 'はがねオーケストラ', 2016),
('SapQxEF7TLY', 'どちゃもん じゅにあ', 2016),
('YE34sMdiwcb', '月曜日のたわわ', 2016),
('jTnxHtAqXgw', 'ムズムズ18', 2016),
('RvDBh2WjsNR', '舟を編む', 2016),
('kUo2pH3C4kt', 'この世界の片隅に', 2016),
('Zan9yUaiFch', 'トランスフォーマーアドベンチャー -マイクロンの章- 新たなる敵', 2016),
('qKacNV55jBQ', 'うらら迷路帖', 2017),
('ovMcMooD8jt', 'セイレン', 2017),
('7TJK9Xrzrd4', 'クズの本懐', 2017),
('ix3opPxu4de', '青の祓魔師 京都不浄王篇', 2017),
('DHmAQ9GpfX9', '昭和元禄落語心中～助六再び篇～', 2017),
('yi424rwcR3m', '龍の歯医者', 2017),
('pBHiewTUSkN', 'AKIBA’S TRIP -THE ANIMATION-', 2017),
('apXjeLczUPm', 'アイドル事変', 2017),
('pQkE6kzsPUs', '超・少年探偵団NEO', 2017),
('CiLNVjNcgxR', '亜人ちゃんは語りたい', 2017),
('yG7RVQxhfuK', '政宗くんのリベンジ', 2017),
('hN5kTmSmNbr', 'Rewrite (2ndシーズンMoon編/Terra編)', 2017),
('MYJeWbTd7nL', 'ACCA13区監察課', 2017),
('BvCMP2PRP84', 'ハンドシェイカー', 2017),
('9AWPuqs28dU', 'CHAOS;CHILD', 2017),
('PWXeTjMHk8c', 'この素晴らしい世界に祝福を！2', 2017),
('JcF8w9u9Evj', 'BanG Dream!（バンドリ）', 2017),
('RNkCM8jytDm', 'Spiritpact', 2017),
('eGcFNTKMVgU', 'SUPER LOVERS 2', 2017),
('j5BDFNvWz87', 'ちるらん にぶんの壱', 2017),
('GHGHiBUndtM', 'MARGINAL#4 KISSから創造るBig Bang', 2017),
('h7Zw6bdzvs4', 'エルドライブ【ēlDLIVE】', 2017),
('epVwXgA4kwA', '南鎌倉高校女子自転車部', 2017),
('R8unrEGuDrW', 'ピアシェ～私のイタリアン～', 2017),
('okRYLVBdjSa', 'リトルウィッチアカデミア', 2017),
('FdANcuHmojL', 'ガヴリールドロップアウト', 2017),
('dwGdaQQKC59', 'スクールガールストライカーズ Animation Channel', 2017),
('ZM7iBwasQXa', '霊剣山 叡智への資格', 2017),
('g5gn6GwJnsS', 'にゃんこデイズ', 2017),
('z45ZJqTVprq', 'けものフレンズ', 2017),
('3SbuEayvNpE', '弱虫ペダル NEW GENERATION', 2017),
('krap9nEtM7q', 'チェインクロニクル ～ヘクセイタスの閃～', 2017),
('5fWy8GAVtLp', '鬼平', 2017),
('p9gu3RV6nKX', '小林さんちのメイドラゴン', 2017),
('pXcxNjoTLER', '戦国鳥獣戯画～乙～', 2017),
('YuzokqbhinU', 'あいまいみー～Surgical Friends～', 2017),
('je7vbjgbgP5', '風夏', 2017),
('upmYEi2a4Em', 'ナンバカ (第2期)', 2017),
('6xjZdtAvBNR', '幼女戦記', 2017),
('THDXqGLbuee', 'テイルズ オブ ゼスティリア ザ クロス (第2期)', 2017),
('eo2umKoQnuF', '銀魂. (第4期)', 2017),
('CYBr33prqLk', '闇芝居', 2017),
('wwc396qQNX5', 'One Room', 2017),
('i5zSZi3Wcaz', 'キラキラ☆プリキュアアラモード', 2017),
('QHor99fnpwg', 'フューチャーカード バディファイトX', 2017),
('njkfTfgXonc', '進撃の巨人 Season 2', 2017),
('UHdYoKa6gBc', 'GRANBLUE FANTASY The Animation', 2017),
('BAMaifHr8r5', 'デュエル・マスターズ (2017)', 2017),
('YBzKEi7nFpE', 'ふるさとめぐり 日本の昔ばなし', 2017),
('zKRPFLu2jgZ', 'アリスと蔵六', 2017),
('WDSWHAjF7QD', 'つぐもも', 2017),
('E8yVxji683t', '僧侶と交わる色欲の夜に…', 2017),
('TcCfcFQJTvQ', '世界の闇図鑑', 2017),
('eBnjojzA547', 'ベイブレードバーストゴッド', 2017),
('WPhLgPWEXXS', 'アキンド星のリトル・ペソ', 2017),
('r8N5MDSjBG8', '笑ゥせぇるすまん NEW', 2017),
('XV7hNMHNY4a', 'スタミュ', 2017),
('YH6HahTRRoy', 'フレームアームズ・ガール', 2017),
('h798wBkEfxQ', 'アイドルタイムプリパラ', 2017),
('hXuvri4jCdD', '少年アシベ GO! GO! ゴマちゃん', 2017),
('Y4kNh9wdZ6y', 'ロクでなし魔術講師と禁忌教典', 2017),
('diCEHkrUfK3', 'アイドルマスター シンデレラガールズ劇場', 2017),
('h9YnwjhsnSN', '王室教師ハイネ', 2017),
('nAuhTggA4MZ', 'BORUTO-ボルト- NARUTO NEXT GENERATIONS', 2017),
('zrQijfHfUCj', 'ねこねこ日本史', 2017),
('XicNvM7FFUq', 'まけるな!!あくのぐんだん！', 2017),
('kHSbwVwLXiP', 'ラブ米 -WE LOVE RICE-', 2017),
('oR9dBEJDDGd', '武装少女マキャヴェリズム', 2017),
('LjtV9s4RPy8', 'サクラダリセット', 2017),
('JJ6pJijjX7h', 'サクラクエスト', 2017),
('en7TWmpcWvF', '月がきれい', 2017),
('xp8P2Vnzn6L', 'カブキブ！', 2017),
('jKTRV6wn3X4', 'クロックワーク・プラネット', 2017),
('kAhAFEeXuzo', '恋愛暴君', 2017),
('ptnkx3wU3Lf', 'リルリルフェアリル～魔法の鏡～', 2017),
('TULnowjKMmn', 'ひなこのーと', 2017),
('GZnnygTiE73', '兄に付ける薬はない！-快把我哥帯走-', 2017),
('zUzsQ7RJyiS', 'ツインエンジェルBREAK', 2017),
('YtXVxb6hwfh', 'ベルセルク', 2017),
('ndJigZVcpq9', '正解するカド', 2017),
('o9NaagDEyTS', '信長の忍び～伊勢・金ヶ崎篇～', 2017),
('PQTkwYu8Ruh', '神撃のバハムート VIRGIN SOUL', 2017),
('s5DhkrfcXtq', '境界のRINNE', 2017),
('iEvmBsUKxaQ', 'Re:CREATORS', 2017),
('bsQTdnxBRCg', 'エロマンガ先生', 2017),
('KXaMR5Fawn8', '有頂天家族2', 2017),
('a34w7ecn9vw', 'ID-0', 2017),
('kTJ9aJESd4W', 'ゼロから始める魔法の書', 2017),
('srBMo4TniXG', '覆面系ノイズ', 2017),
('qn2u2ke4SFh', '終末なにしてますか？ 忙しいですか？ 救ってもらっていいですか？', 2017),
('WgC2ZFZNebN', '夏目友人帳 陸', 2017),
('zPkqLfuGVXZ', '喧嘩番長 乙女-Girl Beats Boys-', 2017),
('VbegvPNUgrt', 'Room Mate ～One Room side M～', 2017),
('U5QWewsACcD', 'スナックワールド', 2017),
('A6fs23wXGzo', '冴えない彼女の育てかた♭', 2017),
('fgvr8D6CTLy', 'ダンジョンに出会いを求めるのは間違っているだろうか外伝 ソード・オラトリア', 2017),
('zNsyEFMREv5', 'sin 七つの大罪', 2017),
('NyWjSYSW8QW', '100%パスカル先生＆プリプリちぃちゃん!!', 2017),
('ws7HrnL5pWB', 'トミカハイパーレスキュー ドライブヘッド 機動救急警察', 2017),
('hfuHCLGgBCb', 'アトム ザ・ビギニング', 2017),
('RJH3sXHppGm', 'THE REFLECTION -ザ・リフレクション-', 2017),
('UGHQF7uJx8k', 'ナナマル サンバツ', 2017),
('8y8AJBEdVFw', 'DIVE!!', 2017),
('u2thqAB77w6', '将国のアルタイル', 2017),
('B6G2dm8KaRZ', '活撃 刀剣乱舞', 2017),
('ZxuB7g3rV2S', 'クリオネの灯り', 2017),
('GkBnta4odnV', '地獄少女 宵伽', 2017),
('WquSXndWraC', 'Fate/Apocrypha', 2017),
('2NDnfWcZ3iC', '18if', 2017),
('JWPVmDBz7mr', 'マーベル フューチャー・アベンジャーズ', 2017),
('o6ok4apkJzn', 'RWBY Volume 1-3: The Beginning', 2017),
('cq83qtQXKHi', 'アホガール', 2017),
('NjrEjZCBVkW', '潔癖男子！青山くん', 2017),
('DpEYftMbmSB', 'ボールルームへようこそ', 2017),
('UVJ6Ry5wkmC', '魔法陣グルグル', 2017),
('Y4svy3q5WbN', 'バトルガール ハイスクール', 2017),
('EFjHRSA7znE', 'はじめてのギャル', 2017),
('Vd6crdXpqiq', 'ひなろじ～from Luck & Logic～', 2017),
('JSeifRNFEpc', '異世界はスマートフォンとともに。', 2017),
('7npPwxPHhUp', '異世界食堂', 2017),
('bdTudhMHVRz', 'ナイツ＆マジック', 2017),
('XrLGMaS6HmC', 'ゲーマーズ！', 2017),
('E9CcehnZCoa', '天使の3P！', 2017),
('8QfRv5pAGCR', 'ようこそ実力至上主義の教室へ', 2017),
('MCAxfmmfPdc', '恋と嘘', 2017),
('mbr8KYSvKps', '捏造トラップ-NTR-', 2017),
('HFeqKesZNUF', '賭ケグルイ', 2017),
('HZGAxAcpSdM', 'メイドインアビス', 2017),
('gBUprAHCWyq', 'NEW GAME!!', 2017),
('CmuuMuDJSyt', '徒然チルドレン', 2017),
('7wTegE4CJLc', '終物語', 2017),
('fUk7C9knvAZ', 'プリンセス・プリンシパル', 2017),
('SZ6YTcP2itj', '戦姫絶唱シンフォギアAXZ', 2017),
('5jVs7kKY59v', '最遊記RELOAD BLAST', 2017),
('K8Ye9LRSonm', 'カイトアンサ', 2017),
('PhzzBJ7jzmU', '妖怪アパートの幽雅な日常', 2017),
('CKGaEXbjVkE', 'マーベル スパイダーマン', 2017),
('D29MkVUfsgW', '時間の支配者', 2017),
('fN4WaDaWQXG', 'てーきゅう', 2017),
('teqomkoypRk', 'コンビニカレシ', 2017),
('KPDJ34BaLSk', 'アクションヒロイン チアフルーツ', 2017),
('Se4tbFuknNs', 'ひとりじめマイヒーロー', 2017),
('SZpmi8tmnwd', 'セントールの悩み', 2017),
('CXsvvMkrdjR', 'バチカン奇跡調査官', 2017),
('G25Wy4ztfjm', 'ノラと皇女と野良猫ハート', 2017),
('xFZZiGNX7nU', '無責任ギャラクシー☆タイラー', 2017),
('imCDZWdqng6', '闇芝居', 2017),
('NYuzXrmjYgT', 'イケメン戦国◆時をかけるが恋は始まらない', 2017),
('CTLQ5tQhkQG', 'スカートの中はケダモノでした。', 2017),
('HCfDm34np6m', '縁結びの妖狐ちゃん', 2017),
('pnBB9vp9LAk', '3月のライオン', 2017),
('89tUe8oXtFZ', 'クラシカロイド', 2017),
('ykqt3W8Kixk', 'Infini-T Force', 2017),
('NC3CZCkgsQj', 'DYNAMIC CHORD', 2017),
('V4CJnwRVqyN', 'いぬやしき', 2017),
('Vwx2F9gftB8', 'カードファイト!! ヴァンガードGZ', 2017),
('ixsREBRnWtR', 'おそ松さん', 2017),
('2PxyWumA5sp', '銀魂. ポロリ篇', 2017),
('qE6n23FGCdv', 'ブラッククローバー', 2017),
('KeffwTXj2Eb', '結城友奈は勇者である -鷲尾須美の章-/-勇者の章-', 2017),
('wubueoFmuRq', '戦刻ナイトブラッド', 2017),
('D2FdAAeE22R', '血界戦線 & BEYOND', 2017),
('emVgdXavaLZ', 'クジラの子らは砂上に歌う', 2017),
('t65MKfbLhG7', 'Just Because!', 2017),
('QeVcKxJi9KE', 'TSUKIPRO THE ANIMATION', 2017),
('2EZeRaoMfyo', 'THE IDOLM＠STER Prologue SideM -Episode of Jupiter-', 2017),
('CpoY5rNqrni', 'アイドルマスター SideM', 2017),
('gUQcfpHaqJ9', 'アイドルマスター シンデレラガールズ劇場 2nd SEASON', 2017),
('D8mt9jzdx4m', 'ドリフェス！R', 2017),
('QdR7nsMFcWK', '鬼灯の冷徹 第弐期', 2017),
('g3rW8pQMZ9s', 'ラブ米 -WE LOVE RICE- 二期作', 2017),
('JSCr6z9zw3G', 'Code:Realize ～創世の姫君～', 2017),
('6KxRjB9UiM3', 'あめこん!!', 2017),
('dPxCPpAWmHi', 'UQ HOLDER! ～魔法先生ネギま!2～', 2017),
('zeg5vujt2cr', '食戟のソーマ 餐ノ皿', 2017),
('wU8Up2ai7Dh', '宝石の国', 2017),
('GvWgUYWVfGS', '魔法使いの嫁', 2017),
('SQ5P68eYpAf', 'キノの旅 -the Beautiful World- the Animated Series', 2017),
('wtKspEy5xs7', 'お見合い相手は教え子、強気な、問題児。', 2017),
('8Nxtr25dGEj', '妹さえいればいい。', 2017),
('qpGdPcYzpgT', '干物妹！うまるちゃんR', 2017),
('6NtnUrNncmN', 'ブレンド・S', 2017),
('h9N6hv83FQY', 'ラブライブ！サンシャイン!!', 2017),
('TsyqFQw6HLc', 'Dies irae', 2017),
('sYrhTxu7zUH', 'アニメガタリズ', 2017),
('UmYmQtbcz9k', 'ROBOMASTERS THE ANIMATED SERIES', 2017),
('3rrDLALnj8T', 'URAHARA', 2017),
('iU2zvwJwiyj', '牙狼<GARO> -VANISHING LINE-', 2017),
('zqNJzDhYntv', '"Wake Up Girls! 新章"', 2017),
('AUD3FYWjEa2', '僕の彼女がマジメ過ぎるしょびっちな件', 2017),
('FXcwoLPv76T', '少女終末旅行', 2017),
('SAWMxkiUqBQ', 'ディアホライゾン (被)', 2017),
('wwF6yP7k9pf', '十二大戦', 2017),
('JtrdzpxDmMS', 'このはな綺譚', 2017),
('nNX7kzgeP3F', 'つうかあ', 2017),
('gjzju87bZ8U', 'ネト充のススメ', 2017),
('AzXL3B5a3Ls', '王様ゲーム The Animation', 2017),
('NWhitDh9Q4Z', 'お酒は夫婦になってから', 2017),
('mE4RB76f6jh', '俺たちゃ妖怪人間', 2017),
('LEb99uWRdRo', 'タイムボカン 逆襲の三悪人', 2017),
('ujyLKnT7opD', '大正ちっちゃいさん', 2017),
('trdfL9s8Bu3', 'EVIL OR LIVE', 2017),
('4uWoFdxHNs9', 'いつだって僕らの恋は10センチだった。', 2017),
('jU8RQ3U29dZ', 'GLAMOROUS HEROES', 2017);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime_post`
--
ALTER TABLE `anime_post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime_user`
--
ALTER TABLE `anime_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_ajax_table`
--
ALTER TABLE `gs_ajax_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php03_table`
--
ALTER TABLE `gs_php03_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime_post`
--
ALTER TABLE `anime_post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `anime_user`
--
ALTER TABLE `anime_user`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gs_ajax_table`
--
ALTER TABLE `gs_ajax_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gs_php03_table`
--
ALTER TABLE `gs_php03_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
