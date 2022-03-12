--
-- Database: `NewDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_name`) VALUES
('Air China');

-- --------------------------------------------------------

--
-- Table structure for table `airline_staff`
--

CREATE TABLE `airline_staff` (
  `username` varchar(20) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `airline_name` varchar(20) DEFAULT NULL,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airline_staff`
--

INSERT INTO `airline_staff` (`username`, `password`, `airline_name`, `first_name`, `last_name`, `date_of_birth`) VALUES
('alice@airchina.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Air China', 'alice', 'wang', '1990-01-01'),
('test1@airchina.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Air China', 'a', 'b', '1990-01-01'),
('test@airchina.com', '202cb962ac59075b964b07152d234b70', 'Air China', 'iejrei', 'jfei', '1990-01-01'),
('test_1@airchina.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Air China', 'a', 'b', '1990-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `airline_name` varchar(20) NOT NULL,
  `planeID` varchar(8) NOT NULL,
  `seats` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`airline_name`, `planeID`, `seats`) VALUES
('Air China', '1', '4'),
('Air China', '2', '4'),
('Air China', '3', '50'),
('Air China', '4', '2');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `name` varchar(20) NOT NULL,
  `city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`name`, `city`) VALUES
('ABC', 'ABCfefef'),
('BEI', 'Beijing'),
('BOS', 'Boston'),
('HKA', 'Hong Kong'),
('JFK', 'NYC'),
('LAX', 'Los Angeles'),
('PVG', 'Shanghai'),
('SFO', 'San Francisco'),
('SHEN', 'Shenzhen');

-- --------------------------------------------------------

--
-- Table structure for table `booking_agent`
--

CREATE TABLE `booking_agent` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `booking_agent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_agent`
--

INSERT INTO `booking_agent` (`email`, `password`, `booking_agent_id`) VALUES
('test2@agent.com', '12345', 2),
('test3@agent.com', '12345', 3),
('test4@agent.com', '12345', 4),
('test@agent.com', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `email` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `building_no` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `passport_no` varchar(15) DEFAULT NULL,
  `passport_exp` date DEFAULT NULL,
  `passport_country` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`email`, `name`, `password`, `date_of_birth`, `state`, `city`, `street`, `building_no`, `phone_no`, `passport_no`, `passport_exp`, `passport_country`) VALUES
('alice@nyu.edu', 'alice', '827ccb0eea8a706c4c34a16891f84e7b', '1998-01-01', 'China', 'Shanghai', 'Century Ave', '1555', '123453843', '1298984', '2023-10-20', 'China'),
('bob@nyu.edu', 'Bob', '827ccb0eea8a706c4c34a16891f84e7b', '1999-12-19', 'Shanghai', 'Pudong', 'Century Avenue', '1555', '123-4321-4321', '12345', '2025-12-24', 'China'),
('testcustomer@nyu.edu', 'Test Customer 1,', '81dc9bdb52d04dc20036dbd8313ed055', '1999-12-19', 'Shanghai', 'Pudong', 'Century Avenue', '15555', '123-4321-4321', '54321', '2025-12-24', 'China'),
('user1@nyu.edu', 'User 1,', '81dc9bdb52d04dc20036dbd8313ed055', '1999-11-19', 'Shanghai', 'Pudong', 'Century Avenue', '15555', '123-4322-4322', '54322', '2025-12-25', 'China'),
('user2@nyu.edu', 'User 2,', '81dc9bdb52d04dc20036dbd8313ed055', '1999-10-19', 'Shanghai', 'Pudong', 'Century Avenue', '1702', '123-4323-4323', '54323', '2025-10-24', 'China'),
('user3@nyu.edu', 'User 3,', '81dc9bdb52d04dc20036dbd8313ed055', '1999-09-19', 'Shanghai', 'Pudong', 'Century Avenue', '1890', '123-4324-4324', '54324', '2025-09-24', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `planeID` varchar(8) DEFAULT NULL,
  `airline_name` varchar(20) NOT NULL,
  `flight_no` varchar(8) NOT NULL,
  `departure_date_time` datetime NOT NULL,
  `arrival_date_time` datetime DEFAULT NULL,
  `departs_from` varchar(20) DEFAULT NULL,
  `arrives_from` varchar(20) DEFAULT NULL,
  `base_price` decimal(7,2) DEFAULT NULL,
  `flight_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`planeID`, `airline_name`, `flight_no`, `departure_date_time`, `arrival_date_time`, `departs_from`, `arrives_from`, `base_price`, `flight_status`) VALUES
('3', 'Air China', '102', '2021-04-12 13:25:25', '2021-04-12 16:50:25', 'SFO', 'LAX', '300.00', 'ontime'),
('3', 'Air China', '104', '2021-05-12 13:25:25', '2021-05-12 16:50:25', 'PVG', 'BEI', '300.00', 'delayed'),
('3', 'Air China', '106', '2021-03-12 13:25:25', '2021-03-12 16:50:25', 'SFO', 'LAX', '350.00', 'delayed'),
('3', 'Air China', '134', '2021-01-12 13:25:25', '2021-01-12 16:50:25', 'JFK', 'BOS', '300.00', 'delayed'),
('1', 'Air China', '199', '2021-09-12 13:25:25', '2021-04-12 16:50:00', 'ABC', 'LAX', '500.00', 'ontime'),
('2', 'Air China', '206', '2021-07-12 13:25:25', '2021-07-12 16:50:25', 'SFO', 'LAX', '500.00', 'ontime'),
('2', 'Air China', '207', '2021-08-12 13:25:25', '2021-08-12 16:50:25', 'LAX', 'SFO', '300.00', 'ontime'),
('1', 'Air China', '296', '2021-07-01 13:25:25', '2021-07-01 16:50:25', 'PVG', 'SFO', '2000.00', 'ontime'),
('1', 'Air China', '715', '2021-04-28 10:25:25', '2021-04-28 13:50:25', 'PVG', 'BEI', '500.00', 'delayed'),
('3', 'Air China', '839', '2021-10-12 13:25:25', '2021-10-12 16:50:25', 'SHEN', 'BEI', '300.00', 'ontime');

-- --------------------------------------------------------

--
-- Stand-in structure for view `flight_avail`
-- (See below for the actual view)
--
CREATE TABLE `flight_avail` (
`flight_no` varchar(8)
,`airline_name` varchar(20)
,`departure_date_time` datetime
,`sold` bigint(21)
,`seats` decimal(3,0)
,`percentage_full` decimal(27,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthly_revenue`
-- (See below for the actual view)
--
CREATE TABLE `monthly_revenue` (
`airline_name` varchar(20)
,`month` varchar(7)
,`revenue` decimal(29,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthly_spend`
-- (See below for the actual view)
--
CREATE TABLE `monthly_spend` (
`email` varchar(40)
,`month` varchar(7)
,`purchase_date_time` datetime
,`spending` decimal(29,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `phone_number`
--

CREATE TABLE `phone_number` (
  `username` varchar(20) DEFAULT NULL,
  `phone_number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_number`
--

INSERT INTO `phone_number` (`username`, `phone_number`) VALUES
('alice@airchina.com', '12345'),
('test@airchina.com', '13333333333'),
('test_1@airchina.com', '133433434');

-- --------------------------------------------------------

--
-- Stand-in structure for view `pricing`
-- (See below for the actual view)
--
CREATE TABLE `pricing` (
`flight_no` varchar(8)
,`base_price` decimal(7,2)
,`real_price` decimal(9,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pricing2`
-- (See below for the actual view)
--
CREATE TABLE `pricing2` (
`flight_no` varchar(8)
,`base_price` decimal(7,2)
,`real_price` decimal(9,3)
);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `ticket_id` int(11) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `booking_agent_id` int(11) DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `commission` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`ticket_id`, `customer_email`, `booking_agent_id`, `purchase_date`, `commission`) VALUES
(1, 'alice@nyu.edu', 1, '2021-05-10', 50),
(2, 'user1@nyu.edu', 1, '2021-05-10', 10),
(3, 'user2@nyu.edu', 1, '2021-05-10', 10),
(4, 'user3@nyu.edu', 1, '2021-05-10', 10),
(5, 'bob@nyu.edu', 1, '2021-05-10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `email` varchar(40) NOT NULL,
  `airline_name` varchar(20) NOT NULL,
  `flight_no` varchar(8) NOT NULL,
  `departure_date_time` datetime NOT NULL,
  `rating` decimal(1,0) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`email`, `airline_name`, `flight_no`, `departure_date_time`, `rating`, `comment`) VALUES
('testcustomer@nyu.edu', 'Air China', '102', '2021-04-12 13:25:25', '4', 'Very Comfortable'),
('testcustomer@nyu.edu', 'Air China', '104', '2021-05-12 13:25:25', '1', 'Customer Care services are not good'),
('user1@nyu.edu', 'Air China', '102', '2021-04-12 13:25:25', '5', 'Relaxing, check-in and onboarding very professional'),
('user1@nyu.edu', 'Air China', '104', '2021-05-12 13:25:25', '5', 'Comfortable journey and Professional'),
('user2@nyu.edu', 'Air China', '102', '2021-04-12 13:25:25', '3', 'Satisfied and will use the same flight again');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketID` varchar(30) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `airline_name` varchar(20) DEFAULT NULL,
  `flight_no` varchar(8) DEFAULT NULL,
  `departure_date_time` datetime DEFAULT NULL,
  `sold_price` decimal(7,2) DEFAULT NULL,
  `purchase_date_time` datetime DEFAULT NULL,
  `card_type` varchar(10) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `name_on_card` varchar(50) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `sec_code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketID`, `email`, `airline_name`, `flight_no`, `departure_date_time`, `sold_price`, `purchase_date_time`, `card_type`, `card_no`, `name_on_card`, `exp_date`, `sec_code`) VALUES
('1', 'alice@nyu.edu', 'Air China', '206', '2021-07-12 13:25:25', '500.00', '2021-05-10 17:40:09', 'debit', '12345', '12345', '2022-10-01', '123'),
('2', 'user1@nyu.edu', 'Air China', '296', '2021-07-01 13:25:25', NULL, '2021-05-10 20:21:01', NULL, NULL, NULL, NULL, NULL),
('3', 'user2@nyu.edu', 'Air China', '199', '2021-09-12 13:25:25', NULL, '2021-05-10 20:22:53', NULL, NULL, NULL, NULL, NULL),
('4', 'user3@nyu.edu', 'Air China', '199', '2021-09-12 13:25:25', NULL, '2021-05-10 20:23:41', NULL, NULL, NULL, NULL, NULL),
('5', 'bob@nyu.edu', 'Air China', '199', '2021-09-12 13:25:25', '500.00', '2021-05-10 20:24:13', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topdest_last_three_months`
-- (See below for the actual view)
--
CREATE TABLE `topdest_last_three_months` (
`city` varchar(20)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topdest_last_year`
-- (See below for the actual view)
--
CREATE TABLE `topdest_last_year` (
`city` varchar(20)
,`count` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `flight_avail`
--
DROP TABLE IF EXISTS `flight_avail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `flight_avail`  AS SELECT `flight`.`flight_no` AS `flight_no`, `flight`.`airline_name` AS `airline_name`, `flight`.`departure_date_time` AS `departure_date_time`, count(`ticket`.`ticketID`) AS `sold`, `airplane`.`seats` AS `seats`, ((count(`ticket`.`ticketID`) / `airplane`.`seats`) * 100) AS `percentage_full` FROM ((`flight` join `ticket`) join `airplane`) WHERE ((`ticket`.`flight_no` = `flight`.`flight_no`) AND (`airplane`.`planeID` = `flight`.`planeID`) AND (`airplane`.`airline_name` = `flight`.`airline_name`)) GROUP BY `flight`.`flight_no`, `flight`.`airline_name`, `flight`.`departure_date_time` ;

-- --------------------------------------------------------

--
-- Structure for view `monthly_revenue`
--
DROP TABLE IF EXISTS `monthly_revenue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monthly_revenue`  AS SELECT `ticket`.`airline_name` AS `airline_name`, date_format(`ticket`.`purchase_date_time`,'%Y-%m') AS `month`, sum(`ticket`.`sold_price`) AS `revenue` FROM `ticket` GROUP BY `ticket`.`airline_name`, `month` ;

-- --------------------------------------------------------

--
-- Structure for view `monthly_spend`
--
DROP TABLE IF EXISTS `monthly_spend`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monthly_spend`  AS SELECT `ticket`.`email` AS `email`, date_format(`ticket`.`purchase_date_time`,'%Y-%m') AS `month`, `ticket`.`purchase_date_time` AS `purchase_date_time`, sum(`ticket`.`sold_price`) AS `spending` FROM `ticket` GROUP BY `ticket`.`email`, `month` ;

-- --------------------------------------------------------

--
-- Structure for view `pricing`
--
DROP TABLE IF EXISTS `pricing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pricing`  AS SELECT `flight`.`flight_no` AS `flight_no`, `flight`.`base_price` AS `base_price`, (`flight`.`base_price` * 1.2) AS `real_price` FROM (`flight` join `flight_avail` on((`flight`.`flight_no` = `flight_avail`.`flight_no`))) WHERE (`flight_avail`.`percentage_full` >= 70) ;

-- --------------------------------------------------------

--
-- Structure for view `pricing2`
--
DROP TABLE IF EXISTS `pricing2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pricing2`  AS SELECT `flight`.`flight_no` AS `flight_no`, `flight`.`base_price` AS `base_price`, (`flight`.`base_price` * 1.2) AS `real_price` FROM (`flight` join `flight_avail` on((`flight`.`flight_no` = `flight_avail`.`flight_no`))) WHERE (`flight_avail`.`percentage_full` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `topdest_last_three_months`
--
DROP TABLE IF EXISTS `topdest_last_three_months`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topdest_last_three_months`  AS SELECT `airport`.`city` AS `city`, count(`airport`.`city`) AS `count` FROM (`flight` join `airport`) WHERE ((`flight`.`arrives_from` = `airport`.`name`) AND (`flight`.`departure_date_time` between (now() - interval 90 day) and now())) GROUP BY `airport`.`city` ;

-- --------------------------------------------------------

--
-- Structure for view `topdest_last_year`
--
DROP TABLE IF EXISTS `topdest_last_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topdest_last_year`  AS SELECT `airport`.`city` AS `city`, count(`airport`.`city`) AS `count` FROM (`flight` join `airport`) WHERE ((`flight`.`arrives_from` = `airport`.`name`) AND (`flight`.`departure_date_time` between (now() - interval 365 day) and now())) GROUP BY `airport`.`city` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_name`);

--
-- Indexes for table `airline_staff`
--
ALTER TABLE `airline_staff`
  ADD PRIMARY KEY (`username`),
  ADD KEY `airline_name` (`airline_name`);

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`planeID`,`airline_name`),
  ADD KEY `airline_name` (`airline_name`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `booking_agent`
--
ALTER TABLE `booking_agent`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_no`,`departure_date_time`,`airline_name`),
  ADD KEY `planeID` (`planeID`),
  ADD KEY `airline_name` (`airline_name`),
  ADD KEY `departs_from` (`departs_from`),
  ADD KEY `arrives_from` (`arrives_from`);

--
-- Indexes for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`phone_number`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`ticket_id`,`customer_email`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`email`,`airline_name`,`flight_no`,`departure_date_time`),
  ADD KEY `airline_name` (`airline_name`,`flight_no`,`departure_date_time`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `email` (`email`),
  ADD KEY `airline_name` (`airline_name`),
  ADD KEY `flight_no` (`flight_no`,`departure_date_time`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airline_staff`
--
ALTER TABLE `airline_staff`
  ADD CONSTRAINT `airline_staff_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`) ON DELETE SET NULL;

--
-- Constraints for table `airplane`
--
ALTER TABLE `airplane`
  ADD CONSTRAINT `airplane_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`) ON DELETE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`planeID`) REFERENCES `airplane` (`planeID`) ON DELETE SET NULL,
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_ibfk_3` FOREIGN KEY (`departs_from`) REFERENCES `airport` (`name`) ON DELETE SET NULL,
  ADD CONSTRAINT `flight_ibfk_4` FOREIGN KEY (`arrives_from`) REFERENCES `airport` (`name`) ON DELETE SET NULL;

--
-- Constraints for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD CONSTRAINT `phone_number_ibfk_1` FOREIGN KEY (`username`) REFERENCES `airline_staff` (`username`) ON DELETE SET NULL;

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_ibfk_1` FOREIGN KEY (`email`) REFERENCES `customer` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `rates_ibfk_2` FOREIGN KEY (`airline_name`,`flight_no`,`departure_date_time`) REFERENCES `flight` (`airline_name`, `flight_no`, `departure_date_time`) ON DELETE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`email`) REFERENCES `customer` (`email`) ON DELETE SET NULL,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`) ON DELETE SET NULL,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`flight_no`,`departure_date_time`) REFERENCES `flight` (`flight_no`, `departure_date_time`) ON DELETE SET NULL;
