-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2019 at 08:49 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rating` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `rating`) VALUES
(1, 'Mychi Darko', 'mickdd22@gmail.com', '4.7'),
(2, 'Seth Duodu', 'seth@gmail.com', '4.6'),
(3, 'sammy', '', '0.0'),
(4, 'setho', '', '0.0'),
(5, 'Joel Dubois', '', '0.0'),
(6, 'Girls who code', '', '0.0'),
(7, 'James Clear', '', '0.0'),
(8, 'Tech Crunch', '', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `likes` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `note`, `author`, `description`, `likes`, `created_at`) VALUES
(1, 'Silver Wednesday', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur placeat enim, animi reiciendis beatae voluptatem fugiat quod quasi velit iusto repellat corrupti voluptas. Similique suscipit fugit atque maxime facere,', 'Mychi Darko', 'A story of little Tanya who dreams to be the first teenager on the moon....', '122', '2019-10-01 03:00:00.0'),
(2, 'Slim Framework Funndamentals', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur placeat enim, animi reiciendis beatae voluptatem fugiat quod quasi velit iusto repellat corrupti voluptas. Similique suscipit fugit atque maxime facere,', 'Seth Duodu', 'A comprehensive guide to the slim framework', '56', '2019-10-02 11:22:33.1'),
(13, 'Rising Sun', 'fgeyiu dgq2ywt 7yi hur3yt7 y8i h3ugrt7y 2oi7wy8oi2h 789y2 r2 12r2ory 219ru2r7t922 2 2yu2 2', 'Mychi Darko', 'a nice book', '0', '2019-10-09 18:32:31.9'),
(19, 'The Kings', 'lorem ipsum dolor sit amet is an example of a dummy phrase....it is so far the most common dummy phrase in history. It was invented when a newspaper used this as a placeholder', 'Mychi Darko', 'A band in the 20th century trying to make a name for themselves', '0', '2019-10-10 02:06:11.4'),
(20, 'md test', '## hello\nThis is a markdown editor\n>  this is a block quote', 'sammy', 'testing markdown', '0', '2019-10-10 02:20:51.3'),
(23, 'Sun and moon', 'This is a story told of old, by warriors, passed down through generations: the story of **Ku** and **Ka**, the two greatest warriors from the Kudji and Kanji clans, sworn enemies who fell in love on the battlefield. Opposed by all, and never a moment of peace, will Ku and Ka be able to live their happy lives?', 'setho', 'A story of two lovers from different clans bound to each other by their deep hatred', '1024', '2019-10-10 02:37:00.5'),
(24, 'Egyptian Mythology: Ra', 'Ra was the sun god, often regarded as the most important of all Egyptian gods. Ra emerged from the chaos at the beginning of time and created the world. As well as being a god, Ra also ruled as Pharoah. Many Egyptian rulers claimed they were descended from Ra, to give credence to their seat on the throne. According to the myth, Ra eventually began to grow weary of his duties. This made his people question whether he should be their ruler. When Ra learned this, he sent his daughter, the Eye of Ra, to kill those who doubted him. She went on a rampage and Ra took pity on the humans. He tricked her into getting so drunk she couldn\'t continue killing. After this, Ra left the earth for the sky.', 'Mychi Darko', 'A tale of the god Ra', '0', '2019-10-10 04:54:10.1'),
(25, 'Greek Mythology: Poseidon', 'Poseidon was the god of the sea, son of Kronos and Rhea. He became ruler of the sea when the universe was divided after the fall of the Titans. Poseidon was bad-tempered and when he became angry, he would cause earthquakes. He managed to upset even Hades, the ruler of the underworld. Poseidon was most often depicted with his trident, and sometimes riding a horse **(he is sometimes claimed to be the creator of horses)**.\n\n*Natural disasters still leave us flummoxed, even today. So, how could earthquakes be explained in ancient times? An angry god who shook the earth is one way.*', 'Mychi Darko', 'A tale of the water god', '0', '2019-10-10 04:57:03.4'),
(26, 'Izanagi and Izanami', 'Izanagi and Izanami are [Shinto](#) creator gods. Izanagi and Izanami created the Japanese islands and the deities of the sea, wind, mountain, river, trees, and rice. When Izanami gave birth to a fire god, it fatally burned her.\n\nIzanagi resolved to have his wife returned to him and sought her out in the underworld. Izanami could not return because she\'d eaten \'the dark food,\' but said she would beg the gods to let her go. After waiting a long time Izanagi lit a torch to go find her and when he saw her rotting body he fled and sealed the door to the underworld. Izanami then vowed to kill 1,000 people each day and Izanagi promised to create 1,500 to replace them.\n\n*This myth would once have been used to explain how everything came into being and the cycle of life and death.*', 'Mychi Darko', 'Japanese gods', '0', '2019-10-10 05:08:23.9'),
(27, 'Myths, Stories & Reality', 'On one level, myths are simply stories. This introductory essay explains the features common to all stories, stressing that while the storyteller\'s words and the images they conjure up may be fleeting, their stories are often long-lived, deeply influencing the flesh-and-blood individuals who hear them, and thus by extension also the social groups to which individuals belong. However, understanding what is distinctive about mythic storytelling (often collectively referred to as \"mythology\") also requires grasping what distinguishes myths from other types of stories. This essay thus begins by clarifying this distinction, as well as the relationship between different types of stories.\n\nOverall, I invite readers to go beyond thinking of myths in terms of static beliefs about the unseen. Many people associate the term \"belief\" with static declarations to which particular groups uniformly adhere, and about which authoritative sources can easily inform us. In reality, however, many beliefs are held unconsciously, and most develop and transform over time. Considering the storytelling context of myth draws attention to the dynamic process of telling, listening, and reflection that continually shapes and reshapes people\'s beliefs about the unseen powers and forces at work in their daily lives.\n\n## Mythic Stories, Past & Present\n\nIn the modern period, with the growing influence of rational scientific views of the world, the term \"myth\" has more and more come to denote stories that are false, and this is the most common use of the word today. Yet this definition of the term assumes that contemporary methods of scientific analysis have the final word on what is and is not real. Mythic storytellers both past and present, on the other hand, have typically assumed that reality is too complex to grasp by means of any one method of analysis, and so have relied heavily on stories to provide a glimpse of that complexity. For them, stories about mythic worlds were in an important sense more real than accounts of observable facts. Such storytellers admitted that the beings inhabiting mythic worlds, and the events taking place in them, were directly visible only to a few, uniquely endowed visionaries. Yet they also pointed out hidden connections between invisible mythic realities and the ordinary people, places, things and events that they and their audiences daily experienced.\n\nMythic storytellers of ancient Greece, for example, told about ancient events like the Trojan war, and about supernatural beings like Zeus and other deities believed to dwell on remote Mount Olympus. Such storytellers and their Greek audiences certainly realized that they could not see Trojan heroes and Olympian deities. Yet they seem to have felt that stories like those of Troy and the Olympians were secretly connected to the familiar realities of warfare, and to the unseen influence of supernatural powers on their daily lives. The ancient peoples of the Middle East, likewise, told stories now recorded in the Hebrew Bible, New Testament, and Qur\'an. Most surely admitted to themselves that they could not directly see God, angels or the demons depicted in those stories; yet they felt strongly the mysterious presence of divine and demonic beings during both inward prayer and outward acts of service. This course includes many examples of similar stories from other cultures.\n\nMythic traditions are not simply a thing of the past, however. Many Jews, Christians and Muslims still report experiencing divine mystery in their lives. (Due to the primarily negative use of the term \"myth,\" followers of these traditions typically reject this term as a label for their stories; yet if we consider the richer meaning of the word, the Bible and Qur\'an are indeed mythical in establishing connections between the human world and a mysterious otherworldly beings.) The primary sources assigned for this course, moreover, offer a glimpse of other culture\'s ancient stories as they not only survive, but also transform and grow in the modern period. Such contemporary mythic thinking also manifests to some degree in contemporary American culture, whether through immigration of assimilation of mythic stories from these other cultures.\n\nEven in modern secular culture, furthermore, storytellers continue to establish connections between what most of us experience daily and the deeper mystery of the reality that encompasses everything. Realist types of science fiction connect the world we see today to the as yet invisible yet possible world of the future. (Consider \"Star Wars vs. Star Trek,\" Gene Rodenberry\'s dramatization of the difference between realist and fantasy genres of science fiction.) Mythic storytelling also continues to evolve in efforts to explore the spiritual realities often hidden by ordinary perception, drawing on the science of quantum physics and neurology, as illustrated vividly in the film \"What the Bleep Do We Know?\" Finally, storytelling is also a powerful force used to draw attention to the web of interconnections that make up our global community, and to the momentous challenges that our species will face in coming generations (see for example the film \"Baraka: a World Beyond Words\"). Stories told about contemporary issues such as climate change and peak oil do fit the deeper meaning of the word \"myth,\" since they connect visible daily experience to invisible social, geological and economic forces that influence our lives.', 'Joel Dubois', 'Myths, Stories & Reality', '0', '2019-10-10 05:15:53.8'),
(28, 'ðŸ’¥5 common mistakes of any junior dev at their first jobðŸ’¥', '1. Forgetting to back up: Your best friend will always be command + s and learn the basic of gitðŸ’»\n2. Improper code formatting: packages for code format is essential, always ask which ones are being used or your code will be rejectedðŸ’­\n3. Learn to properly name your variables and functions : make life easier for other devs so they can totally understand what each thing is doing inside your code ðŸ™ŒðŸ»\n4. Thinking you know it all: There is always space to learn new things about each languageðŸš€\n5. Confidence should be at 100000000%, be able to receive feedback and learn from it, donâ€™t get stuck with hard feelings.âš ï¸ Ps . Great devs are the ones that know their thing but also know how to share it and inspire others.âš ï¸âš ï¸âš ï¸âš ï¸ ', 'Girls who code', '5 common mistakes of any junior dev at their first job', '0', '2019-10-10 05:18:19.0'),
(29, 'Lifeology', 'Life is all about fruitfulness. \n#### 3 THINGS EVERYONE MUST HAVE\n- life\n- liberty\n- property\n\n**Genesis 1:28**...God blessed moi, I wasn\'t cursed. Blessing ~ Fruitfulness. There\'s something that only I can doðŸ™‚âœŒï¸\n\nWhat I\'m wishing for....it\'s already in me ðŸ™‚ðŸ”¥ I WILL BE FRUITFUL. There\'s something in me greater than anything that has come against me.\n\n**Genesis 26:12-14**....Isaac sowed in famine...and he reaped\nDon\'t tell people what you\'re working on....let them see the end results. People now specialise in discouraging others.\n\nWhatever you\'re doing in life, do it well....for both good and bad things. One of the most dangerous things in life is \"following the crowd\" instead, we should listen to the voice of God.\n\n**Isaiah 1:19, John 15:5**\nI am not born again to be in bondage again\n\n**Ephesians 6:12**\nBe you, be original.....hype your own stuffâœŒï¸\n\n#### EVIDENCE OF FRUITFULNESS\nNumbers 13:23....the spies game back with bad news...only 2 came with good news, but they came along with evidence\nIf you subject yourself to people\'s opinions, you\'ll never be fruitful. \nFruitfulness must be seen.\n\n**Luke 5:5**\n', 'Mychi Darko', 'Church Notes', '0', '2019-10-10 05:31:48.1'),
(30, 'Remember', 'â€œWe either make ourselves miserable, or we make ourselves strong. The amount of work is the same.â€Carlos Castaneda\n\nâ€œSelf-esteem is the ability to see yourself as a flawed individual and still hold yourself in regard.â€Esther Perel\n\nâ€œIf you hear a voice within you say \'you cannot paint,\' then by all means paint and that voice will be silenced.â€Vincent Van Gogh\n\nâ€œWhen you talk, you are only repeating what you already know. But if you listen, you may learn something new.â€Dalai Lama\n\nâ€œThere are two primary choices in life: to accept conditions as they exist, or accept the responsibility for changing them.â€Denis Waitley\n\nâ€œKindness is more important than wisdom, and the recognition of this is the beginning of wisdom.â€Theodore Isaac Rubin\n\nâ€œThe cave you fear to enter holds the treasure that you seek.â€Joseph Campbell\n\nâ€œAll that is gold does not glitter, not all those who wander are lost; the old that is strong does not wither, deep roots are not reached by the frost.â€J.R.R. Tolkien\n\nâ€œDiscipline is the bridge between goals and accomplishmentâ€Jim Rohn\n\nâ€œToo many people overvalue what they are not and undervalue what they are.â€Malcolm S. Forbes\n\nâ€œIt is more important to know where you are going than to get there quickly. Do not mistake activity for achievement.â€Isocrates\n\nâ€œThe walls we build around us to keep sadness out also keeps out the joy.â€Jim Rohn\n\nâ€œIf you want to make your dreams come true, the first thing you have to do is wake up.â€J.M. Power\n\nâ€œEveryone you will ever meet knows something you don\'t.â€Bill Nye\n\nâ€œBetter to do something imperfectly than to do nothing flawlessly.â€Robert H. Schuller\n\nâ€œThe mind is everything. What you think you become.â€Buddha\n\nâ€œDo what you dream of doing even while you\'re afraid.â€Arianna Huffington', 'Mychi Darko', 'Quote Collection', '0', '2019-10-10 05:36:48.1'),
(31, 'The Best Books', '1. Best Nonfiction Books\nThese are the best nonfiction books to read, listed by category.\n\n- Best Art and Creativity Books\n- Best Biographies and Memoirs\n- Best Business Books\n- Best Fitness Books\n- Best History Books\n- Best Philosophy Books\n- Best Psychology Books\n- Best Science Books\n- Best Self-Help Books\n- Best Writing Books\n\n2. Best Fiction Books\nThese are the best fiction books to read, listed by category.\n\n- Best Novels of All-Time\n- Best Fantasy Books\n- Best Mystery Books\n\n3. Book Summaries\nFor many of the nonfiction books I read, I publish my personal notes and write a three sentence summary of the main ideas in the book. You can read all of these notes on my book summaries page.\n\n4. How to Read More Books\nI use a simple process to read a lot of books. If youâ€™re interested in reading books more consistently, you may find it useful.', 'James Clear', 'Recommended Reading List', '0', '2019-10-10 05:43:09.0'),
(32, 'Facebook Politics', 'Ensuring politicians in the 2020 election stay truthful is hard work, so **Facebook**  has decided itâ€™s going to sit this one out.\n\nJoe Bidenâ€™s campaign team sent a letter to CEO Mark Zuckerberg, COO Sheryl Sandberg and global elections policy chief Katie Harbath that essentially called on the company to take down a Trump campaign ad that made debunked claims regarding the Biden familyâ€™s relationship with Ukraine. Facebook responded to that letter today with their own letter to Biden saying that the companyâ€™s policies prevented it from making judgment calls on the veracity of speech in political advertisements. *The New York Times* has a full run-down of the situation.\n\nFacebook isnâ€™t alone in this manner; Fox News is remaining fair and balanced on the issue as well. CNN refused to run the ad.\n\nPolitical campaigns are messy, so Americaâ€™s largest content company â€” with more content moderators than any publication in the country â€” is leaving it to the free press to debunk what itâ€™s getting paid to broadcast. But itâ€™s not that Facebook wants to keep raking in stupid amounts of advertising dollars. Itâ€™s that the company is grounded in a â€œfundamental belief in free expression,â€ they say.\n\nHereâ€™s a quote from the companyâ€™s letter to Bidenâ€™s team: â€œOur approach is grounded in Facebookâ€™s fundamental belief in free expression, respect for the democratic process, and the belief that, in mature democracies with a free press, political speech is already arguably the most scrutinized speech there is.â€\n\nIâ€™m sorry, what? Facebookâ€™s â€œrespect for the democratic processâ€ should raise eyebrows given how its products have been used in some highly publicized scenarios. But how does a platform thatâ€™s been abused so much to the detriment of democratic processes feel like it deserves to rattle that phrase off as another PR talking point?\n\nHereâ€™s the rest of the letter:\n\n\n**Donie O\'Sullivan âœ”**\n@donie\n\nHere\'s the letter Facebook sent the [@JoeBiden] campaign explaining why it allowed Trump to run Facebook ads with false allegations about the VP and Ukraine -- [@sarahmucha] reports. \n[cnn.com/2019/10/08/pol](http://www.cnn.com/2019/10/08/politics/facebook-biden-ad-request-trump-ukraine/index.html) â€¦\n\nView image on TwitterView image on Twitter\n3:58 AM - Oct 9, 2019\n247 people are talking about this\nIf Facebook just wants to allow politicians to spout mistruths and conspiracy theories without fact checks on its platforms as status updates from their personal pages, then some of these claims could be taken more seriously, but Facebook is getting paid to push these messages to its users. Itâ€™s algorithmically deciding where these messages go based on parameters set by the campaigns via a system it designed.', 'Tech Crunch', 'facebook ', '0', '2019-10-10 05:51:11.6');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `created_at` datetime(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `rating`, `created_at`) VALUES
(1, 'Romance', 'romance stories and books', '4.2', '2019-10-08 02:23:03.6'),
(2, 'fiction', 'interesting made-up stories', '4.7', '2019-10-08 04:13:11.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
