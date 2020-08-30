

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CH_DATABASE`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection_type`
--

CREATE TABLE `collection_type` (
  `id` int(11) NOT NULL,
  `collection_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `harvest`
--

CREATE TABLE `harvest` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `photo` text NOT NULL,
  `contact_person_name` text NOT NULL,
  `contact_person_address` text NOT NULL,
  `contact_person_mobile` text NOT NULL,
  `contact_person_email_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offering_table`
--

CREATE TABLE `offering_table` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `collection_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pastor_appreciation`
--

CREATE TABLE `pastor_appreciation` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `program_outline`
--

CREATE TABLE `program_outline` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tithe`
--

CREATE TABLE `tithe` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `welfare`
--

CREATE TABLE `welfare` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection_type`
--
ALTER TABLE `collection_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harvest`
--
ALTER TABLE `harvest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offering_table`
--
ALTER TABLE `offering_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pastor_appreciation`
--
ALTER TABLE `pastor_appreciation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_outline`
--
ALTER TABLE `program_outline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_event_id_fk` (`event_id`);

--
-- Indexes for table `tithe`
--
ALTER TABLE `tithe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tithe_member_id_fk` (`member_id`);

--
-- Indexes for table `welfare`
--
ALTER TABLE `welfare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `welfare_member_id_fk` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection_type`
--
ALTER TABLE `collection_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harvest`
--
ALTER TABLE `harvest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offering_table`
--
ALTER TABLE `offering_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pastor_appreciation`
--
ALTER TABLE `pastor_appreciation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program_outline`
--
ALTER TABLE `program_outline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tithe`
--
ALTER TABLE `tithe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `welfare`
--
ALTER TABLE `welfare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `program_outline`
--
ALTER TABLE `program_outline`
  ADD CONSTRAINT `program_event_id_fk` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

--
-- Constraints for table `tithe`
--
ALTER TABLE `tithe`
  ADD CONSTRAINT `tithe_member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `welfare`
--
ALTER TABLE `welfare`
  ADD CONSTRAINT `welfare_member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `welfare` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
