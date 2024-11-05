-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2024 at 10:47 PM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kimerube_quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `author`, `category`) VALUES
(1, 'The only way to do great work is to love what you do.', 'Steve Jobs', 'Motivation'),
(2, 'Success is not final, failure is not fatal: It is the courage to continue that counts.', 'Winston Churchill', 'Motivation'),
(3, 'Don\'t watch the clock; do what it does. Keep going.', 'Sam Levenson', 'Motivation'),
(4, 'It always seems impossible until it\'s done.', 'Nelson Mandela', 'Motivation'),
(5, 'Your limitation - it\'s only your imagination.', 'Unknown', 'Motivation'),
(6, 'Push yourself, because no one else is going to do it for you.', 'Unknown', 'Motivation'),
(7, 'Great things never come from comfort zones.', 'Unknown', 'Motivation'),
(8, 'Dream it. Wish it. Do it.', 'Unknown', 'Motivation'),
(9, 'Success doesn\'t just find you. You have to go out and get it.', 'Unknown', 'Motivation'),
(10, 'The harder you work for something, the greater you\'ll feel when you achieve it.', 'Unknown', 'Motivation'),
(11, 'Dream bigger. Do bigger.', 'Unknown', 'Motivation'),
(12, 'Don\'t stop when you\'re tired. Stop when you\'re done.', 'Unknown', 'Motivation'),
(13, 'Wake up with determination. Go to bed with satisfaction.', 'Unknown', 'Motivation'),
(14, 'Do something today that your future self will thank you for.', 'Unknown', 'Motivation'),
(15, 'Little things make big days.', 'Unknown', 'Motivation'),
(16, 'It\'s going to be hard, but hard does not mean impossible.', 'Unknown', 'Motivation'),
(17, 'Don\'t wait for opportunity. Create it.', 'Unknown', 'Motivation'),
(18, 'Sometimes we\'re tested not to show our weaknesses, but to discover our strengths.', 'Unknown', 'Motivation'),
(19, 'The key to success is to focus on goals, not obstacles.', 'Unknown', 'Motivation'),
(20, 'Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.', 'Christian D. Larson', 'Motivation'),
(21, 'Love is composed of a single soul inhabiting two bodies.', 'Aristotle', 'Love'),
(22, 'Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.', 'Lao Tzu', 'Love'),
(23, 'I am who I am because of you. You are every reason, every hope, and every dream I\'ve ever had.', 'Nicholas Sparks', 'Love'),
(24, 'Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to arrive at its destination full of hope.', 'Maya Angelou', 'Love'),
(25, 'To love and be loved is to feel the sun from both sides.', 'David Viscott', 'Love'),
(26, 'Love is not about how many days, months, or years you\'ve been together. It\'s about how much you love each other every single day.', 'Unknown', 'Love'),
(27, 'The best thing to hold onto in life is each other.', 'Audrey Hepburn', 'Love'),
(28, 'In all the world, there is no heart for me like yours. In all the world, there is no love for you like mine.', 'Maya Angelou', 'Love'),
(29, 'You know it\'s love when all you want is that person to be happy, even if you\'re not part of their happiness.', 'Julia Roberts', 'Love'),
(30, 'I saw that you were perfect, and so I loved you. Then I saw that you were not perfect and I loved you even more.', 'Angelita Lim', 'Love'),
(31, 'Love is that condition in which the happiness of another person is essential to your own.', 'Robert A. Heinlein', 'Love'),
(32, 'You don\'t love someone because they\'re perfect, you love them in spite of the fact that they\'re not.', 'Jodi Picoult', 'Love'),
(33, 'We loved with a love that was more than love.', 'Edgar Allan Poe', 'Love'),
(34, 'True love stories never have endings.', 'Richard Bach', 'Love'),
(35, 'You don\'t marry someone you can live with — you marry someone you cannot live without.', 'Unknown', 'Love'),
(36, 'To love is nothing. To be loved is something. But to love and be loved, that\'s everything.', 'T. Tolis', 'Love'),
(37, 'A simple ‘I love you\' means more than money.', 'Frank Sinatra', 'Love'),
(38, 'Love is when the other person\'s happiness is more important than your own.', 'H. Jackson Brown, Jr.', 'Love'),
(39, 'In case you ever foolishly forget: I am never not thinking of you.', 'Virginia Woolf', 'Love'),
(40, 'I would rather spend one lifetime with you than face all the ages of this world alone.', 'J.R.R. Tolkien', 'Love'),
(41, 'In three words I can sum up everything I\'ve learned about life: it goes on.', 'Robert Frost', 'LifeLessons'),
(42, 'Life is not measured by the number of breaths we take, but by the moments that take our breath away.', 'Maya Angelou', 'LifeLessons'),
(43, 'Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.', 'Buddha', 'LifeLessons'),
(44, 'The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.', 'Ralph Waldo Emerson', 'LifeLessons'),
(45, 'Life is what happens when you\'re busy making other plans.', 'John Lennon', 'LifeLessons'),
(46, 'Difficulties in life are intended to make us better, not bitter.', 'Dan Reeves', 'LifeLessons'),
(47, 'The biggest adventure you can take is to live the life of your dreams.', 'Oprah Winfrey', 'LifeLessons'),
(48, 'To live is the rarest thing in the world. Most people exist, that is all.', 'Oscar Wilde', 'LifeLessons'),
(49, 'Good judgment comes from experience, and experience comes from bad judgment.', 'Rita Mae Brown', 'LifeLessons'),
(50, 'Life isn\'t about waiting for the storm to pass, it\'s about learning to dance in the rain.', 'Vivian Greene', 'LifeLessons'),
(51, 'The only impossible journey is the one you never begin.', 'Tony Robbins', 'LifeLessons'),
(52, 'In the end, we only regret the chances we didn\'t take.', 'Lewis Carroll', 'LifeLessons'),
(53, 'Don\'t let the fear of losing be greater than the excitement of winning.', 'Robert Kiyosaki', 'LifeLessons'),
(54, 'The journey of a thousand miles begins with one step.', 'Lao Tzu', 'LifeLessons'),
(55, 'Life is really simple, but we insist on making it complicated.', 'Confucius', 'LifeLessons'),
(56, 'Don\'t gain the world and lose your soul; wisdom is better than silver or gold.', 'Bob Marley', 'LifeLessons'),
(57, 'Our lives begin to end the day we become silent about things that matter.', 'Martin Luther King Jr.', 'LifeLessons'),
(58, 'Change your thoughts and you change your world.', 'Norman Vincent Peale', 'LifeLessons'),
(59, 'What lies behind us and what lies before us are tiny matters compared to what lies within us.', 'Ralph Waldo Emerson', 'LifeLessons'),
(60, 'You cannot change the direction of the wind, but you can adjust your sails to always reach your destination.', 'Jimmy Dean', 'LifeLessons'),
(61, 'Happiness is not something ready made. It comes from your own actions.', 'Dalai Lama', 'Happiness'),
(62, 'For every minute you are angry you lose sixty seconds of happiness.', 'Ralph Waldo Emerson', 'Happiness'),
(63, 'The most important thing is to enjoy your life—to be happy—it\'s all that matters.', 'Audrey Hepburn', 'Happiness'),
(64, 'Happiness is when what you think, what you say, and what you do are in harmony.', 'Mahatma Gandhi', 'Happiness'),
(65, 'Happiness depends upon ourselves.', 'Aristotle', 'Happiness'),
(66, 'The purpose of our lives is to be happy.', 'Dalai Lama', 'Happiness'),
(67, 'Count your age by friends, not years. Count your life by smiles, not tears.', 'John Lennon', 'Happiness'),
(68, 'Happiness is not a goal; it is a by-product.', 'Eleanor Roosevelt', 'Happiness'),
(69, 'The best way to cheer yourself is to try to cheer someone else up.', 'Mark Twain', 'Happiness'),
(70, 'Happiness is a journey, not a destination.', 'Buddha', 'Happiness'),
(71, 'Happiness often sneaks in through a door you didn\'t know you left open.', 'John Barrymore', 'Happiness'),
(72, 'It is not how much we have, but how much we enjoy, that makes happiness.', 'Charles Spurgeon', 'Happiness'),
(73, 'If you want to be happy, be.', 'Leo Tolstoy', 'Happiness'),
(74, 'The only joy in the world is to begin.', 'Cesare Pavese', 'Happiness'),
(75, 'Happiness is not in the mere possession of money; it lies in the joy of achievement, in the thrill of creative effort.', 'Franklin D. Roosevelt', 'Happiness'),
(76, 'True happiness arises, in the first place, from the enjoyment of oneself.', 'Joseph Addison', 'Happiness'),
(77, 'Happiness is not something you postpone for the future; it is something you design for the present.', 'Jim Rohn', 'Happiness'),
(78, 'Let us be grateful to people who make us happy; they are the charming gardeners who make our souls blossom.', 'Marcel Proust', 'Happiness'),
(79, 'Most folks are as happy as they make up their minds to be.', 'Abraham Lincoln', 'Happiness'),
(80, 'The secret of happiness is not in doing what one likes, but in liking what one does.', 'James M. Barrie', 'Happiness'),
(81, 'Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Albert Schweitzer', 'Success'),
(82, 'I find that the harder I work, the more luck I seem to have.', 'Thomas Jefferson', 'Success'),
(83, 'Success usually comes to those who are too busy to be looking for it.', 'Henry David Thoreau', 'Success'),
(84, 'Don\'t be afraid to give up the good to go for the great.', 'John D. Rockefeller', 'Success'),
(85, 'Opportunities don\'t happen, you create them.', 'Chris Grosser', 'Success'),
(86, 'Success is not how high you have climbed, but how you make a positive difference to the world.', 'Roy T. Bennett', 'Success'),
(87, 'The only place where success comes before work is in the dictionary.', 'Vidal Sassoon', 'Success'),
(88, 'Success is walking from failure to failure with no loss of enthusiasm.', 'Winston Churchill', 'Success'),
(89, 'The way to get started is to quit talking and begin doing.', 'Walt Disney', 'Success'),
(90, 'Success is not in what you have, but who you are.', 'Bo Bennett', 'Success'),
(91, 'The successful warrior is the average man, with laser-like focus.', 'Bruce Lee', 'Success'),
(92, 'Success is to be measured not so much by the position that one has reached in life as by the obstacles which he has overcome.', 'Booker T. Washington', 'Success'),
(93, 'Success is not just about what you accomplish in your life, it\'s about what you inspire others to do.', 'Unknown', 'Success'),
(94, 'To succeed in life, you need three things: a wishbone, a backbone, and a funny bone.', 'Reba McEntire', 'Success'),
(95, 'Success is often achieved by those who don\'t know that failure is inevitable.', 'Coco Chanel', 'Success'),
(96, 'The only limit to our realization of tomorrow will be our doubts of today.', 'Franklin D. Roosevelt', 'Success'),
(97, 'Success is the sum of small efforts, repeated day in and day out.', 'Robert Collier', 'Success'),
(98, 'What lies behind us and what lies before us are tiny matters compared to what lies within us.', 'Ralph Waldo Emerson', 'Success'),
(99, 'If you really look closely, most overnight successes took a long time.', 'Steve Jobs', 'Success'),
(100, 'Success is getting what you want. Happiness is wanting what you get.', 'Dale Carnegie', 'Success');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
