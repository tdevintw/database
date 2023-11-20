-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2023 at 12:25 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peoplepertask_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'logo design'),
(2, 'web development'),
(3, 'mobile app development'),
(4, 'graphic design'),
(5, 'data science'),
(6, 'machine learning'),
(7, 'UI/UX design'),
(8, 'digital marketing'),
(9, 'e-commerce'),
(10, 'game development'),
(11, 'cybersecurity'),
(12, 'networking'),
(13, 'cloud computing'),
(14, 'artificial intelligence'),
(15, 'virtual reality'),
(16, 'augmented reality'),
(17, 'blockchain'),
(18, 'social media'),
(19, 'content creation'),
(20, 'database administration');

-- --------------------------------------------------------

--
-- Table structure for table `freelances`
--

CREATE TABLE `freelances` (
  `freelance_id` int NOT NULL,
  `freelance_name` varchar(50) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `freelances`
--

INSERT INTO `freelances` (`freelance_id`, `freelance_name`, `skills`, `user_id`) VALUES
(1, 'John Freelancer', 'Web Development, UI/UX Design', 1),
(2, 'Alice Freelancer', 'Graphic Design, Illustration', 2),
(3, 'Bob Developer', 'JavaScript, React, Node.js', 3),
(4, 'Emma Designer', 'Photoshop, Illustrator, UI/UX', 4),
(5, 'Charlie Coder', 'Python, Django, Flask', 5),
(6, 'Sophia Artist', 'Digital Painting, Animation', 6),
(7, 'Michael Programmer', 'Java, Spring Boot', 7),
(8, 'Olivia UI/UX Designer', 'Figma, Sketch, Prototyping', 8),
(9, 'David Full-Stack Dev', 'HTML, CSS, JavaScript, Node.js', 9),
(10, 'Grace Digital Marketer', 'Social Media, SEO, Content Creation', 10),
(11, 'Leo Game Developer', 'Unity, C#, 3D Modeling', 11),
(12, 'Eva ML Enthusiast', 'Python, TensorFlow, Keras', 12),
(13, 'Alex Product Manager', 'Agile, Scrum, Product Development', 13),
(14, 'Hannah Cybersecurity Analyst', 'Network Security, Penetration Testing', 14),
(15, 'Isaac Physics Student', 'Mathematics, Scientific Computing', 15),
(16, 'Lily Front-End Developer', 'HTML, CSS, JavaScript, React', 16),
(17, 'Ryan Entrepreneur', 'Business Strategy, Startup Management', 17),
(18, 'Zoey Mobile App Developer', 'Swift, Kotlin, Flutter', 18),
(19, 'William Tech Blogger', 'Writing, Technology Trends', 19),
(20, 'Nina Virtual Assistant', 'Administrative Tasks, Customer Support', 20);

-- --------------------------------------------------------

--
-- Table structure for table `offres`
--

CREATE TABLE `offres` (
  `offre_id` int NOT NULL,
  `freelance_name` varchar(50) NOT NULL DEFAULT '',
  `price` int NOT NULL,
  `deadline` date NOT NULL,
  `freelance_id` int NOT NULL,
  `project_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `offres`
--

INSERT INTO `offres` (`offre_id`, `freelance_name`, `price`, `deadline`, `freelance_id`, `project_id`) VALUES
(1, 'John Freelancer', 500, '2023-12-01', 1, 1),
(2, 'Alice Freelancer', 700, '2023-12-05', 2, 2),
(3, 'Bob Developer', 800, '2023-12-10', 3, 3),
(4, 'Emma Designer', 400, '2023-11-25', 4, 4),
(5, 'Charlie Coder', 600, '2023-12-15', 5, 5),
(6, 'Sophia Artist', 300, '2023-11-30', 6, 6),
(7, 'Michael Programmer', 900, '2023-12-20', 7, 7),
(8, 'Olivia UI/UX Designer', 750, '2023-12-08', 8, 8),
(9, 'David Full-Stack Dev', 1200, '2023-12-18', 9, 9),
(10, 'Grace Digital Marketer', 550, '2023-12-02', 10, 10),
(11, 'Leo Game Developer', 1000, '2023-12-12', 11, 11),
(12, 'Eva ML Enthusiast', 850, '2023-12-14', 12, 12),
(13, 'Alex Product Manager', 950, '2023-12-22', 13, 13),
(14, 'Hannah Cybersecurity Analyst', 700, '2023-11-28', 14, 14),
(15, 'Isaac Physics Student', 600, '2023-12-05', 15, 15),
(16, 'Lily Front-End Developer', 800, '2023-12-16', 16, 16),
(17, 'Ryan Entrepreneur', 1100, '2023-12-24', 17, 17),
(18, 'Zoey Mobile App Developer', 900, '2023-12-19', 18, 18),
(19, 'William Tech Blogger', 400, '2023-12-03', 19, 19),
(20, 'Nina Virtual Assistant', 300, '2023-11-27', 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `descreption` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `tittle`, `descreption`, `category_id`, `sub_category_id`, `user_id`) VALUES
(1, 'Logo Redesign', 'Revamping the company logo for a modern look.', 1, 1, 1),
(2, 'E-commerce Website', 'Building an online store with payment integration.', 2, 2, 2),
(3, 'Mobile App Development', 'Creating a mobile app for task management.', 3, 3, 3),
(4, 'Website Redesign', 'Updating the website UI and adding new features.', 1, 1, 4),
(5, 'Graphic Design Portfolio', 'Compiling a portfolio showcasing graphic design work.', 4, 4, 5),
(6, 'Personal Blog', 'Starting a blog to share thoughts and experiences.', 2, 2, 6),
(7, 'Social Media Campaign', 'Running a digital marketing campaign on social media.', 5, 5, 7),
(8, 'Data Analysis Project', 'Analyzing and visualizing data sets for insights.', 3, 3, 8),
(9, 'Web Development Tutorial', 'Creating a tutorial series on web development.', 1, 1, 9),
(10, 'Game Development Project', 'Building a simple 2D game using Unity.', 4, 4, 10),
(11, 'Portfolio Website', 'Showcasing web development projects on a personal portfolio site.', 2, 2, 11),
(12, 'Machine Learning Experiment', 'Exploring machine learning algorithms for a specific application.', 3, 3, 12),
(13, 'AI Chatbot Development', 'Building an artificial intelligence-powered chatbot.', 5, 5, 13),
(14, 'Logo Design for Client', 'Designing a custom logo for a client.', 1, 1, 14),
(15, 'Interactive Web Application', 'Developing a dynamic and interactive web app.', 4, 4, 15),
(16, 'Personal Blog Redesign', 'Revamping the design and content of a personal blog.', 2, 2, 16),
(17, 'Database Optimization', 'Optimizing and tuning database performance.', 3, 3, 17),
(18, 'Social Media Marketing Campaign', 'Promoting a product through targeted social media marketing.', 5, 5, 18),
(19, 'E-commerce Website Expansion', 'Adding new features and products to an existing online store.', 1, 1, 19),
(20, 'Graphic Design for Event', 'Creating promotional materials for an upcoming event.', 4, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int NOT NULL,
  `sub_category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category_id`) VALUES
(1, 'Logo Design', 1),
(2, 'Web Development', 2),
(3, 'Mobile App Development', 3),
(4, 'Graphic Design', 1),
(5, 'Data Science', 4),
(6, 'Machine Learning', 2),
(7, 'UI/UX Design', 5),
(8, 'Digital Marketing', 3),
(9, 'E-commerce', 1),
(10, 'Game Development', 4),
(11, 'Cybersecurity', 2),
(12, 'Networking', 3),
(13, 'Cloud Computing', 5),
(14, 'Artificial Intelligence', 1),
(15, 'Virtual Reality', 4),
(16, 'Augmented Reality', 2),
(17, 'Blockchain', 3),
(18, 'Social Media', 5),
(19, 'Content Creation', 1),
(20, 'Database Administration', 4);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `Testimony_id` int NOT NULL,
  `comment` varchar(50) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`Testimony_id`, `comment`, `user_id`) VALUES
(1, 'Great experience working with this team!', 1),
(2, 'Highly recommend their services!', 2),
(3, 'Exceptional quality and professionalism.', 3),
(4, 'The project was delivered ahead of schedule.', 4),
(5, 'Outstanding communication throughout the process.', 5),
(6, 'Will definitely work with them again.', 6),
(7, 'Impressed with the attention to detail.', 7),
(8, 'Responsive and easy to collaborate with.', 8),
(9, 'They exceeded our expectations.', 9),
(10, 'Fantastic work on our mobile app!', 10),
(11, 'Creative solutions to complex problems.', 11),
(12, 'A pleasure to work with this talented team.', 12),
(13, 'Excellent customer service and support.', 13),
(14, 'Delivered a top-notch website design.', 14),
(15, 'Highly skilled and knowledgeable professionals.', 15),
(16, 'Helped us achieve our project goals.', 16),
(17, 'Great results on our data analysis project.', 17),
(18, 'Secured our network against potential threats.', 18),
(19, 'Efficiently managed our cloud computing resources.', 19),
(20, 'Valuable insights provided for our AI initiative.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `more_informations` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `email`, `more_informations`) VALUES
(1, 'yasser', 'ysr', 'aitelghariyasser@gmail.com', 'im 19 and i love programming'),
(2, 'john', 'pass123', 'john@example.com', 'A software developer'),
(3, 'alice', 'alicepass', 'alice@example.com', 'Studying computer science'),
(4, 'bob', 'bobpass', 'bob@example.com', 'Passionate about web development'),
(5, 'emma', 'emmapass', 'emma@example.com', 'Graphic designer and coder'),
(6, 'charlie', 'charliepass', 'charlie@example.com', 'Tech enthusiast'),
(7, 'sophia', 'sophiapass', 'sophia@example.com', 'AI researcher'),
(8, 'michael', 'michaelpass', 'michael@example.com', 'Data analyst'),
(9, 'olivia', 'oliviapass', 'olivia@example.com', 'UX/UI designer'),
(10, 'david', 'davidpass', 'david@example.com', 'Full-stack developer'),
(11, 'grace', 'gracepass', 'grace@example.com', 'Digital marketer'),
(12, 'leo', 'leopass', 'leo@example.com', 'Game developer'),
(13, 'eva', 'evapass', 'eva@example.com', 'Machine learning enthusiast'),
(14, 'alex', 'alexpass', 'alex@example.com', 'Product manager'),
(15, 'hannah', 'hannahpass', 'hannah@example.com', 'Cybersecurity analyst'),
(16, 'isaac', 'isaacpass', 'isaac@example.com', 'Physics student and coder'),
(17, 'lily', 'lilypass', 'lily@example.com', 'Front-end developer'),
(18, 'ryan', 'ryanpass', 'ryan@example.com', 'Entrepreneur and programmer'),
(19, 'zoey', 'zoeypass', 'zoey@example.com', 'Mobile app developer'),
(20, 'william', 'williampass', 'william@example.com', 'Tech blogger and podcaster');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `freelances`
--
ALTER TABLE `freelances`
  ADD PRIMARY KEY (`freelance_id`),
  ADD KEY `FK__users` (`user_id`);

--
-- Indexes for table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`offre_id`),
  ADD KEY `FK_offres_freelances` (`freelance_id`),
  ADD KEY `FK_offres_projects` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `FK_projects_users` (`user_id`),
  ADD KEY `FK_projects_sub_category` (`sub_category_id`),
  ADD KEY `FK_projects_category` (`category_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`),
  ADD KEY `FK_sub_category_category` (`category_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`Testimony_id`),
  ADD KEY `user_id_testemonial` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `FK_offres_freelances` FOREIGN KEY (`freelance_id`) REFERENCES `freelances` (`freelance_id`),
  ADD CONSTRAINT `FK_offres_projects` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `FK_projects_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FK_projects_sub_category` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`sub_category_id`),
  ADD CONSTRAINT `FK_projects_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `FK_sub_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD CONSTRAINT `user_id_testemonial` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*CRUD*/
/*
C: create
INSERT INTO `users` (`user_id`, `user_name`, `password`, `email`, `more_informations`) VALUES
(1, 'yasser', 'ysr', 'aitelghariyasser@gmail.com', 'im 19 and i love programming'),
(2, 'john', 'pass123', 'john@example.com', 'A software developer'),
R:read
select user_id 
from users 
where user_id < 5
U:update
update users
set user_id = "new_name_of_column"
D:delete
delete from users 
where user_id >5
*/
