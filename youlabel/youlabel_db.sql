-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2015 at 11:21 AM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a3258441_labels`
--

-- --------------------------------------------------------

--
-- Table structure for table `Lecture1`
--

CREATE TABLE `Lecture1` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `Lecture1`
--

INSERT INTO `Lecture1` VALUES('40.956033', '75.962224', 1);
INSERT INTO `Lecture1` VALUES('93.373893', '121.391036', 2);
INSERT INTO `Lecture1` VALUES('142.845788', '174.86538', 3);
INSERT INTO `Lecture1` VALUES('324.401494', '491.469183', 4);
INSERT INTO `Lecture1` VALUES('526.617593', '567.656935', 5);
INSERT INTO `Lecture1` VALUES('606.828111', '628.852737', 6);
INSERT INTO `Lecture1` VALUES('639.031554', '690.06686', 7);
INSERT INTO `Lecture1` VALUES('717.597393', '805.651271', 8);
INSERT INTO `Lecture1` VALUES('812.883125', '857.905597', 9);
INSERT INTO `Lecture1` VALUES('884.256746', '953.029791', 10);
INSERT INTO `Lecture1` VALUES('972.371575', '985.375453', 11);
INSERT INTO `Lecture1` VALUES('1009.97934', '1026.008455', 12);
INSERT INTO `Lecture1` VALUES('1041.633226', '1061.665788', 13);
INSERT INTO `Lecture1` VALUES('1072.249947', '1095.270106', 14);
INSERT INTO `Lecture1` VALUES('1112.45729', '1137.487834', 15);
INSERT INTO `Lecture1` VALUES('1150.004104', '1178.28437', 16);
INSERT INTO `Lecture1` VALUES('1231.068934', '1256.09848', 17);
INSERT INTO `Lecture1` VALUES('1278.792569', '1322.839825', 18);
INSERT INTO `Lecture1` VALUES('1346.224692', '1394.985492', 19);
INSERT INTO `Lecture1` VALUES('1474.607815', '1515.628836', 20);
INSERT INTO `Lecture1` VALUES('1523.938489', '1541.978987', 21);
INSERT INTO `Lecture1` VALUES('1589.297281', '1609.309526', 22);
INSERT INTO `Lecture1` VALUES('1701.854459', '1763.902577', 23);
INSERT INTO `Lecture1` VALUES('1795.799269', '1833.832693', 24);
INSERT INTO `Lecture1` VALUES('1837.144364', '1879.15992', 25);
INSERT INTO `Lecture1` VALUES('1923.614514', '1944.641611', 26);
INSERT INTO `Lecture1` VALUES('1955.47157', '1969.4903', 27);
INSERT INTO `Lecture1` VALUES('1976.88469', '2001.915234', 28);
INSERT INTO `Lecture1` VALUES('2007.096069', '2032.126613', 29);
INSERT INTO `Lecture1` VALUES('2054.170558', '2126.194323', 30);
INSERT INTO `Lecture1` VALUES('2153.541005', '2184.544747', 31);
INSERT INTO `Lecture1` VALUES('2231.233213', '2265.223554', 32);
INSERT INTO `Lecture1` VALUES('2296.125711', '2378.14544', 33);
INSERT INTO `Lecture1` VALUES('2414.411285', '2439.441829', 34);
INSERT INTO `Lecture1` VALUES('2502.729285', '2532.515005', 35);
INSERT INTO `Lecture1` VALUES('2541.312266', '2604.354919', 36);
INSERT INTO `Lecture1` VALUES('2623.534167', '2647.325374', 37);
INSERT INTO `Lecture1` VALUES('2653.98935', '2686.049576', 38);
INSERT INTO `Lecture1` VALUES('2743.445101', '2773.127242', 39);
INSERT INTO `Lecture1` VALUES('2816.300867', '2852.343224', 40);
INSERT INTO `Lecture1` VALUES('2863.558208', '2906.589614', 41);
INSERT INTO `Lecture1` VALUES('2947.000127', '2994.074616', 42);
INSERT INTO `Lecture1` VALUES('3004.111214', '3051.165386', 43);
INSERT INTO `Lecture1` VALUES('3078.186996', '3130.23915', 44);
INSERT INTO `Lecture1` VALUES('3142.22618', '3184.28237', 45);
INSERT INTO `Lecture1` VALUES('3207.504701', '3257.321984', 46);
INSERT INTO `Lecture1` VALUES('3292.858413', '3343.163305', 47);
INSERT INTO `Lecture1` VALUES('3569.514006', '3579.753774', 48);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture2`
--

CREATE TABLE `Lecture2` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- Dumping data for table `Lecture2`
--

INSERT INTO `Lecture2` VALUES('59.525771', '89.554297', 1);
INSERT INTO `Lecture2` VALUES('106.905015', '165.925899', 2);
INSERT INTO `Lecture2` VALUES('174.276186', '197.031226', 3);
INSERT INTO `Lecture2` VALUES('219.136122', '238.152834', 4);
INSERT INTO `Lecture2` VALUES('258.408883', '266.413781', 5);
INSERT INTO `Lecture2` VALUES('316.840575', '342.846335', 6);
INSERT INTO `Lecture2` VALUES('359.831347', '383.866358', 7);
INSERT INTO `Lecture2` VALUES('401.318661', '452.334648', 8);
INSERT INTO `Lecture2` VALUES('486.711012', '534.760717', 9);
INSERT INTO `Lecture2` VALUES('556.154518', '568.182182', 10);
INSERT INTO `Lecture2` VALUES('673.91185', '737.707229', 11);
INSERT INTO `Lecture2` VALUES('754.184316', '789.210824', 12);
INSERT INTO `Lecture2` VALUES('802.924799', '821.941511', 13);
INSERT INTO `Lecture2` VALUES('887.09813', '937.138901', 14);
INSERT INTO `Lecture2` VALUES('981.043938', '1014.059063', 15);
INSERT INTO `Lecture2` VALUES('1031.389464', '1079.439169', 16);
INSERT INTO `Lecture2` VALUES('1089.333548', '1147.176047', 17);
INSERT INTO `Lecture2` VALUES('1239.374593', '1265.40067', 18);
INSERT INTO `Lecture2` VALUES('1271.739574', '1298.761184', 19);
INSERT INTO `Lecture2` VALUES('1375.864199', '1397.86751', 20);
INSERT INTO `Lecture2` VALUES('1400.874426', '1431.898485', 21);
INSERT INTO `Lecture2` VALUES('1437.668512', '1484.68205', 22);
INSERT INTO `Lecture2` VALUES('1493.540262', '1512.556974', 23);
INSERT INTO `Lecture2` VALUES('1526.555387', '1552.561147', 24);
INSERT INTO `Lecture2` VALUES('1557.477861', '1579.257685', 25);
INSERT INTO `Lecture2` VALUES('1591.569787', '1609.590966', 26);
INSERT INTO `Lecture2` VALUES('1625.722664', '1669.729286', 27);
INSERT INTO `Lecture2` VALUES('1687.953635', '1723.00046', 28);
INSERT INTO `Lecture2` VALUES('1728.262563', '1793.256646', 29);
INSERT INTO `Lecture2` VALUES('1824.910532', '1837.913412', 30);
INSERT INTO `Lecture2` VALUES('1874.1213', '1929.18037', 31);
INSERT INTO `Lecture2` VALUES('1939.115383', '1954.149963', 32);
INSERT INTO `Lecture2` VALUES('1993.686845', '2022.699521', 33);
INSERT INTO `Lecture2` VALUES('2083.447351', '2093.463632', 34);
INSERT INTO `Lecture2` VALUES('2124.264204', '2172.070105', 35);
INSERT INTO `Lecture2` VALUES('2191.107134', '2273.126863', 36);
INSERT INTO `Lecture2` VALUES('2280.137226', '2319.185502', 37);
INSERT INTO `Lecture2` VALUES('2347.080743', '2372.132602', 38);
INSERT INTO `Lecture2` VALUES('2383.834196', '2466.707239', 39);
INSERT INTO `Lecture2` VALUES('2470.953492', '2524.022494', 40);
INSERT INTO `Lecture2` VALUES('2537.349448', '2582.413552', 41);
INSERT INTO `Lecture2` VALUES('2592.490784', '2677.597699', 42);
INSERT INTO `Lecture2` VALUES('2689.787899', '2722.824339', 43);
INSERT INTO `Lecture2` VALUES('2744.359361', '2799.682552', 44);
INSERT INTO `Lecture2` VALUES('2811.95402', '2891.759196', 45);
INSERT INTO `Lecture2` VALUES('2894.137283', '2937.147374', 46);
INSERT INTO `Lecture2` VALUES('2942.958036', '2984.973592', 47);
INSERT INTO `Lecture2` VALUES('3013.031369', '3099.114498', 48);
INSERT INTO `Lecture2` VALUES('3100.638273', '3173.698205', 49);
INSERT INTO `Lecture2` VALUES('3188.732785', '3253.787819', 50);
INSERT INTO `Lecture2` VALUES('3262.727299', '3300.740406', 51);
INSERT INTO `Lecture2` VALUES('3311.610001', '3335.624695', 52);
INSERT INTO `Lecture2` VALUES('3344.686077', '3416.771791', 53);
INSERT INTO `Lecture2` VALUES('3423.29255', '3475.588508', 54);
INSERT INTO `Lecture2` VALUES('3498.811837', '3550.598872', 55);
INSERT INTO `Lecture2` VALUES('3563.825239', '3593.874082', 56);
INSERT INTO `Lecture2` VALUES('3649.806784', '3733.87853', 57);
INSERT INTO `Lecture2` VALUES('3738.796242', '3817.870006', 58);
INSERT INTO `Lecture2` VALUES('3835.444211', '3863.705158', 59);
INSERT INTO `Lecture2` VALUES('3899.463078', '3985.505573', 60);
INSERT INTO `Lecture2` VALUES('3988.24737', '4051.312336', 61);
INSERT INTO `Lecture2` VALUES('4073.29533', '4115.371837', 62);
INSERT INTO `Lecture2` VALUES('4119.272701', '4177.338687', 63);
INSERT INTO `Lecture2` VALUES('4192.331635', '4237.395739', 64);
INSERT INTO `Lecture2` VALUES('4245.461588', '4262.466917', 65);
INSERT INTO `Lecture2` VALUES('4285.465761', '4309.460138', 66);
INSERT INTO `Lecture2` VALUES('4335.526849', '4407.774101', 67);
INSERT INTO `Lecture2` VALUES('4409.357829', '4485.405358', 68);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture3`
--

CREATE TABLE `Lecture3` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=55 ;

--
-- Dumping data for table `Lecture3`
--

INSERT INTO `Lecture3` VALUES('16.942337', '49.977779', 1);
INSERT INTO `Lecture3` VALUES('95.081519', '166.109751', 2);
INSERT INTO `Lecture3` VALUES('169.055716', '200.100091', 3);
INSERT INTO `Lecture3` VALUES('257.028325', '289.068234', 4);
INSERT INTO `Lecture3` VALUES('309.100796', '341.384509', 5);
INSERT INTO `Lecture3` VALUES('353.655977', '436.73219', 6);
INSERT INTO `Lecture3` VALUES('440.633054', '477.691262', 7);
INSERT INTO `Lecture3` VALUES('505.525552', '563.571221', 8);
INSERT INTO `Lecture3` VALUES('608.573376', '682.669475', 9);
INSERT INTO `Lecture3` VALUES('684.315152', '708.329846', 10);
INSERT INTO `Lecture3` VALUES('747.236901', '802.072484', 11);
INSERT INTO `Lecture3` VALUES('807.903463', '850.914552', 12);
INSERT INTO `Lecture3` VALUES('863.836164', '911.885869', 13);
INSERT INTO `Lecture3` VALUES('935.51454', '980.537012', 14);
INSERT INTO `Lecture3` VALUES('1006.238017', '1076.636422', 15);
INSERT INTO `Lecture3` VALUES('1100.915237', '1125.701977', 16);
INSERT INTO `Lecture3` VALUES('1167.615948', '1246.689712', 17);
INSERT INTO `Lecture3` VALUES('1286.939685', '1339.98837', 18);
INSERT INTO `Lecture3` VALUES('1343.787649', '1362.803363', 19);
INSERT INTO `Lecture3` VALUES('1370.545138', '1444.864724', 20);
INSERT INTO `Lecture3` VALUES('1501.589788', '1525.868603', 21);
INSERT INTO `Lecture3` VALUES('1570.342516', '1673.511244', 22);
INSERT INTO `Lecture3` VALUES('1784.443062', '1871.07475', 23);
INSERT INTO `Lecture3` VALUES('1922.922736', '1973.939721', 24);
INSERT INTO `Lecture3` VALUES('1997.832513', '2033.915505', 25);
INSERT INTO `Lecture3` VALUES('2041.717233', '2099.802538', 26);
INSERT INTO `Lecture3` VALUES('2101.570117', '2156.649504', 27);
INSERT INTO `Lecture3` VALUES('2208.966777', '2276.825557', 28);
INSERT INTO `Lecture3` VALUES('2278.83694', '2322.92483', 29);
INSERT INTO `Lecture3` VALUES('2343.810706', '2413.843405', 30);
INSERT INTO `Lecture3` VALUES('2426.602481', '2466.625973', 31);
INSERT INTO `Lecture3` VALUES('2486.232877', '2515.26587', 32);
INSERT INTO `Lecture3` VALUES('2563.131724', '2625.201157', 33);
INSERT INTO `Lecture3` VALUES('2626.216009', '2684.831552', 34);
INSERT INTO `Lecture3` VALUES('2686.699718', '2756.509928', 35);
INSERT INTO `Lecture3` VALUES('2767.501425', '2826.339457', 36);
INSERT INTO `Lecture3` VALUES('2840.33787', '2880.15919', 37);
INSERT INTO `Lecture3` VALUES('2892.896951', '2909.922597', 38);
INSERT INTO `Lecture3` VALUES('2925.587004', '3014.698364', 39);
INSERT INTO `Lecture3` VALUES('3016.323724', '3091.415356', 40);
INSERT INTO `Lecture3` VALUES('3116.4459', '3135.482929', 41);
INSERT INTO `Lecture3` VALUES('3151.431774', '3166.465356', 42);
INSERT INTO `Lecture3` VALUES('3208.461593', '3262.300645', 43);
INSERT INTO `Lecture3` VALUES('3291.009564', '3333.086071', 44);
INSERT INTO `Lecture3` VALUES('3348.729163', '3415.573091', 45);
INSERT INTO `Lecture3` VALUES('3440.846441', '3510.900455', 46);
INSERT INTO `Lecture3` VALUES('3518.863721', '3586.967303', 47);
INSERT INTO `Lecture3` VALUES('3614.618741', '3680.730259', 48);
INSERT INTO `Lecture3` VALUES('3754.846675', '3817.951277', 49);
INSERT INTO `Lecture3` VALUES('3819.739173', '3853.810782', 50);
INSERT INTO `Lecture3` VALUES('3880.91366', '3902.937288', 51);
INSERT INTO `Lecture3` VALUES('3923.396507', '3973.457595', 52);
INSERT INTO `Lecture3` VALUES('4013.78684', '4025.794187', 53);
INSERT INTO `Lecture3` VALUES('4044.688997', '4106.716798', 54);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture4`
--

CREATE TABLE `Lecture4` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `Lecture4`
--

INSERT INTO `Lecture4` VALUES('66.986102', '88.989413', 1);
INSERT INTO `Lecture4` VALUES('95.998778', '156.014198', 2);
INSERT INTO `Lecture4` VALUES('179.928305', '208.961298', 3);
INSERT INTO `Lecture4` VALUES('224.016195', '276.068349', 4);
INSERT INTO `Lecture4` VALUES('282.874544', '331.899465', 5);
INSERT INTO `Lecture4` VALUES('341.834478', '395.857381', 6);
INSERT INTO `Lecture4` VALUES('433.951756', '487.771489', 7);
INSERT INTO `Lecture4` VALUES('495.532583', '567.596982', 8);
INSERT INTO `Lecture4` VALUES('568.592515', '600.612107', 9);
INSERT INTO `Lecture4` VALUES('614.00101', '647.016135', 10);
INSERT INTO `Lecture4` VALUES('677.938609', '748.966841', 11);
INSERT INTO `Lecture4` VALUES('767.069288', '857.397672', 12);
INSERT INTO `Lecture4` VALUES('858.41452', '889.052556', 13);
INSERT INTO `Lecture4` VALUES('907.094052', '993.115232', 14);
INSERT INTO `Lecture4` VALUES('994.720275', '1041.755128', 15);
INSERT INTO `Lecture4` VALUES('1063.453684', '1121.479036', 16);
INSERT INTO `Lecture4` VALUES('1136.676152', '1198.683636', 17);
INSERT INTO `Lecture4` VALUES('1226.4743', '1297.523847', 18);
INSERT INTO `Lecture4` VALUES('1323.041001', '1351.038825', 19);
INSERT INTO `Lecture4` VALUES('1354.817787', '1441.875133', 20);
INSERT INTO `Lecture4` VALUES('1453.88248', '1522.899329', 21);
INSERT INTO `Lecture4` VALUES('1527.023681', '1574.057536', 22);
INSERT INTO `Lecture4` VALUES('1607.947289', '1656.97221', 23);
INSERT INTO `Lecture4` VALUES('1668.856657', '1693.866884', 24);
INSERT INTO `Lecture4` VALUES('1726.109963', '1815.159374', 25);
INSERT INTO `Lecture4` VALUES('1816.154907', '1933.912239', 26);
INSERT INTO `Lecture4` VALUES('1936.655034', '1989.702721', 27);
INSERT INTO `Lecture4` VALUES('2025.420007', '2080.438442', 28);
INSERT INTO `Lecture4` VALUES('2101.710341', '2183.791021', 29);
INSERT INTO `Lecture4` VALUES('2203.948479', '2252.403526', 30);
INSERT INTO `Lecture4` VALUES('2269.267634', '2340.316183', 31);
INSERT INTO `Lecture4` VALUES('2342.733906', '2391.779144', 32);
INSERT INTO `Lecture4` VALUES('2394.561575', '2466.646291', 33);
INSERT INTO `Lecture4` VALUES('2469.450037', '2484.465298', 34);
INSERT INTO `Lecture4` VALUES('2495.801187', '2547.833024', 35);
INSERT INTO `Lecture4` VALUES('2560.957806', '2592.978396', 36);
INSERT INTO `Lecture4` VALUES('2616.159095', '2698.219458', 37);
INSERT INTO `Lecture4` VALUES('2699.68328', '2750.698269', 38);
INSERT INTO `Lecture4` VALUES('2774.916133', '2837.959784', 39);
INSERT INTO `Lecture4` VALUES('2844.948832', '2905.9811', 40);
INSERT INTO `Lecture4` VALUES('2911.162933', '2971.057449', 41);
INSERT INTO `Lecture4` VALUES('3010.715235', '3088.793466', 42);
INSERT INTO `Lecture4` VALUES('3095.660612', '3163.661611', 43);
INSERT INTO `Lecture4` VALUES('3164.677461', '3207.384793', 44);
INSERT INTO `Lecture4` VALUES('3264.008272', '3341.069655', 45);
INSERT INTO `Lecture4` VALUES('3358.014033', '3416.039385', 46);
INSERT INTO `Lecture4` VALUES('3435.929728', '3511.95694', 47);
INSERT INTO `Lecture4` VALUES('3528.636199', '3606.695111', 48);
INSERT INTO `Lecture4` VALUES('3623.20984', '3650.252765', 49);
INSERT INTO `Lecture4` VALUES('3663.803206', '3735.176827', 50);
INSERT INTO `Lecture4` VALUES('3736.680285', '3818.740648', 51);
INSERT INTO `Lecture4` VALUES('3840.845544', '3934.892937', 52);
INSERT INTO `Lecture4` VALUES('3937.574781', '4004.641198', 53);
INSERT INTO `Lecture4` VALUES('4006.368143', '4024.369005', 54);
INSERT INTO `Lecture4` VALUES('4034.202433', '4108.257898', 55);
INSERT INTO `Lecture4` VALUES('4115.08441', '4193.123005', 56);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture5`
--

CREATE TABLE `Lecture5` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `Lecture5`
--

INSERT INTO `Lecture5` VALUES('19.952247', '45.023425', 1);
INSERT INTO `Lecture5` VALUES('79.379472', '134.438542', 2);
INSERT INTO `Lecture5` VALUES('151.951796', '220.034063', 3);
INSERT INTO `Lecture5` VALUES('222.694592', '250.753367', 4);
INSERT INTO `Lecture5` VALUES('280.030164', '361.115311', 5);
INSERT INTO `Lecture5` VALUES('371.070641', '439.88432', 6);
INSERT INTO `Lecture5` VALUES('441.71285', '524.585893', 7);
INSERT INTO `Lecture5` VALUES('525.581426', '543.337486', 8);
INSERT INTO `Lecture5` VALUES('552.460817', '624.524218', 9);
INSERT INTO `Lecture5` VALUES('639.132141', '712.233705', 10);
INSERT INTO `Lecture5` VALUES('713.817433', '793.867411', 11);
INSERT INTO `Lecture5` VALUES('795.959064', '836.756598', 12);
INSERT INTO `Lecture5` VALUES('852.72576', '889.783968', 13);
INSERT INTO `Lecture5` VALUES('892.34391', '947.423297', 14);
INSERT INTO `Lecture5` VALUES('962.945485', '1056.078613', 15);
INSERT INTO `Lecture5` VALUES('1068.817372', '1153.600213', 16);
INSERT INTO `Lecture5` VALUES('1173.693726', '1263.73867', 17);
INSERT INTO `Lecture5` VALUES('1271.134059', '1423.064585', 18);
INSERT INTO `Lecture5` VALUES('1428.163154', '1451.162996', 19);
INSERT INTO `Lecture5` VALUES('1474.263425', '1509.330567', 20);
INSERT INTO `Lecture5` VALUES('1519.306214', '1584.178395', 21);
INSERT INTO `Lecture5` VALUES('1589.318596', '1639.156197', 22);
INSERT INTO `Lecture5` VALUES('1650.188328', '1720.281978', 23);
INSERT INTO `Lecture5` VALUES('1757.197967', '1814.837296', 24);
INSERT INTO `Lecture5` VALUES('1829.221732', '1906.080943', 25);
INSERT INTO `Lecture5` VALUES('1924.955436', '1994.053553', 26);
INSERT INTO `Lecture5` VALUES('1995.637281', '2069.775012', 27);
INSERT INTO `Lecture5` VALUES('2072.375588', '2150.452821', 28);
INSERT INTO `Lecture5` VALUES('2174.224709', '2240.051789', 29);
INSERT INTO `Lecture5` VALUES('2255.02442', '2270.059', 30);
INSERT INTO `Lecture5` VALUES('2273.818643', '2376.84615', 31);
INSERT INTO `Lecture5` VALUES('2379.792115', '2422.843838', 32);
INSERT INTO `Lecture5` VALUES('2470.588788', '2545.721054', 33);
INSERT INTO `Lecture5` VALUES('2547.447999', '2632.271474', 34);
INSERT INTO `Lecture5` VALUES('2638.061819', '2656.103315', 35);
INSERT INTO `Lecture5` VALUES('2673.311816', '2742.124497', 36);
INSERT INTO `Lecture5` VALUES('2748.850422', '2810.938176', 37);
INSERT INTO `Lecture5` VALUES('2816.952008', '2848.992915', 38);
INSERT INTO `Lecture5` VALUES('2857.667276', '2931.763375', 39);
INSERT INTO `Lecture5` VALUES('2933.429369', '3027.456445', 40);
INSERT INTO `Lecture5` VALUES('3055.209467', '3111.26407', 41);
INSERT INTO `Lecture5` VALUES('3116.485539', '3184.567806', 42);
INSERT INTO `Lecture5` VALUES('3213.397629', '3301.493139', 43);
INSERT INTO `Lecture5` VALUES('3304.356838', '3380.46432', 44);
INSERT INTO `Lecture5` VALUES('3410.635065', '3412.626131', 45);
INSERT INTO `Lecture5` VALUES('3415.634045', '3442.674974', 46);
INSERT INTO `Lecture5` VALUES('3447.794858', '3510.858826', 47);
INSERT INTO `Lecture5` VALUES('3546.089502', '3596.129275', 48);
INSERT INTO `Lecture5` VALUES('3598.100024', '3662.221474', 49);
INSERT INTO `Lecture5` VALUES('3669.677813', '3748.730262', 50);
INSERT INTO `Lecture5` VALUES('3750.43689', '3765.451153', 51);
INSERT INTO `Lecture5` VALUES('3788.917288', '3861.245808', 52);
INSERT INTO `Lecture5` VALUES('3879.064815', '3955.172297', 53);
INSERT INTO `Lecture5` VALUES('3959.154429', '4005.232387', 54);
INSERT INTO `Lecture5` VALUES('4014.801694', '4103.871422', 55);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture6`
--

CREATE TABLE `Lecture6` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- Dumping data for table `Lecture6`
--

INSERT INTO `Lecture6` VALUES('26.003744', '38.495566', 1);
INSERT INTO `Lecture6` VALUES('82.43559', '115.569103', 2);
INSERT INTO `Lecture6` VALUES('190.902187', '206.946516', 3);
INSERT INTO `Lecture6` VALUES('222.247837', '254.127524', 4);
INSERT INTO `Lecture6` VALUES('258.123134', '275.16588', 5);
INSERT INTO `Lecture6` VALUES('316.34962  ', '329.398698', 6);
INSERT INTO `Lecture6` VALUES('346.065105', '389.206007', 7);
INSERT INTO `Lecture6` VALUES('420.528438', '479.713669 ', 8);
INSERT INTO `Lecture6` VALUES('523.133199', '538.179111', 9);
INSERT INTO `Lecture6` VALUES('545.609191 ', '567.69046 ', 10);
INSERT INTO `Lecture6` VALUES('584.904464 ', '597.953542', 11);
INSERT INTO `Lecture6` VALUES('610.584678 ', '646.713442', 12);
INSERT INTO `Lecture6` VALUES('657.076863', '672.889002', 13);
INSERT INTO `Lecture6` VALUES('710.472827', '740.58787', 14);
INSERT INTO `Lecture6` VALUES('799.259386', '829.374429', 15);
INSERT INTO `Lecture6` VALUES('843.403547', '858.449459', 16);
INSERT INTO `Lecture6` VALUES('865.763444', '873.797218', 17);
INSERT INTO `Lecture6` VALUES('880.693261', '933.864771', 18);
INSERT INTO `Lecture6` VALUES('949.351844', '1059.27059', 19);
INSERT INTO `Lecture6` VALUES('1085.833126', '1112.67429', 20);
INSERT INTO `Lecture6` VALUES('1127.929173', '1169.073241', 21);
INSERT INTO `Lecture6` VALUES('1180.203878', '1220.117339', 22);
INSERT INTO `Lecture6` VALUES('1232.40019', '1267.298347', 23);
INSERT INTO `Lecture6` VALUES('1281.322623', '1363.610759', 24);
INSERT INTO `Lecture6` VALUES('1375.777515', '1416.921583', 25);
INSERT INTO `Lecture6` VALUES('1432.965912', '1471.834518', 26);
INSERT INTO `Lecture6` VALUES('1493.030588', '1528.903943', 27);
INSERT INTO `Lecture6` VALUES('1571.951969', '1610.843794', 28);
INSERT INTO `Lecture6` VALUES('1725.271881', '1744.357899', 29);
INSERT INTO `Lecture6` VALUES('1748.000381', '1768.827824', 30);
INSERT INTO `Lecture6` VALUES('1777.971275', '1821.112177', 31);
INSERT INTO `Lecture6` VALUES('1874.59038', '1909.720727', 32);
INSERT INTO `Lecture6` VALUES('1917.327856', '1982.317837', 33);
INSERT INTO `Lecture6` VALUES('1993.822857', '2030.694629', 34);
INSERT INTO `Lecture6` VALUES('2065.907215', '2141.159994', 35);
INSERT INTO `Lecture6` VALUES('2154.544786', '2185.635027', 36);
INSERT INTO `Lecture6` VALUES('2215.866165', '2254.99018', 37);
INSERT INTO `Lecture6` VALUES('2290.352717', '2384.412886', 38);
INSERT INTO `Lecture6` VALUES('2395.650882', '2440.835056', 39);
INSERT INTO `Lecture6` VALUES('2464.19337', '2516.366463', 40);
INSERT INTO `Lecture6` VALUES('2531.481098', '2565.589809', 41);
INSERT INTO `Lecture6` VALUES('2607.697471', '2658.616738', 42);
INSERT INTO `Lecture6` VALUES('2688.720177', '2703.789308', 43);
INSERT INTO `Lecture6` VALUES('2708.869434', '2727.932233', 44);
INSERT INTO `Lecture6` VALUES('2781.196622', '2822.34069', 45);
INSERT INTO `Lecture6` VALUES('2841.982038', '2873.118717', 46);
INSERT INTO `Lecture6` VALUES('2893.24959', '2950.461206', 47);
INSERT INTO `Lecture6` VALUES('3064.689027', '3099.796155', 48);
INSERT INTO `Lecture6` VALUES('3130.236264', '3142.054735', 49);
INSERT INTO `Lecture6` VALUES('3175.257905', '3198.337591', 50);
INSERT INTO `Lecture6` VALUES('3210.277006', '3220.307614', 51);
INSERT INTO `Lecture6` VALUES('3255.832684', '3268.881762', 52);
INSERT INTO `Lecture6` VALUES('3322.308681', '3348.151428', 53);
INSERT INTO `Lecture6` VALUES('3238.622758', '3268.737801', 54);
INSERT INTO `Lecture6` VALUES('3274.733925', '3293.541315', 55);
INSERT INTO `Lecture6` VALUES('3319.543694', '3340.626546', 56);
INSERT INTO `Lecture6` VALUES('3375.12998', '3417.017056', 57);
INSERT INTO `Lecture6` VALUES('3536.931598', '3552.975927', 58);
INSERT INTO `Lecture6` VALUES('3600.017621', '3621.100473', 59);
INSERT INTO `Lecture6` VALUES('3643.805765', '3663.866981', 60);
INSERT INTO `Lecture6` VALUES('3679.277628', '3823.908783', 61);
INSERT INTO `Lecture6` VALUES('3880.164559', '3982.30494', 62);
INSERT INTO `Lecture6` VALUES('4070.826427', '4090.632234', 63);
INSERT INTO `Lecture6` VALUES('4102.473924', '4166.442269', 64);
INSERT INTO `Lecture6` VALUES('4173.021474', '4198.121213', 65);
INSERT INTO `Lecture6` VALUES('4236.534639', '4299.504567', 66);
INSERT INTO `Lecture6` VALUES('4306.581012', '4340.712942', 67);
INSERT INTO `Lecture6` VALUES('4434.539513', '4479.445059', 68);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture7`
--

CREATE TABLE `Lecture7` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- Dumping data for table `Lecture7`
--

INSERT INTO `Lecture7` VALUES('13.998648', '31.041394', 1);
INSERT INTO `Lecture7` VALUES('58.880975', '138.916868', 2);
INSERT INTO `Lecture7` VALUES('176.607524', '238.486159', 3);
INSERT INTO `Lecture7` VALUES('249.282994', '276.356348', 4);
INSERT INTO `Lecture7` VALUES('317.63973', '388.620213', 5);
INSERT INTO `Lecture7` VALUES('425.84027', '464.987504', 6);
INSERT INTO `Lecture7` VALUES('471.555689', '500.649096', 7);
INSERT INTO `Lecture7` VALUES('508.566775', '526.607938', 8);
INSERT INTO `Lecture7` VALUES('539.030103', '554.076015', 9);
INSERT INTO `Lecture7` VALUES('598.563619', '631.418504', 10);
INSERT INTO `Lecture7` VALUES('660.953072', '680.015871', 11);
INSERT INTO `Lecture7` VALUES('739.924055', '773.777357', 12);
INSERT INTO `Lecture7` VALUES('783.58854', '798.657671', 13);
INSERT INTO `Lecture7` VALUES('811.149493', '816.164797', 14);
INSERT INTO `Lecture7` VALUES('846.427421', '872.270168', 15);
INSERT INTO `Lecture7` VALUES('883.451272', '914.564732', 16);
INSERT INTO `Lecture7` VALUES('945.476759', '975.336393', 17);
INSERT INTO `Lecture7` VALUES('1033.708959', '1059.783896', 18);
INSERT INTO `Lecture7` VALUES('1173.437256', '1256.723809', 19);
INSERT INTO `Lecture7` VALUES('1305.172261', '1340.302608', 20);
INSERT INTO `Lecture7` VALUES('1354.837702', '1380.959077', 21);
INSERT INTO `Lecture7` VALUES('1393.381242', '1419.479398', 22);
INSERT INTO `Lecture7` VALUES('1420.823184', '1434.870679', 23);
INSERT INTO `Lecture7` VALUES('1455.562577', '1489.439098', 24);
INSERT INTO `Lecture7` VALUES('1506.528282', '1524.360474', 25);
INSERT INTO `Lecture7` VALUES('1584.847554', '1665.138857', 26);
INSERT INTO `Lecture7` VALUES('1715.640182', '1755.785833', 27);
INSERT INTO `Lecture7` VALUES('1769.963037', '1828.916078', 28);
INSERT INTO `Lecture7` VALUES('1878.347142', '1950.60467', 29);
INSERT INTO `Lecture7` VALUES('1955.94504', '1981.044779', 30);
INSERT INTO `Lecture7` VALUES('2020.992774', '2089.976423', 31);
INSERT INTO `Lecture7` VALUES('2118.466141', '2146.305722', 32);
INSERT INTO `Lecture7` VALUES('2185.36008', '2221.256654', 33);
INSERT INTO `Lecture7` VALUES('2225.583037', '2247.664306', 34);
INSERT INTO `Lecture7` VALUES('2260.165124', '2276.97568', 35);
INSERT INTO `Lecture7` VALUES('2292.299495', '2338.226677', 36);
INSERT INTO `Lecture7` VALUES('2383.887263', '2482.126856', 37);
INSERT INTO `Lecture7` VALUES('2512.892881', '2521.925072', 38);
INSERT INTO `Lecture7` VALUES('2691.168367', '2755.159931', 39);
INSERT INTO `Lecture7` VALUES('2786.203734', '2802.248063', 40);
INSERT INTO `Lecture7` VALUES('2813.393183', '2864.335669', 41);
INSERT INTO `Lecture7` VALUES('2871.121087', '2920.04352', 42);
INSERT INTO `Lecture7` VALUES('2944.129165', '3034.195666', 43);
INSERT INTO `Lecture7` VALUES('3043.831551', '3087.73868', 44);
INSERT INTO `Lecture7` VALUES('3110.934461', '3164.872198', 45);
INSERT INTO `Lecture7` VALUES('3168.191906', '3216.115922', 46);
INSERT INTO `Lecture7` VALUES('3220.600229', '3235.66936', 47);
INSERT INTO `Lecture7` VALUES('3314.273942', '3352.16735', 48);
INSERT INTO `Lecture7` VALUES('3375.66656', '3391.710889', 49);
INSERT INTO `Lecture7` VALUES('3404.619924', '3476.645262', 50);
INSERT INTO `Lecture7` VALUES('3484.655817', '3560.674823', 51);
INSERT INTO `Lecture7` VALUES('3574.141843', '3602.492242', 52);
INSERT INTO `Lecture7` VALUES('3607.063036', '3696.154339', 53);
INSERT INTO `Lecture7` VALUES('3718.88574', '3805.933771', 54);
INSERT INTO `Lecture7` VALUES('3814.745636', '3873.721896', 55);
INSERT INTO `Lecture7` VALUES('3927.202062', '3938.997314', 56);
INSERT INTO `Lecture7` VALUES('3955.297053', '3980.396792', 57);
INSERT INTO `Lecture7` VALUES('3992.51711', '4003.546135', 58);
INSERT INTO `Lecture7` VALUES('4020.403129', '4043.482815', 59);
INSERT INTO `Lecture7` VALUES('4060.641656', '4108.797862', 60);
INSERT INTO `Lecture7` VALUES('4113.627414', '4198.725049', 61);
INSERT INTO `Lecture7` VALUES('4246.091812', '4268.196302', 62);
INSERT INTO `Lecture7` VALUES('4284.496044', '4304.55726', 63);
INSERT INTO `Lecture7` VALUES('4378.115052', '4485.270737', 64);
INSERT INTO `Lecture7` VALUES('4518.450692', '4570.391595', 65);
INSERT INTO `Lecture7` VALUES('4580.223342', '4616.096697', 66);
INSERT INTO `Lecture7` VALUES('4621.073252', '4632.125496', 67);
INSERT INTO `Lecture7` VALUES('4662.864358', '4714.039034', 68);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture8`
--

CREATE TABLE `Lecture8` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `Lecture8`
--

INSERT INTO `Lecture8` VALUES('18.091476', '29.886728', 1);
INSERT INTO `Lecture8` VALUES('46.116809', '99.056129', 2);
INSERT INTO `Lecture8` VALUES('104.675127', '118.722622', 3);
INSERT INTO `Lecture8` VALUES('119.443441', '176.655057', 4);
INSERT INTO `Lecture8` VALUES('178.292424', '209.405884', 5);
INSERT INTO `Lecture8` VALUES('228.584782', '282.777928', 6);
INSERT INTO `Lecture8` VALUES('335.508277', '369.384798', 7);
INSERT INTO `Lecture8` VALUES('378.25446', '410.110928', 8);
INSERT INTO `Lecture8` VALUES('442.663966', '471.757373', 9);
INSERT INTO `Lecture8` VALUES('493.360077', '540.564304', 10);
INSERT INTO `Lecture8` VALUES('574.094592', '609.224939', 11);
INSERT INTO `Lecture8` VALUES('618.910485', '654.807059', 12);
INSERT INTO `Lecture8` VALUES('679.837141', '717.985958', 13);
INSERT INTO `Lecture8` VALUES('752.406226', '785.493301', 14);
INSERT INTO `Lecture8` VALUES('859.647473', '985.842738', 15);
INSERT INTO `Lecture8` VALUES('1049.549967', '1097.729392', 16);
INSERT INTO `Lecture8` VALUES('1137.921481', '1260.07664', 17);
INSERT INTO `Lecture8` VALUES('1297.524696', '1350.440797', 18);
INSERT INTO `Lecture8` VALUES('1435.81706', '1456.621284', 19);
INSERT INTO `Lecture8` VALUES('1465.607037', '1494.723663', 20);
INSERT INTO `Lecture8` VALUES('1559.108462', '1593.960181', 21);
INSERT INTO `Lecture8` VALUES('1609.029312', '1633.107415', 22);
INSERT INTO `Lecture8` VALUES('1639.707982', '1701.679493', 23);
INSERT INTO `Lecture8` VALUES('1727.300581', '1807.591883', 24);
INSERT INTO `Lecture8` VALUES('1881.451522', '1929.375538', 25);
INSERT INTO `Lecture8` VALUES('1933.96556', '1942.997751', 26);
INSERT INTO `Lecture8` VALUES('1954.283952', '1987.162056', 27);
INSERT INTO `Lecture8` VALUES('2026.843331', '2065.967346', 28);
INSERT INTO `Lecture8` VALUES('2097.075831', '2119.1571', 29);
INSERT INTO `Lecture8` VALUES('2176.623138', '2224.849001', 30);
INSERT INTO `Lecture8` VALUES('2235.980026', '2279.887155', 31);
INSERT INTO `Lecture8` VALUES('2284.089797', '2323.237031', 32);
INSERT INTO `Lecture8` VALUES('2327.729211', '2353.827367', 33);
INSERT INTO `Lecture8` VALUES('2364.877698', '2436.57797', 34);
INSERT INTO `Lecture8` VALUES('2446.171331', '2482.044686', 35);
INSERT INTO `Lecture8` VALUES('2504.836069', '2526.661929', 36);
INSERT INTO `Lecture8` VALUES('2570.963781', '2609.855606', 37);
INSERT INTO `Lecture8` VALUES('2630.125793', '2692.004428', 38);
INSERT INTO `Lecture8` VALUES('2729.5451', '2762.655394', 39);
INSERT INTO `Lecture8` VALUES('2787.662261', '2799.457513', 40);
INSERT INTO `Lecture8` VALUES('2809.232712', '2852.373614', 41);
INSERT INTO `Lecture8` VALUES('2906.195256', '2983.212679', 42);
INSERT INTO `Lecture8` VALUES('2989.528247', '3043.744612', 43);
INSERT INTO `Lecture8` VALUES('3130.815862', '3199.033284', 44);
INSERT INTO `Lecture8` VALUES('3220.995713', '3235.043208', 45);
INSERT INTO `Lecture8` VALUES('3238.138718', '3295.791495', 46);
INSERT INTO `Lecture8` VALUES('3303.259769', '3400.361627', 47);
INSERT INTO `Lecture8` VALUES('3424.161106', '3542.369035', 48);
INSERT INTO `Lecture8` VALUES('3572.29833', '3625.23765', 49);
INSERT INTO `Lecture8` VALUES('3645.67037', '3655.724197', 50);
INSERT INTO `Lecture8` VALUES('3749.528961', '3896.830297', 51);
INSERT INTO `Lecture8` VALUES('3963.278188', '3990.374761', 52);
INSERT INTO `Lecture8` VALUES('4006.563109', '4085.623804', 53);
INSERT INTO `Lecture8` VALUES('4161.333289', '4187.408226', 54);
INSERT INTO `Lecture8` VALUES('4196.37076', '4247.545436', 55);
INSERT INTO `Lecture8` VALUES('4271.522704', '4318.796588', 56);
INSERT INTO `Lecture8` VALUES('4336.117962', '4387.292638', 57);
INSERT INTO `Lecture8` VALUES('4433.243039', '4449.287368', 58);
INSERT INTO `Lecture8` VALUES('4475.664152', '4491.7317', 59);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture9`
--

CREATE TABLE `Lecture9` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `Lecture9`
--

INSERT INTO `Lecture9` VALUES('16.623267', '26.677094', 1);
INSERT INTO `Lecture9` VALUES('62.737772', '76.808486', 2);
INSERT INTO `Lecture9` VALUES('103.928278', '134.043321', 3);
INSERT INTO `Lecture9` VALUES('167.551036', '221.767401', 4);
INSERT INTO `Lecture9` VALUES('230.580227', '296.057808', 5);
INSERT INTO `Lecture9` VALUES('391.635534', '428.762715', 6);
INSERT INTO `Lecture9` VALUES('473.629154', '531.653435', 7);
INSERT INTO `Lecture9` VALUES('534.749925', '554.83436', 8);
INSERT INTO `Lecture9` VALUES('619.45079', '677.428633', 9);
INSERT INTO `Lecture9` VALUES('708.406604', '747.577057', 10);
INSERT INTO `Lecture9` VALUES('768.968598', '827.062536', 11);
INSERT INTO `Lecture9` VALUES('847.657789', '861.705284', 12);
INSERT INTO `Lecture9` VALUES('915.626907', '933.691289', 13);
INSERT INTO `Lecture9` VALUES('955.46482', '975.526036', 14);
INSERT INTO `Lecture9` VALUES('1007.127096', '1028.186729', 15);
INSERT INTO `Lecture9` VALUES('1058.268496', '1076.309659', 16);
INSERT INTO `Lecture9` VALUES('1084.714937', '1157.761911', 17);
INSERT INTO `Lecture9` VALUES('1169.073293', '1199.931344', 18);
INSERT INTO `Lecture9` VALUES('1213.514459', '1259.418422', 19);
INSERT INTO `Lecture9` VALUES('1279.766815', '1298.829614', 20);
INSERT INTO `Lecture9` VALUES('1322.385232', '1337.431144', 21);
INSERT INTO `Lecture9` VALUES('1347.879694', '1375.974684', 22);
INSERT INTO `Lecture9` VALUES('1440.386963', '1472.243431', 23);
INSERT INTO `Lecture9` VALUES('1501.659107', '1515.729821', 24);
INSERT INTO `Lecture9` VALUES('1537.401399', '1603.389797', 25);
INSERT INTO `Lecture9` VALUES('1626.744263', '1650.822366', 26);
INSERT INTO `Lecture9` VALUES('1676.705942', '1789.875348', 27);
INSERT INTO `Lecture9` VALUES('1805.571396', '1828.674301', 28);
INSERT INTO `Lecture9` VALUES('1848.262426', '1931.316789', 29);
INSERT INTO `Lecture9` VALUES('1967.747471', '1985.835072', 30);
INSERT INTO `Lecture9` VALUES('2005.323033', '2125.852862', 31);
INSERT INTO `Lecture9` VALUES('2189.319311', '2267.59056', 32);
INSERT INTO `Lecture9` VALUES('2306.528827', '2358.725139', 33);
INSERT INTO `Lecture9` VALUES('2377.326455', '2446.681608', 34);
INSERT INTO `Lecture9` VALUES('2485.975788', '2518.087665', 35);
INSERT INTO `Lecture9` VALUES('2528.667424', '2560.523892', 36);
INSERT INTO `Lecture9` VALUES('2561.176912', '2587.275068', 37);
INSERT INTO `Lecture9` VALUES('2624.609661', '2776.740549', 38);
INSERT INTO `Lecture9` VALUES('2805.55752', '2829.635623', 39);
INSERT INTO `Lecture9` VALUES('2842.57436', '2867.65088', 40);
INSERT INTO `Lecture9` VALUES('2881.287165', '2931.463424', 41);
INSERT INTO `Lecture9` VALUES('2933.951606', '2956.032875', 42);
INSERT INTO `Lecture9` VALUES('2970.242903', '3001.379582', 43);
INSERT INTO `Lecture9` VALUES('3008.165775', '3022.21327', 44);
INSERT INTO `Lecture9` VALUES('3044.991109', '3075.84916', 45);
INSERT INTO `Lecture9` VALUES('3104.40853', '3144.554181', 46);
INSERT INTO `Lecture9` VALUES('3190.127726', '3211.210578', 47);
INSERT INTO `Lecture9` VALUES('3337.591599', '3393.549389', 48);
INSERT INTO `Lecture9` VALUES('3402.500228', '3431.593635', 49);
INSERT INTO `Lecture9` VALUES('3476.4902', '3510.62213', 50);
INSERT INTO `Lecture9` VALUES('3547.240024', '3595.419449', 51);
INSERT INTO `Lecture9` VALUES('3621.429716', '3683.401227', 52);
INSERT INTO `Lecture9` VALUES('3776.842262', '3842.041214', 53);
INSERT INTO `Lecture9` VALUES('3885.135685', '3939.096641', 54);
INSERT INTO `Lecture9` VALUES('4001.393218', '4043.303513', 55);
INSERT INTO `Lecture9` VALUES('4064.572117', '4106.737821', 56);

-- --------------------------------------------------------

--
-- Table structure for table `Lecture10`
--

CREATE TABLE `Lecture10` (
  `Start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `End` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Segment` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Segment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Lecture10`
--

