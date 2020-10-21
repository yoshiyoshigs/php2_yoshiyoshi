-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2020 年 10 月 21 日 16:05
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_yoshiyoshi`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) NOT NULL,
  `bookurl` text NOT NULL,
  `bookcomment` text NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `bookurl`, `bookcomment`, `indate`) VALUES
(1, 'メモの魔力', 'https', 'メモは人生。', '2020-10-22 00:29:31'),
(2, '', '', '', '2020-10-22 00:29:34'),
(3, 'メモの魔力', 'https', 'aaaa', '2020-10-22 00:29:53'),
(4, 'メモの魔力', 'https', 'aaa', '2020-10-22 00:31:00'),
(5, 'メモの魔力', 'https', 'aaa', '2020-10-22 00:33:52'),
(6, 'メモの魔力', 'https', 'aaaa', '2020-10-22 00:33:59'),
(7, '', '', '', '2020-10-22 00:45:54'),
(8, 'メモの魔力', 'あああ', 'うん', '2020-10-22 00:47:40'),
(9, 'メモの魔力', 'https', 'あ', '2020-10-22 00:49:07'),
(10, 'メモの魔力', 'https', 'あ', '2020-10-22 00:52:06'),
(11, 'メモの魔力', 'https', 'メモは人生', '2020-10-22 00:52:15');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
