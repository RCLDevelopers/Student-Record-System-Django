-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 07:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add subjects', 8, 'add_subjects'),
(30, 'Can change subjects', 8, 'change_subjects'),
(31, 'Can delete subjects', 8, 'delete_subjects'),
(32, 'Can view subjects', 8, 'view_subjects'),
(33, 'Can add student', 9, 'add_student'),
(34, 'Can change student', 9, 'change_student'),
(35, 'Can delete student', 9, 'delete_student'),
(36, 'Can view student', 9, 'view_student');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(7, 'srsapp', 'course'),
(6, 'srsapp', 'customuser'),
(9, 'srsapp', 'student'),
(8, 'srsapp', 'subjects');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-18 13:49:33.018775'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-04-18 13:49:33.083864'),
(3, 'auth', '0001_initial', '2024-04-18 13:49:33.317796'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-04-18 13:49:33.372895'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-04-18 13:49:33.380872'),
(6, 'auth', '0004_alter_user_username_opts', '2024-04-18 13:49:33.389899'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-04-18 13:49:33.399877'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-04-18 13:49:33.402759'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-04-18 13:49:33.409700'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-04-18 13:49:33.417899'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-04-18 13:49:33.425159'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-04-18 13:49:33.437035'),
(13, 'auth', '0011_update_proxy_permissions', '2024-04-18 13:49:33.445047'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-04-18 13:49:33.453822'),
(15, 'srsapp', '0001_initial', '2024-04-18 13:49:33.752662'),
(16, 'admin', '0001_initial', '2024-04-18 13:49:33.903977'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-04-18 13:49:33.917939'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-18 13:49:33.928908'),
(19, 'sessions', '0001_initial', '2024-04-18 13:49:33.968413'),
(20, 'srsapp', '0002_course', '2024-04-18 13:49:33.981601'),
(21, 'srsapp', '0003_subjects', '2024-04-18 13:49:34.048864'),
(22, 'srsapp', '0004_alter_subjects_course_id', '2024-04-18 13:49:34.056845'),
(23, 'srsapp', '0005_alter_subjects_course_id_student', '2024-04-18 13:49:34.166625'),
(24, 'srsapp', '0006_student_roll_number', '2024-04-18 13:49:34.186571'),
(25, 'srsapp', '0007_student_nation', '2024-04-18 13:49:34.203309');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9xev975t5xdo4eaz5peqg1xlei1zh324', '.eJxVjMEOwiAQRP-FsyGFdhE8evcbyMIuUjWQlPZk_Hdp0oPeZubNzFt43Nbst8aLn0lchBKn3yxgfHLZAT2w3KuMtazLHORekQdt8laJX9ej-3eQseW-DjRMZwRDAzpwwDGmLnmEaBMQj9ZC7NZR0spYw8lpZxSokCbWoJT4fAECyDhB:1rxSAX:wmou6-QLcCuTHRbe2uDHIDdhxZOjK6mOtG7_alIKGCE', '2024-05-02 13:51:17.568140');

-- --------------------------------------------------------

--
-- Table structure for table `srsapp_course`
--

CREATE TABLE `srsapp_course` (
  `id` bigint(20) NOT NULL,
  `courseshortname` varchar(250) NOT NULL,
  `coursefullname` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `srsapp_course`
--

INSERT INTO `srsapp_course` (`id`, `courseshortname`, `coursefullname`, `created_at`, `updated_at`) VALUES
(1, 'MCA', 'Master of Computer Application', '2024-04-18 13:52:58.165270', '2024-04-18'),
(2, 'BCA', 'Bachelor of Computer Application', '2024-04-18 13:53:04.555915', '2024-04-18'),
(3, 'BA', 'Bachelor of Arts', '2024-04-18 13:53:11.499263', '2024-04-18'),
(4, 'MA', 'Master of Arts', '2024-04-18 13:53:19.404369', '2024-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `srsapp_customuser`
--

CREATE TABLE `srsapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `srsapp_customuser`
--

INSERT INTO `srsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$JmhK7RfVfevtlQX32RFQHf$tVZ6OY9JGFS2w0QudoLlwtKom3s/lU6Ovx+KkQralJk=', '2024-04-20 17:18:00.355088', 1, 'admin', 'Admin', 'user', 'admin@gmail.com', 1, 1, '2024-04-18 13:50:49.633037', 'media/profile_pic/password-manager.png');

-- --------------------------------------------------------

--
-- Table structure for table `srsapp_customuser_groups`
--

CREATE TABLE `srsapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `srsapp_customuser_user_permissions`
--

CREATE TABLE `srsapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `srsapp_student`
--

CREATE TABLE `srsapp_student` (
  `id` bigint(20) NOT NULL,
  `session` varchar(250) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `mname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `gname` varchar(250) NOT NULL,
  `ocp` varchar(250) NOT NULL,
  `income` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `ph` varchar(250) NOT NULL,
  `mobno` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `padd` longtext NOT NULL,
  `cadd` longtext NOT NULL,
  `class1` varchar(250) NOT NULL,
  `board1` varchar(250) NOT NULL,
  `roll1` varchar(250) NOT NULL,
  `pyear1` varchar(250) NOT NULL,
  `class2` varchar(250) NOT NULL,
  `board2` varchar(250) NOT NULL,
  `roll2` varchar(250) NOT NULL,
  `pyear2` varchar(250) NOT NULL,
  `sub1` varchar(250) NOT NULL,
  `marks1` int(11) NOT NULL,
  `fmarks1` int(11) NOT NULL,
  `sub2` varchar(250) NOT NULL,
  `marks2` int(11) NOT NULL,
  `fmarks2` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `course_id_id` bigint(20) NOT NULL,
  `subjects_id_id` bigint(20) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `nation` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `srsapp_student`
--

INSERT INTO `srsapp_student` (`id`, `session`, `fname`, `mname`, `lname`, `gender`, `gname`, `ocp`, `income`, `category`, `ph`, `mobno`, `email`, `country`, `state`, `city`, `padd`, `cadd`, `class1`, `board1`, `roll1`, `pyear1`, `class2`, `board2`, `roll2`, `pyear2`, `sub1`, `marks1`, `fmarks1`, `sub2`, `marks2`, `fmarks2`, `created_at`, `updated_at`, `course_id_id`, `subjects_id_id`, `roll_number`, `nation`) VALUES
(1, '2022-24', 'Meena Mohan', '', '', 'Female', 'Rajan Singh', 'Bussiness', '500000', 'obc', 'no', '7894561236', 'test@gmail.com', 'India', 'UP', 'Ghaziabad', 'O-908, GHU, Block-7', 'O-908, GHU, Block-7', '10th', 'CBSE', '401584', '2020', '12th', 'CBSE', '501017', '2022', 'Science', 350, 500, 'PCM', 412, 500, '2024-04-18 13:55:31.164783', '2024-04-18', 1, 1, 397097707, 'Hindu'),
(2, '2024-2027', 'Amit', 'Kumar', 'Singh', 'Male', 'Bal Dev singh', 'Govt Job', '700000', 'general', 'no', '1234567890', 'amitk@gmail.com', 'India', 'Delhi', 'New Delhi', 'A 123 New Delhi', 'A 123 New Delhi', '10', 'CBSE', '14621', '2022', '12', 'CBSE', '945454', '2024', 'Math', 82, 100, 'English', 75, 100, '2024-04-20 12:35:08.030891', '2024-04-20', 2, 2, 544235082, 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `srsapp_subjects`
--

CREATE TABLE `srsapp_subjects` (
  `id` bigint(20) NOT NULL,
  `subject1` varchar(250) NOT NULL,
  `subject2` varchar(250) NOT NULL,
  `subject3` varchar(250) NOT NULL,
  `subject4` varchar(250) NOT NULL,
  `subject5` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `course_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `srsapp_subjects`
--

INSERT INTO `srsapp_subjects` (`id`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`, `created_at`, `updated_at`, `course_id_id`) VALUES
(1, 'Electronics', 'Mathmetics', 'English', 'Java', 'OOP Concept', '2024-04-18 13:53:45.495078', '2024-04-18', 1),
(2, 'Electronics', 'Mathmetics', 'English', 'Management', 'OOP Concept', '2024-04-18 13:54:02.150901', '2024-04-18', 2),
(3, 'Political Science', 'History', 'Geography', 'Indian Philosophy', 'Journalism', '2024-04-18 13:54:17.197279', '2024-04-18', 3);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_srsapp_customuser_id` (`user_id`);

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
-- Indexes for table `srsapp_course`
--
ALTER TABLE `srsapp_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srsapp_customuser`
--
ALTER TABLE `srsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `srsapp_customuser_groups`
--
ALTER TABLE `srsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `srsapp_customuser_groups_customuser_id_group_id_eda68eb2_uniq` (`customuser_id`,`group_id`),
  ADD KEY `srsapp_customuser_groups_group_id_83b2e024_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `srsapp_customuser_user_permissions`
--
ALTER TABLE `srsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `srsapp_customuser_user_p_customuser_id_permission_0046b9a3_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `srsapp_customuser_us_permission_id_26edf59b_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `srsapp_student`
--
ALTER TABLE `srsapp_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `srsapp_student_course_id_id_7154afd1_fk_srsapp_course_id` (`course_id_id`),
  ADD KEY `srsapp_student_subjects_id_id_abf3b538_fk_srsapp_subjects_id` (`subjects_id_id`);

--
-- Indexes for table `srsapp_subjects`
--
ALTER TABLE `srsapp_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `srsapp_subjects_course_id_id_d6527cbb_fk_srsapp_course_id` (`course_id_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `srsapp_course`
--
ALTER TABLE `srsapp_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `srsapp_customuser`
--
ALTER TABLE `srsapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `srsapp_customuser_groups`
--
ALTER TABLE `srsapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `srsapp_customuser_user_permissions`
--
ALTER TABLE `srsapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `srsapp_student`
--
ALTER TABLE `srsapp_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `srsapp_subjects`
--
ALTER TABLE `srsapp_subjects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_srsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `srsapp_customuser` (`id`);

--
-- Constraints for table `srsapp_customuser_groups`
--
ALTER TABLE `srsapp_customuser_groups`
  ADD CONSTRAINT `srsapp_customuser_gr_customuser_id_c7600ea1_fk_srsapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `srsapp_customuser` (`id`),
  ADD CONSTRAINT `srsapp_customuser_groups_group_id_83b2e024_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `srsapp_customuser_user_permissions`
--
ALTER TABLE `srsapp_customuser_user_permissions`
  ADD CONSTRAINT `srsapp_customuser_us_customuser_id_311be9cc_fk_srsapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `srsapp_customuser` (`id`),
  ADD CONSTRAINT `srsapp_customuser_us_permission_id_26edf59b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `srsapp_student`
--
ALTER TABLE `srsapp_student`
  ADD CONSTRAINT `srsapp_student_course_id_id_7154afd1_fk_srsapp_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `srsapp_course` (`id`),
  ADD CONSTRAINT `srsapp_student_subjects_id_id_abf3b538_fk_srsapp_subjects_id` FOREIGN KEY (`subjects_id_id`) REFERENCES `srsapp_subjects` (`id`);

--
-- Constraints for table `srsapp_subjects`
--
ALTER TABLE `srsapp_subjects`
  ADD CONSTRAINT `srsapp_subjects_course_id_id_d6527cbb_fk_srsapp_course_id` FOREIGN KEY (`course_id_id`) REFERENCES `srsapp_course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
