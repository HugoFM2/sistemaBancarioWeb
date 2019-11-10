-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Oct 26, 2019 at 04:00 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yazaki`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditorias`
--

CREATE TABLE `auditorias` (
  `id` int(10) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Complementar_551`
--

CREATE TABLE `Complementar_551` (
  `id` int(250) NOT NULL,
  `data` datetime(5) NOT NULL,
  `titulo` varchar(200) NOT NULL DEFAULT 'Na',
  `dep_auditor` varchar(200) NOT NULL DEFAULT 'Na',
  `auditor` varchar(200) NOT NULL DEFAULT 'Na',
  `local` varchar(200) NOT NULL DEFAULT 'Na',
  `var1` varchar(200) NOT NULL DEFAULT 'Na',
  `var1-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var2` varchar(200) NOT NULL DEFAULT 'Na',
  `var2-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var3` varchar(200) NOT NULL DEFAULT 'Na',
  `var3-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var4` varchar(200) NOT NULL DEFAULT 'Na',
  `var4-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var5` varchar(200) NOT NULL DEFAULT 'Na',
  `var5-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var6` varchar(200) NOT NULL DEFAULT 'Na',
  `var6-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var7` varchar(200) NOT NULL DEFAULT 'Na',
  `var7-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var8` varchar(200) NOT NULL DEFAULT 'Na',
  `var8-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var9` varchar(200) NOT NULL DEFAULT 'Na',
  `var9-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var10` varchar(200) NOT NULL DEFAULT 'Na',
  `var10-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var11` varchar(200) NOT NULL DEFAULT 'Na',
  `var11-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var12` varchar(200) NOT NULL DEFAULT 'Na',
  `var12-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var13` varchar(200) NOT NULL DEFAULT 'Na',
  `var13-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var14` varchar(200) NOT NULL DEFAULT 'Na',
  `var14-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var15` varchar(200) NOT NULL DEFAULT 'Na',
  `var15-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var16` varchar(200) NOT NULL DEFAULT 'Na',
  `var16-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var17` varchar(200) NOT NULL DEFAULT 'Na',
  `var17-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var18` varchar(200) NOT NULL DEFAULT 'Na',
  `var18-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var19` varchar(200) NOT NULL DEFAULT 'Na',
  `var19-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var20` varchar(200) NOT NULL DEFAULT 'Na',
  `var20-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var21` varchar(200) NOT NULL DEFAULT 'Na',
  `var21-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var22` varchar(200) NOT NULL DEFAULT 'Na',
  `var22-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var23` varchar(200) NOT NULL DEFAULT 'Na',
  `var23-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var24` varchar(200) NOT NULL DEFAULT 'Na',
  `var24-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var25` varchar(200) NOT NULL DEFAULT 'Na',
  `var25-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var26` varchar(200) NOT NULL DEFAULT 'Na',
  `var26-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var27` varchar(200) NOT NULL DEFAULT 'Na',
  `var27-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var28` varchar(200) NOT NULL DEFAULT 'Na',
  `var28-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var29` varchar(200) NOT NULL DEFAULT 'Na',
  `var29-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var30` varchar(200) NOT NULL DEFAULT 'Na',
  `var30-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var31` varchar(200) NOT NULL DEFAULT 'Na',
  `var31-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var32` varchar(200) NOT NULL DEFAULT 'Na',
  `var32-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var33` varchar(200) NOT NULL DEFAULT 'Na',
  `var33-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var34` varchar(200) NOT NULL DEFAULT 'Na',
  `var34-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var35` varchar(200) NOT NULL DEFAULT 'Na',
  `var35-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var36` varchar(200) NOT NULL DEFAULT 'Na',
  `var36-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var37` varchar(200) NOT NULL DEFAULT 'Na',
  `var37-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var38` varchar(200) NOT NULL DEFAULT 'Na',
  `var38-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var39` varchar(200) NOT NULL DEFAULT 'Na',
  `var39-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var40` varchar(200) NOT NULL DEFAULT 'Na',
  `var40-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var41` varchar(200) NOT NULL DEFAULT 'Na',
  `var41-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var42` varchar(200) NOT NULL DEFAULT 'Na',
  `var42-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var43` varchar(200) NOT NULL DEFAULT 'Na',
  `var43-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var44` varchar(200) NOT NULL DEFAULT 'Na',
  `var44-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var45` varchar(200) NOT NULL DEFAULT 'Na',
  `var45-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var46` varchar(200) NOT NULL DEFAULT 'Na',
  `var46-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var47` varchar(200) NOT NULL DEFAULT 'Na',
  `var47-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var48` varchar(200) NOT NULL DEFAULT 'Na',
  `var48-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var49` varchar(200) NOT NULL DEFAULT 'Na',
  `var49-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var50` varchar(200) NOT NULL DEFAULT 'Na',
  `var50-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var51` varchar(200) NOT NULL DEFAULT 'Na',
  `var51-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var52` varchar(200) NOT NULL DEFAULT 'Na',
  `var52-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var53` varchar(200) NOT NULL DEFAULT 'Na',
  `var53-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var54` varchar(200) NOT NULL DEFAULT 'Na',
  `var54-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var55` varchar(200) NOT NULL DEFAULT 'Na',
  `var55-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var56` varchar(200) NOT NULL DEFAULT 'Na',
  `var56-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var57` varchar(200) NOT NULL DEFAULT 'Na',
  `var57-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var58` varchar(200) NOT NULL DEFAULT 'Na',
  `var58-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var59` varchar(200) NOT NULL DEFAULT 'Na',
  `var59-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var60` varchar(200) NOT NULL DEFAULT 'Na',
  `var60-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var61` varchar(200) NOT NULL DEFAULT 'Na',
  `var61-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var62` varchar(200) NOT NULL DEFAULT 'Na',
  `var62-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var63` varchar(200) NOT NULL DEFAULT 'Na',
  `var63-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var64` varchar(200) NOT NULL DEFAULT 'Na',
  `var64-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var65` varchar(200) NOT NULL DEFAULT 'Na',
  `var65-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var66` varchar(200) NOT NULL DEFAULT 'Na',
  `var66-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var67` varchar(200) NOT NULL DEFAULT 'Na',
  `var67-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var68` varchar(200) NOT NULL DEFAULT 'Na',
  `var68-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var69` varchar(200) NOT NULL DEFAULT 'Na',
  `var69-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var70` varchar(200) NOT NULL DEFAULT 'Na',
  `var70-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var71` varchar(200) NOT NULL DEFAULT 'Na',
  `var71-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var72` varchar(200) NOT NULL DEFAULT 'Na',
  `var72-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var73` varchar(200) NOT NULL DEFAULT 'Na',
  `var73-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var74` varchar(200) NOT NULL DEFAULT 'Na',
  `var74-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var75` varchar(200) NOT NULL DEFAULT 'Na',
  `var75-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var76` varchar(200) NOT NULL DEFAULT 'Na',
  `var76-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var77` varchar(200) NOT NULL DEFAULT 'Na',
  `var77-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var78` varchar(200) NOT NULL DEFAULT 'Na',
  `var78-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var79` varchar(200) NOT NULL DEFAULT 'Na',
  `var79-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var80` varchar(200) NOT NULL DEFAULT 'Na',
  `var80-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var81` varchar(200) NOT NULL DEFAULT 'Na',
  `var81-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var82` varchar(200) NOT NULL DEFAULT 'Na',
  `var82-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var83` varchar(200) NOT NULL DEFAULT 'Na',
  `var83-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var84` varchar(200) NOT NULL DEFAULT 'Na',
  `var84-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var85` varchar(200) NOT NULL DEFAULT 'Na',
  `var85-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var86` varchar(200) NOT NULL DEFAULT 'Na',
  `var86-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var87` varchar(200) NOT NULL DEFAULT 'Na',
  `var87-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var88` varchar(200) NOT NULL DEFAULT 'Na',
  `var88-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var89` varchar(200) NOT NULL DEFAULT 'Na',
  `var89-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var90` varchar(200) NOT NULL DEFAULT 'Na',
  `var90-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var91` varchar(200) NOT NULL DEFAULT 'Na',
  `var91-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var92` varchar(200) NOT NULL DEFAULT 'Na',
  `var92-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var93` varchar(200) NOT NULL DEFAULT 'Na',
  `var93-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var94` varchar(200) NOT NULL DEFAULT 'Na',
  `var94-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var95` varchar(200) NOT NULL DEFAULT 'Na',
  `var95-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var96` varchar(200) NOT NULL DEFAULT 'Na',
  `var96-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var97` varchar(200) NOT NULL DEFAULT 'Na',
  `var97-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var98` varchar(200) NOT NULL DEFAULT 'Na',
  `var98-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var99` varchar(200) NOT NULL DEFAULT 'Na',
  `var99-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var100` varchar(200) NOT NULL DEFAULT 'Na',
  `var100-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var101` varchar(200) NOT NULL DEFAULT 'Na',
  `var101-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var102` varchar(200) NOT NULL DEFAULT 'Na',
  `var102-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var103` varchar(200) NOT NULL DEFAULT 'Na',
  `var103-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var104` varchar(200) NOT NULL DEFAULT 'Na',
  `var104-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var105` varchar(200) NOT NULL DEFAULT 'Na',
  `var105-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var106` varchar(200) NOT NULL DEFAULT 'Na',
  `var106-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var107` varchar(200) NOT NULL DEFAULT 'Na',
  `var107-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var108` varchar(200) NOT NULL DEFAULT 'Na',
  `var108-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var109` varchar(200) NOT NULL DEFAULT 'Na',
  `var109-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var110` varchar(200) NOT NULL DEFAULT 'Na',
  `var110-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var111` varchar(200) NOT NULL DEFAULT 'Na',
  `var111-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var112` varchar(200) NOT NULL DEFAULT 'Na',
  `var112-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var113` varchar(200) NOT NULL DEFAULT 'Na',
  `var113-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var114` varchar(200) NOT NULL DEFAULT 'Na',
  `var114-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var115` varchar(200) NOT NULL DEFAULT 'Na',
  `var115-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var116` varchar(200) NOT NULL DEFAULT 'Na',
  `var116-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var117` varchar(200) NOT NULL DEFAULT 'Na',
  `var117-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var118` varchar(200) NOT NULL DEFAULT 'Na',
  `var118-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var119` varchar(200) NOT NULL DEFAULT 'Na',
  `var119-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var120` varchar(200) NOT NULL DEFAULT 'Na',
  `var120-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var121` varchar(200) NOT NULL DEFAULT 'Na',
  `var121-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var122` varchar(200) NOT NULL DEFAULT 'Na',
  `var122-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var123` varchar(200) NOT NULL DEFAULT 'Na',
  `var123-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var124` varchar(200) NOT NULL DEFAULT 'Na',
  `var124-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var125` varchar(200) NOT NULL DEFAULT 'Na',
  `var125-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var126` varchar(200) NOT NULL DEFAULT 'Na',
  `var126-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var127` varchar(200) NOT NULL DEFAULT 'Na',
  `var127-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var128` varchar(200) NOT NULL DEFAULT 'Na',
  `var128-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var129` varchar(200) NOT NULL DEFAULT 'Na',
  `var129-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var130` varchar(200) NOT NULL DEFAULT 'Na',
  `var130-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var131` varchar(200) NOT NULL DEFAULT 'Na',
  `var131-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var132` varchar(200) NOT NULL DEFAULT 'Na',
  `var132-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var133` varchar(200) NOT NULL DEFAULT 'Na',
  `var133-desc` varchar(200) NOT NULL DEFAULT 'Na',
  `var134` varchar(200) NOT NULL DEFAULT 'Na',
  `var134-desc` varchar(200) NOT NULL DEFAULT 'Na'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Complementar_551`
--

INSERT INTO `Complementar_551` (`id`, `data`, `titulo`, `dep_auditor`, `auditor`, `local`, `var1`, `var1-desc`, `var2`, `var2-desc`, `var3`, `var3-desc`, `var4`, `var4-desc`, `var5`, `var5-desc`, `var6`, `var6-desc`, `var7`, `var7-desc`, `var8`, `var8-desc`, `var9`, `var9-desc`, `var10`, `var10-desc`, `var11`, `var11-desc`, `var12`, `var12-desc`, `var13`, `var13-desc`, `var14`, `var14-desc`, `var15`, `var15-desc`, `var16`, `var16-desc`, `var17`, `var17-desc`, `var18`, `var18-desc`, `var19`, `var19-desc`, `var20`, `var20-desc`, `var21`, `var21-desc`, `var22`, `var22-desc`, `var23`, `var23-desc`, `var24`, `var24-desc`, `var25`, `var25-desc`, `var26`, `var26-desc`, `var27`, `var27-desc`, `var28`, `var28-desc`, `var29`, `var29-desc`, `var30`, `var30-desc`, `var31`, `var31-desc`, `var32`, `var32-desc`, `var33`, `var33-desc`, `var34`, `var34-desc`, `var35`, `var35-desc`, `var36`, `var36-desc`, `var37`, `var37-desc`, `var38`, `var38-desc`, `var39`, `var39-desc`, `var40`, `var40-desc`, `var41`, `var41-desc`, `var42`, `var42-desc`, `var43`, `var43-desc`, `var44`, `var44-desc`, `var45`, `var45-desc`, `var46`, `var46-desc`, `var47`, `var47-desc`, `var48`, `var48-desc`, `var49`, `var49-desc`, `var50`, `var50-desc`, `var51`, `var51-desc`, `var52`, `var52-desc`, `var53`, `var53-desc`, `var54`, `var54-desc`, `var55`, `var55-desc`, `var56`, `var56-desc`, `var57`, `var57-desc`, `var58`, `var58-desc`, `var59`, `var59-desc`, `var60`, `var60-desc`, `var61`, `var61-desc`, `var62`, `var62-desc`, `var63`, `var63-desc`, `var64`, `var64-desc`, `var65`, `var65-desc`, `var66`, `var66-desc`, `var67`, `var67-desc`, `var68`, `var68-desc`, `var69`, `var69-desc`, `var70`, `var70-desc`, `var71`, `var71-desc`, `var72`, `var72-desc`, `var73`, `var73-desc`, `var74`, `var74-desc`, `var75`, `var75-desc`, `var76`, `var76-desc`, `var77`, `var77-desc`, `var78`, `var78-desc`, `var79`, `var79-desc`, `var80`, `var80-desc`, `var81`, `var81-desc`, `var82`, `var82-desc`, `var83`, `var83-desc`, `var84`, `var84-desc`, `var85`, `var85-desc`, `var86`, `var86-desc`, `var87`, `var87-desc`, `var88`, `var88-desc`, `var89`, `var89-desc`, `var90`, `var90-desc`, `var91`, `var91-desc`, `var92`, `var92-desc`, `var93`, `var93-desc`, `var94`, `var94-desc`, `var95`, `var95-desc`, `var96`, `var96-desc`, `var97`, `var97-desc`, `var98`, `var98-desc`, `var99`, `var99-desc`, `var100`, `var100-desc`, `var101`, `var101-desc`, `var102`, `var102-desc`, `var103`, `var103-desc`, `var104`, `var104-desc`, `var105`, `var105-desc`, `var106`, `var106-desc`, `var107`, `var107-desc`, `var108`, `var108-desc`, `var109`, `var109-desc`, `var110`, `var110-desc`, `var111`, `var111-desc`, `var112`, `var112-desc`, `var113`, `var113-desc`, `var114`, `var114-desc`, `var115`, `var115-desc`, `var116`, `var116-desc`, `var117`, `var117-desc`, `var118`, `var118-desc`, `var119`, `var119-desc`, `var120`, `var120-desc`, `var121`, `var121-desc`, `var122`, `var122-desc`, `var123`, `var123-desc`, `var124`, `var124-desc`, `var125`, `var125-desc`, `var126`, `var126-desc`, `var127`, `var127-desc`, `var128`, `var128-desc`, `var129`, `var129-desc`, `var130`, `var130-desc`, `var131`, `var131-desc`, `var132`, `var132-desc`, `var133`, `var133-desc`, `var134`, `var134-desc`) VALUES
(1, '2019-10-26 01:00:19.00000', 'Complementar_551', '', '', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '', 'Na', '');

-- --------------------------------------------------------

--
-- Table structure for table `Complementar_551_resultado`
--

CREATE TABLE `Complementar_551_resultado` (
  `id` int(250) NOT NULL,
  `data` datetime(5) NOT NULL,
  `maximo` int(250) DEFAULT NULL,
  `pontos` int(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Complementar_551_resultado`
--

INSERT INTO `Complementar_551_resultado` (`id`, `data`, `maximo`, `pontos`) VALUES
(1, '2019-10-26 01:00:19.00000', 100, 50);

-- --------------------------------------------------------

--
-- Table structure for table `_resultado`
--

CREATE TABLE `_resultado` (
  `id` int(250) NOT NULL,
  `data` datetime(5) NOT NULL,
  `maximo` int(250) DEFAULT NULL,
  `pontos` int(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_resultado`
--

INSERT INTO `_resultado` (`id`, `data`, `maximo`, `pontos`) VALUES
(1, '2019-10-26 00:58:46.00000', 100, 50),
(2, '2019-10-26 00:59:54.00000', 100, 50),
(3, '2019-10-26 00:59:59.00000', 100, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Complementar_551`
--
ALTER TABLE `Complementar_551`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Complementar_551_resultado`
--
ALTER TABLE `Complementar_551_resultado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_resultado`
--
ALTER TABLE `_resultado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Complementar_551`
--
ALTER TABLE `Complementar_551`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Complementar_551_resultado`
--
ALTER TABLE `Complementar_551_resultado`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_resultado`
--
ALTER TABLE `_resultado`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
