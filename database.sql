CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Password VARCHAR(255), 
    IsAdmin BOOLEAN,
    IsWriter BOOLEAN,
    IsBanned BOOLEAN
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT UNIQUE, 
    AuthorName VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL 
);

CREATE TABLE Tags (
    TagID INT PRIMARY KEY AUTO_INCREMENT,
    TagName VARCHAR(100) NOT NULL 
);

CREATE TABLE Articles (
    ArticleID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(150) NOT NULL, 
    Content TEXT NOT NULL,
    CreationDate DATE NOT NULL,
    AuthorID INT,
    CategoryID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE ArticleTags (
    ArticleID INT,
    TagID INT,
    PRIMARY KEY (ArticleID, TagID),
    FOREIGN KEY (ArticleID) REFERENCES Articles(ArticleID),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID)
);


INSERT INTO Users (Username, Email, Password, IsAdmin, IsWriter, IsBanned) VALUES 
('admin', 'admin@cooltech.blog', 'admin', 1, 0, 0),
('ElsieWatts', 'ElsieWatts@example.com', 'author1', 0, 1, 0),
('JeanetteHolt', 'JeanetteHolt2@example.com', 'author2', 0, 1, 0),
('PaulineNorman', 'PaulineNorman@example.com', 'author3', 0, 1, 0),
('ConnorDiaz', 'ConnorDiaz@example.com', 'author4', 0, 1, 0),
('user', 'user@example.com', 'user', 0, 0, 0),
('bannedUser', 'banneduser@example.com', 'banned', 0, 0, 1);


INSERT INTO Authors (UserID, AuthorName) VALUES
(2, 'Elsie Watts'),
(3, 'Jeanette Holt'), 
(4, 'Pauline Norman'),
(5, 'Connor Diaz');

INSERT INTO Categories (CategoryName) VALUES
('Tech news'),
('Software reviews'),
('Hardware reviews'),
('Opinion pieces');

INSERT INTO Tags (TagName) VALUES
('Programming'),
('Tech News'),
('Software Reviews'),
('Hardware Reviews'),
('Opinion Pieces'),
('Tech Updates'),
('Software Insights'),
('Gadget Reviews'),
('Tech Opinions'),
('Hardware Spotlight'),
('Software Spotlight'),
('Tech In Depth'),
('Hardware Trends'),
('Opinion Editorial'),
('Software Insider'),
('Hardware Exploration'),
('Tech Perspectives'),
('Quantum Computing'),
('Windows 11'),
('Graphics Cards'),
('Artificial Intelligence');


INSERT INTO Articles (Title, Content, CreationDate, AuthorID, CategoryID) VALUES
("The Rise of Quantum Computing", 
 "In the ever-evolving landscape of technology, quantum computing is emerging as a game-changer. Quantum computers leverage the principles of quantum mechanics to perform complex computations at speeds unimaginable with traditional computers. This breakthrough has the potential to revolutionize various industries, from cryptography to drug discovery.
 Quantum bits or qubits, the fundamental units of quantum information, can exist in multiple states simultaneously, allowing for parallel processing on an unprecedented scale. Researchers and tech giants alike are investing heavily in the development of quantum hardware and algorithms, aiming to harness the immense computational power that quantum computers offer.
 As quantum computing progresses, it brings forth exciting possibilities and challenges. The race to achieve quantum supremacy, where a quantum computer outperforms the most powerful classical computers, intensifies. Ethical considerations surrounding quantum computing, such as its impact on data security and privacy, also come to the forefront.
 Stay tuned for the latest updates on the quantum computing revolution as we explore the cutting-edge advancements and their implications in the world of technology.Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum quidem nisi praesentium perspiciatis ad, eaque neque odio laborum voluptas molestias veritatis, delectus ut aperiam, minus perferendis excepturi assumenda unde amet nesciunt magni? Eaque consectetur eum veritatis necessitatibus porro fuga sed vel, non ipsam exercitationem facilis quisquam repudiandae quaerat incidunt eius quas doloribus iure praesentium saepe ad architecto doloremque. Quae saepe vel sapiente nam maiores totam optio qui! A repellendus pariatur quis, dolorem autem quisquam non quos doloremque quas animi eligendi libero repudiandae quidem eaque iusto voluptatum recusandae necessitatibus iure voluptatibus obcaecati delectus exercitationem porro ipsum sint! Consequatur quaerat itaque laudantium dolore vero harum! Voluptatum nihil nesciunt a amet expedita praesentium soluta id recusandae quas, officiis illum molestias neque, aperiam placeat odio ipsa asperiores optio fugiat enim beatae, inventore sunt reprehenderit nisi. Culpa ratione, odio cum, nostrum et consequuntur eum modi quibusdam suscipit illum, placeat ex! Labore dolor iure nihil quae fugiat distinctio? Cum laborum reiciendis nobis exercitationem atque ipsa minus eum velit error quidem rerum deserunt, obcaecati sit soluta illum sed pariatur corrupti tempore delectus. Voluptas vel repudiandae perferendis quis, error odio quibusdam incidunt eaque autem iure non quisquam dolorem commodi voluptate, eum sint rerum dolore expedita numquam pariatur tempore.",
 '2024-02-05', 1, 1),
 
("Exploring the New Features of Windows 11", 
 "Microsoft recently unveiled its latest operating system, Windows 11, bringing a fresh and modern interface along with several new features. From the redesigned Start menu to enhanced gaming capabilities, Windows 11 promises an improved user experience. In this review, we delve into the key aspects of the new operating system, exploring its performance, user interface, and compatibility with existing software.
 Whether you're a casual user or a power user, our comprehensive review aims to provide insights into the strengths and potential shortcomings of Windows 11. Join us on this journey as we navigate through the latest software offerings and evaluate their impact on the digital landscape. Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi maiores amet tempora enim odit dolor quos dolorem suscipit. Nulla a at commodi velit reprehenderit assumenda ea accusantium rerum totam, numquam, illum temporibus omnis pariatur error quaerat cum doloremque id. Tenetur inventore fugiat fuga necessitatibus sint dolores? Ipsum, ratione voluptatum, quis minus doloremque hic, est numquam officia quia itaque facilis reiciendis. Iure, repellat atque. Aliquam mollitia corrupti necessitatibus, veritatis ducimus libero rem cum nemo dignissimos neque perspiciatis deserunt quibusdam esse consequuntur aut aspernatur vel a enim vitae ratione nihil! Magnam facere architecto deserunt ex animi. Neque eveniet suscipit nostrum odit incidunt cupiditate ipsa perspiciatis eaque autem alias magnam molestias eos numquam rem maiores, dolores odio fugit non fuga soluta consectetur aut, in culpa? Ipsum officiis excepturi quaerat officia placeat praesentium cupiditate adipisci dolorum, perferendis sunt repudiandae cumque beatae sed ab porro fuga eligendi inventore culpa suscipit doloremque in, laboriosam aspernatur, modi quos? Sunt consectetur ut aperiam et rem laboriosam fuga a modi dolore eum, error repudiandae eveniet quae id, enim delectus accusamus cupiditate suscipit, reprehenderit officia possimus. Doloremque eos, distinctio fuga optio voluptates consequuntur suscipit sit accusamus exercitationem debitis dolor officia. Soluta, ut repellat vitae aspernatur delectus culpa maxime veritatis quod est, quisquam minima harum ratione fugiat at autem explicabo illum eligendi aut corrupti vero eum officiis inventore. Veritatis amet reiciendis, eveniet pariatur esse reprehenderit nostrum quod, culpa aliquam placeat neque recusandae cupiditate adipisci voluptates dolorem unde aspernatur, nobis consectetur voluptate iusto. Dolores ipsam excepturi at officia porro repudiandae magnam quae.",
 '2024-02-05',2, 2),

("Unveiling the Power of the Latest Graphics Cards", 
 "The world of graphics cards is witnessing a revolution with the release of cutting-edge models that promise unparalleled performance in gaming and graphic-intensive applications. In this hardware review, we take a close look at the latest graphics cards from leading manufacturers, examining their specifications, benchmarks, and real-world performance.
 From ray tracing capabilities to high refresh rates, these graphics cards redefine the gaming experience. Whether you're a professional designer or an avid gamer, our in-depth analysis aims to guide you in making informed decisions when choosing the right graphics card for your needs. Stay tuned as we uncover the power and potential of these technological marvels. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit quae quas saepe voluptatum ratione? Dolore repellat beatae culpa assumenda. Similique rerum cupiditate illum corrupti enim a, provident voluptatem, sint quos aliquid natus aut! Reprehenderit incidunt magnam rerum obcaecati iure odio quidem fuga eos enim quis, numquam sapiente inventore suscipit, adipisci illo doloremque dolor commodi modi itaque omnis officiis est. Quos libero incidunt reiciendis assumenda, repellat alias non ab suscipit, hic atque temporibus odit eum iusto earum quae ratione labore neque et nisi debitis dolorem dolore quaerat blanditiis! Quas consequuntur quae distinctio eum laborum qui culpa aut sit necessitatibus in suscipit id consectetur excepturi, at illo eos obcaecati doloremque iste ex? Explicabo similique deserunt, ipsam possimus, deleniti fugiat, ut ratione consectetur minima fuga quos. Odit magnam illum voluptatibus ut? Incidunt nostrum corrupti repellendus, et eius recusandae cum libero optio eligendi beatae, facilis, animi voluptas similique itaque modi odit aliquam dolorum? Voluptate eligendi repellendus perspiciatis quas rerum voluptas aliquam. Id molestias accusantium vero error aspernatur maxime provident quod vel atque quasi, illo itaque tenetur in ratione placeat eveniet obcaecati optio est repellendus earum? Possimus reprehenderit libero, hic animi quaerat facere voluptates voluptatibus. Dicta illo impedit provident necessitatibus eum temporibus quidem harum nemo? Repellendus, eum! Quas dignissimos voluptates aliquid ducimus suscipit sunt vitae minus accusantium, alias quidem. Laudantium repellendus nostrum repellat aspernatur corrupti sint, libero praesentium voluptates, fuga animi quae. Amet cumque sed culpa ipsum tempora fugiat minus explicabo rerum a sapiente ab, unde velit porro esse exercitationem placeat provident ipsa quae natus!",
 '2024-02-05', 3, 3),

("The Role of Artificial Intelligence in Shaping the Future", 
 "As artificial intelligence continues to advance, questions and debates about its role in society become increasingly important. In this opinion piece, we explore the multifaceted impact of AI on various aspects of our lives, from job automation to ethical considerations. Is AI a boon or a threat? Join the conversation as we delve into the complexities surrounding the integration of artificial intelligence into our rapidly changing world. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea autem maxime commodi accusamus eos magnam, unde expedita similique doloribus veniam velit laudantium eius nemo rem! Velit asperiores voluptatum laborum nesciunt modi exercitationem totam aliquam culpa recusandae nam? Aliquid numquam possimus facere reiciendis animi officia quibusdam impedit nihil, ea mollitia vitae autem distinctio tenetur maxime pariatur dolor odit asperiores maiores aliquam sint error? Tempora commodi error asperiores autem dolor in, omnis maiores consectetur cupiditate itaque provident culpa, debitis quidem soluta eius aperiam ea corporis! Eveniet harum quos quae pariatur. Quo in dolores quaerat quod? Recusandae laboriosam voluptas neque temporibus velit doloribus eos fuga voluptatum facilis, itaque delectus, aliquid alias consequatur sequi nisi quidem voluptatibus nesciunt. Amet consectetur, ratione sequi ducimus reiciendis quod? Quas repellendus laboriosam provident nihil iure necessitatibus numquam, nisi error tempora inventore labore deleniti tenetur in culpa ad illo. Magnam odio distinctio animi iure quaerat quam eaque? Non tempore officia recusandae vel. Dolore, dicta aspernatur dolorem soluta debitis saepe nisi aliquam neque magnam error aperiam voluptatem nihil qui perspiciatis distinctio maiores hic voluptatum laudantium cumque! Consequatur adipisci neque sapiente hic reiciendis dicta inventore dolore atque amet, dignissimos eligendi dolorum cupiditate aspernatur quidem natus eveniet repudiandae, quaerat at veritatis perspiciatis quos molestias exercitationem. Ullam consequuntur neque illo eos dolorem eaque perspiciatis, sit quisquam accusamus beatae facere, quis fugiat vero blanditiis nobis nemo totam, rerum sapiente sequi non officiis! Animi, sequi sit quia dolore eligendi velit minus! Est culpa beatae dicta ex error voluptatum! Pariatur libero officiis debitis provident deserunt at.
",
 '2024-02-06', 4, 4),

("Advancements in Augmented Reality Technology", 
 "The world of augmented reality (AR) is experiencing remarkable progress, with new developments pushing the boundaries of what's possible. From enhanced user interfaces to immersive gaming experiences, AR technology is evolving rapidly. In this tech news piece, we explore the latest advancements in AR, highlighting key innovations and their potential impact on various industries.
 Augmented reality is not just limited to entertainment; it's making waves in fields such as healthcare, education, and manufacturing. Join us as we uncover the transformative power of AR and how it is poised to reshape the way we interact with the digital and physical worlds. Stay informed about the latest trends and breakthroughs in AR technology as we navigate through this exciting era of innovation. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae exercitationem non nisi incidunt aliquam ut doloremque unde fugiat, ipsam, sunt, doloribus ab culpa. Eius recusandae sed quam ullam expedita nisi mollitia, cumque id placeat blanditiis incidunt est enim culpa sunt ratione dolore quidem! Exercitationem, et, corrupti illum sequi ab voluptate a sed iusto harum dignissimos minima inventore voluptatem quisquam aspernatur mollitia ipsa enim in. Libero sunt voluptates sapiente vitae nobis vero nesciunt ipsa corporis, doloribus quas quasi aperiam fugit amet molestiae quisquam non! Repudiandae enim, perferendis magni explicabo molestias quo eos aspernatur! Enim explicabo architecto hic quibusdam facere sequi saepe ab iusto sapiente, laudantium laborum repellendus, rerum expedita aperiam fugit cumque totam ex nisi dolore corporis. Quis nisi laudantium fuga. Ex eligendi impedit ea, et esse repellendus nam distinctio! Accusantium, odit quis commodi velit suscipit in et laborum corrupti amet sunt. Aut, ab at! Temporibus, commodi provident cupiditate totam voluptates consequuntur porro nisi quis. Iure ea odio alias quis voluptate, at perspiciatis repudiandae repellendus. Repudiandae minima dolor repellendus inventore officia? Provident architecto veritatis nisi odit amet molestiae sit, molestias quasi maiores esse necessitatibus cum ad aperiam rerum saepe commodi beatae enim natus cupiditate eaque modi iure libero autem quo! Labore suscipit a vero velit maiores inventore animi optio perferendis numquam debitis quos aperiam, praesentium nobis cupiditate odio eos ut consectetur placeat odit sunt molestias voluptate consequatur dolore cum! Voluptatem neque cum mollitia repellendus doloremque provident officiis, alias, aperiam inventore accusamus expedita? Odit, distinctio similique labore ea mollitia quis est repellat.",
 '2024-02-06', 2, 1);

INSERT INTO ArticleTags (ArticleID, TagID) VALUES
(1, 2), (1, 6), (1, 18),
(2, 3), (2, 5), 
(3, 4), (3, 10), 
(4, 21);

-- Drop all tables
-- drop tables users, articletags, authors, articles, categories, tags