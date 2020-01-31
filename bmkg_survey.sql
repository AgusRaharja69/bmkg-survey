-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2020 at 08:23 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmkg_survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$CY3Up5ivYHpO$qs4argBuvIzSjR/V0SQBIuv9lAJYPC8/4ayu+FfSDc8=', '2020-01-17 20:03:06.022771', 0, 'agus', '', '', '', 0, 1, '2020-01-16 14:44:58.227950'),
(3, 'pbkdf2_sha256$120000$zudG5iSInY5I$2sdKZhNR8hTWtKK51gOGXzGhu5PuLvlTVRRiwa5aKTw=', '2020-01-31 09:05:29.159645', 0, 'admin', '', '', '', 0, 1, '2020-01-17 20:18:07.943737');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-16 14:43:06.527683'),
(2, 'auth', '0001_initial', '2020-01-16 14:43:07.646692'),
(3, 'admin', '0001_initial', '2020-01-16 14:43:07.907992'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-16 14:43:07.919961'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-16 14:43:07.944892'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-16 14:43:08.077538'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-16 14:43:08.179266'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-16 14:43:08.269026'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-16 14:43:08.280994'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-16 14:43:08.344824'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-16 14:43:08.350808'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-16 14:43:08.361784'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-16 14:43:08.541297'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-16 14:43:08.651004'),
(15, 'sessions', '0001_initial', '2020-01-16 14:43:08.714834');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('91r5ugrohyy86v0r15nt3eettmg28ije', 'YTg3YmM2ZmJhYjAwZWU3MTQwMGQ3YjFjMzc4MDUzMWY1MjBhNGE0ODp7fQ==', '2020-02-01 04:31:53.024170'),
('bl9w6iz7obdnxd3xlq059fhus6n77786', 'YjYxZWEyMDI0YmY3ZTYyOWYwODUwOWYxMWIwMjJlZjdhZTBhZWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGJjYjZhZDdkZTJlZGQyMmU3YjAyNWU2ODA5ZjNjYmY4ZGI3Yzk2In0=', '2020-01-31 13:21:23.534608'),
('i2f6uh47u13q65aa5fe9lf3dy4t39tk7', 'MzNhYTUzOTJhN2JlOGRlMDZhNjViOWViMDg1NmI0YTNmMTA5ZjVjNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNWQ5ZjY0MDA0M2I1NDRiOTc0MGEyNzNmODYyMzQ4MGM5OTEwNzZlIn0=', '2020-01-31 20:44:48.392431'),
('omlwsbx8pdiyebpk8qedvfpqotuolmgt', 'YTg3YmM2ZmJhYjAwZWU3MTQwMGQ3YjFjMzc4MDUzMWY1MjBhNGE0ODp7fQ==', '2020-02-01 04:27:46.431427'),
('umtu04olamquzkt7tbg9izrqdzw46idd', 'YjYxZWEyMDI0YmY3ZTYyOWYwODUwOWYxMWIwMjJlZjdhZTBhZWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZGJjYjZhZDdkZTJlZGQyMmU3YjAyNWU2ODA5ZjNjYmY4ZGI3Yzk2In0=', '2020-01-31 19:11:35.131285'),
('wswlbrxretw2262ciey0eivfkqbbr9zg', 'MzNhYTUzOTJhN2JlOGRlMDZhNjViOWViMDg1NmI0YTNmMTA5ZjVjNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNWQ5ZjY0MDA0M2I1NDRiOTc0MGEyNzNmODYyMzQ4MGM5OTEwNzZlIn0=', '2020-02-14 09:05:29.170616');

-- --------------------------------------------------------

--
-- Table structure for table `survey_data`
--

CREATE TABLE `survey_data` (
  `id` int(11) NOT NULL,
  `NIP` text NOT NULL,
  `U1` int(11) NOT NULL,
  `U2` int(11) NOT NULL,
  `U3` int(11) NOT NULL,
  `U4` int(11) NOT NULL,
  `U5` int(11) NOT NULL,
  `U6` int(11) NOT NULL,
  `U7` int(11) NOT NULL,
  `U8` int(11) NOT NULL,
  `U9` int(11) NOT NULL,
  `U10` int(11) NOT NULL,
  `U11` int(11) NOT NULL,
  `U12` int(11) NOT NULL,
  `U13` int(11) NOT NULL,
  `U14` int(11) NOT NULL,
  `date` date NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_data`
--

INSERT INTO `survey_data` (`id`, `NIP`, `U1`, `U2`, `U3`, `U4`, `U5`, `U6`, `U7`, `U8`, `U9`, `U10`, `U11`, `U12`, `U13`, `U14`, `date`, `code`) VALUES
(1, '7647658', 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 1, 1, '2020-01-31', '436772'),
(2, '757', 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, '2020-01-31', '436772'),
(3, '87867665', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, '2020-01-31', '436772');

-- --------------------------------------------------------

--
-- Table structure for table `survey_koresponden`
--

CREATE TABLE `survey_koresponden` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `NIP` text NOT NULL,
  `sex` text NOT NULL,
  `age` int(50) NOT NULL,
  `study` text NOT NULL,
  `job` text NOT NULL,
  `code` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_koresponden`
--

INSERT INTO `survey_koresponden` (`id`, `name`, `NIP`, `sex`, `age`, `study`, `job`, `code`, `date`) VALUES
(1, 'uygkugi', '7657565897', 'L', 56, 'D1', 'PNS', '', '2020-01-31'),
(2, 'blablajhgkj', '76986990', 'P', 67, 'D2', 'BUMN', '436772', '2020-01-31'),
(3, 'asdfg', '3456', 'L', 56, 'D2', 'PNS', '436772', '2020-01-31'),
(4, 'asdfg', '7647658', 'P', 56, 'D2', 'BUMN', '436772', '2020-01-31'),
(5, 'uygkugi', '757', 'L', 67, 'D2', 'BUMN', '436772', '2020-01-31'),
(6, 'fwe', '87867665', 'L', 56, 'S2', 'PNS', '436772', '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `survey_link`
--

CREATE TABLE `survey_link` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `code` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_link`
--

INSERT INTO `survey_link` (`id`, `username`, `code`, `date`) VALUES
(1, 'admin', '436772', '2020-01-31'),
(2, 'admin', '436772', '2020-01-31'),
(3, 'admin', '436772', '2020-01-31'),
(4, 'admin', '436766', '2020-01-31'),
(5, 'admin', '436766', '2020-01-31'),
(6, 'admin', '436772', '2020-01-31'),
(7, 'admin', '436772', '2020-01-31'),
(8, 'admin', '436766', '2020-01-31'),
(9, 'admin', '436772', '2020-01-31'),
(10, 'admin', '436772', '2020-01-31'),
(11, 'admin', '436772', '2020-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `survey_subwil`
--

CREATE TABLE `survey_subwil` (
  `id` int(50) NOT NULL,
  `kode` text NOT NULL,
  `wilayah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_subwil`
--

INSERT INTO `survey_subwil` (`id`, `kode`, `wilayah`) VALUES
(1, '436766', 'SEKRETARIAT UTAMA BMKG'),
(2, '436772', 'STASIUN METEOROLOGI MARITIM TANJUNG PRIOK - JAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `survey_wilayah`
--

CREATE TABLE `survey_wilayah` (
  `id` int(50) NOT NULL,
  `kode` text NOT NULL,
  `wilayah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_wilayah`
--

INSERT INTO `survey_wilayah` (`id`, `kode`, `wilayah`) VALUES
(1, '01', 'DKI JAKARTA'),
(2, '02', 'JAWA BARAT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `survey_data`
--
ALTER TABLE `survey_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_koresponden`
--
ALTER TABLE `survey_koresponden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_link`
--
ALTER TABLE `survey_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_subwil`
--
ALTER TABLE `survey_subwil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_wilayah`
--
ALTER TABLE `survey_wilayah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `survey_data`
--
ALTER TABLE `survey_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `survey_koresponden`
--
ALTER TABLE `survey_koresponden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `survey_link`
--
ALTER TABLE `survey_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `survey_subwil`
--
ALTER TABLE `survey_subwil`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_wilayah`
--
ALTER TABLE `survey_wilayah`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
