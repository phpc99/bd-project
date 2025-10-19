PRAGMA foreign_keys = ON;

INSERT INTO Region (idRegion, country, city) VALUES 
(1, 'United States', 'Los Angeles'),
(2, 'United Kingdom', 'London'),
(3, 'Japan', 'Tokyo'),
(4, 'Canada', 'Toronto'),
(5, 'Australia', 'Sydney'),
(6, 'Germany', 'Berlin'),
(7, 'France', 'Paris'),
(8, 'Italy', 'Rome'),
(9, 'Brazil', 'Rio de Janeiro'),
(10, 'India', 'Mumbai'),
(11, 'South Korea', 'Seoul'),
(12, 'Mexico', 'Mexico City');

INSERT INTO Facebook (idFacebook, key) VALUES 
(1, 'fb_auth_key_123xyza'),
(2, 'fb_auth_key_456abcb'),
(3, 'fb_auth_key_789defc'),
(4, 'fb_auth_key_101ghid'),
(5, 'fb_auth_key_112jkle'),
(6, 'fb_auth_key_131mnof'),
(7, 'fb_auth_key_415pqrg'),
(8, 'fb_auth_key_161stuh'),
(9, 'fb_auth_key_718vwxi'),
(10, 'fb_auth_key_192yzj'),
(11, 'fb_auth_key_202abck'),
(12, 'fb_auth_key_212defl');

INSERT INTO User (idUser, username, email, password, idRegion, dateOfBirth, joinDate, idFacebook, userType) VALUES 
(1, 'taylor_swift_fan', 'swiftie@email.com', 'hash', 1, '1995-03-15', '2024-01-01', 1, 'PREMIUM'),
(2, 'rock_lover', 'rock@email.com', 'hash', 2, '1990-07-22', '2024-02-15', 2, 'FREE'),
(3, 'jazz_master', 'jazz@email.com', 'hash', 3, '1988-11-30', '2024-03-20', 3, 'PREMIUM'),
(4, 'emma_davis', 'emma.davis@email.com', 'hash', 1,'1995-06-15','2024-09-01', NULL,'FREE'),
(5,'james_wilson','james.wilson@email.com','hash', 2,'1991-12-03','2024-09-15', NULL,'FREE'),
(6,'sophia_lee','sophia.lee@email.com','hash', 3,'1993-08-22','2024-10-01', NULL,'PREMIUM'),
(7,'pop_fanatic_1','popfan1@email.com','hash1', 4,'1992-03-15','2024-11-01', 4,'FREE'),
(8,'classic_rocker','classic@email.com','hash2', 5,'1985-07-22','2024-12-01', 5,'PREMIUM'),
(9,'hiphop_head','hiphop@email.com','hash3', 6,'1990-05-18','2025-01-01', 6,'FREE'),
(10,'kpop_star','kpopstar@email.com','hash4', 7,'1998-09-25','2025-02-01', 7,'PREMIUM'),
(11,'indie_chillout','indiechill@email.com','hash5', 8,'1987-04-18','2025-03-01', 8,'FREE'),
(12,'electro_beats_fanatic','electrobeats@email.com','hash6', 9,'1994-07-14','2025-04-01', 9,'PREMIUM');

INSERT INTO Artist (idArtist, name, debutYear, bio, verified) VALUES 
(1, 'Taylor Swift', 2006, 'American singer-songwriter', true),
(2, 'Ed Sheeran', 2011, 'British singer-songwriter', true),
(3, 'BTS', 2013, 'South Korean boy band', true),
(4, 'Adele', 2008, 'British singer-songwriter', true),
(5, 'Drake', 2009, 'Canadian rapper and singer', true),
(6, 'Ariana Grande', 2013, 'American singer and actress', true),
(7, 'The Weeknd', 2010, 'Canadian singer and songwriter', true),
(8, 'Billie Eilish', 2015, 'American singer-songwriter', true),
(9, 'Kendrick Lamar', 2011, 'American rapper and songwriter', true),
(10, 'Bruno Mars', 2010, 'American singer-songwriter and record producer', true),
(11, 'Rihanna', 2005, 'Barbadian singer and actress', true),
(12, 'Lady Gaga', 2008, 'American singer-songwriter and actress', true);

INSERT INTO Album (idAlbum, idArtist, name, releaseYear) VALUES 
(1, 1, 'Midnights', 2022),
(2, 2, 'Divide', 2017),
(3, 3, 'Proof', 2022),
(4, 4, '30', 2021),
(5, 5, 'Scorpion', 2018),
(6, 6, 'Positions', 2020),
(7, 7, 'After Hours', 2020),
(8, 8, 'Happier Than Ever', 2021),
(9, 9, 'DAMN.', 2017),
(10, 10, '24K Magic', 2016),
(11, 11, 'ANTI', 2016),
(12, 12, 'Chromatica', 2020);

INSERT INTO Genre (idGenre, name) VALUES 
(1, 'Pop'),
(2, 'Rock'),
(3, 'Hip Hop'),
(4, 'Jazz'),
(5, 'K-pop'),
(6, 'R&B'),
(7, 'Electronic'),
(8, 'Country'),
(9, 'Classical'),
(10,'Reggae'),
(11,'Blues'),
(12,'Folk'),
(13,'Alternative');

INSERT INTO Song (idSong, name, duration, releaseDate) VALUES 
(1, 'Anti-Hero', '00:03:20', '2022-10-21'),  -- Taylor Swift
(2, 'Lavender Haze', '00:03:22', '2022-10-21'),  -- Taylor Swift
(3, 'Bejeweled', '00:03:14', '2022-10-21'),  -- Taylor Swift
(4, 'Shape of You', '00:03:53', '2017-01-06'),  -- Ed Sheeran
(5, 'Perfect', '00:04:23', '2017-03-03'),  -- Ed Sheeran
(6, 'Castle on the Hill', '00:04:21', '2017-01-06'),  -- Ed Sheeran
(7, 'Yet To Come', '00:03:13', '2022-06-10'),  -- BTS
(8, 'Dynamite', '00:03:19', '2020-08-21'),  -- BTS
(9, 'Butter', '00:02:44', '2021-05-21'),  -- BTS
(10, 'Easy On Me', '00:03:44', '2021-10-15'),  -- Adele
(11, 'Hello', '00:04:55', '2015-10-23'),  -- Adele
(12, 'Rolling in the Deep', '00:03:48', '2010-11-29'),  -- Adele
(13, 'Gods Plan', '00:03:19', '2018-01-19'),
(14, 'In My Feelings', '00:03:37', '2018-07-10'),
(15, 'Hotline Bling', '00:04:27', '2015-07-31'),
(16, 'Thank U, Next', '00:03:27', '2018-11-03'),
(17, '7 Rings', '00:02:58', '2019-01-18'),
(18, 'Positions', '00:02:52', '2020-10-23'),
(19, 'Blinding Lights', '00:03:20', '2019-11-29'),
(20, 'Save Your Tears', '00:03:35', '2020-08-09'),
(21, 'Cant Feel My Face', '00:03:35', '2015-06-08'),
(22, 'Bad Guy', '00:03:14', '2019-03-29'),
(23, 'Everything I Wanted', '00:04:05', '2019-11-13'),
(24, 'Happier Than Ever', '00:04:58', '2021-07-30'),
(25, 'HUMBLE.', '00:02:57', '2017-03-30'),
(26, 'Alright', '00:03:39', '2015-06-30'),
(27, 'DNA.', '00:03:06', '2017-04-14'),
(28, 'Uptown Funk', '00:04:30', '2014-11-10'),
(29, '24K Magic', '00:03:46', '2016-10-07'),
(30, 'Just the Way You Are', '00:03:41', '2010-07-20'),
(31, 'Umbrella', '00:04:36', '2007-03-29'),
(32, 'Diamonds', '00:03:45', '2012-09-26'),
(33, 'Work', '00:03:39', '2016-01-27'),
(34, 'Poker Face', '00:03:57', '2008-09-26'),
(35, 'Bad Romance', '00:04:54', '2009-10-23'),
(36, 'Shallow', '00:03:36','2018-09-27');

INSERT INTO Lyrics (idLyrics, text, provider) VALUES 
(1, 'Its me, hi, Im the problem its me...', 'Musixmatch'),
(2, 'The club isnt the best place to find a lover...', 'Genius'),
(3, 'Was it honestly the best...', 'Musixmatch'),
(4, 'Gods plan, Gods plan...', 'Genius'),  -- Drake
(5, 'Kiki, do you love me? Are you riding?...', 'Musixmatch'),  -- Drake
(6, 'You used to call me on my cell phone...', 'Genius'),  -- Drake
(7, 'Thought Id end up with Sean...', 'Musixmatch'),  -- Ariana Grande
(8, 'Breakfast at Tiffanys and bottles of bubbles...', 'Genius'),  -- Ariana Grande
(9, 'Heaven sent you to me...', 'Musixmatch'),  -- Ariana Grande
(10, 'I said ooh, Im blinded by the lights...', 'Genius'),  -- The Weeknd
(11, 'Save your tears for another day...', 'Musixmatch'),  -- The Weeknd
(12, 'And I know shell be the death of me...', 'Genius');  -- The Weeknd


UPDATE Song SET idLyrics = 1 WHERE idSong = 1;  -- Anti-Hero
UPDATE Song SET idLyrics = 2 WHERE idSong = 2;  -- Shape of You
UPDATE Song SET idLyrics = 3 WHERE idSong = 3;  -- Yet To Come
UPDATE Song SET idLyrics = 4 WHERE idSong = 4;
UPDATE Song SET idLyrics = 5 WHERE idSong = 5;
UPDATE Song SET idLyrics = 6 WHERE idSong = 6;
UPDATE Song SET idLyrics = 7 WHERE idSong = 7;
UPDATE Song SET idLyrics = 8 WHERE idSong = 8;
UPDATE Song SET idLyrics = 9 WHERE idSong = 9;
UPDATE Song SET idLyrics = 10 WHERE idSong = 10;
UPDATE Song SET idLyrics = 11 WHERE idSong = 11;
UPDATE Song SET idLyrics = 12 WHERE idSong = 12;



INSERT INTO Playlist (idPlaylist, name, idUser, createdDate) VALUES 
(1, 'My Favorites', 1, '2023-05-15'),
(2, 'Workout Mix', 2, '2023-06-20'),
(3, 'Chill Vibes', 3, '2023-07-01'),
(4, 'Party Hits', 4, '2023-08-05'),
(5, 'Relaxing Tunes', 5, '2023-09-10'),
(6, 'Road Trip', 6, '2023-10-15'),
(7, 'Study Session', 1, '2023-11-20'),
(8, 'Throwback Jams', 2, '2023-12-25'),
(9, 'Morning Boost', 3, '2024-01-05'),
(10,'Evening Chill', 4,'2024-02-14'),
(11,'Dance Party', 5,'2024 - 03 - 22'),
(12,'Indie Discoveries', 6,'2024 - 04 - 30');


INSERT INTO PlaylistSong (idPlaylist, idSong) VALUES 
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),   -- Adding songs to new playlists
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9 ,9),
(10 ,10),
(11 ,11),
(12 ,12);

INSERT INTO SongGenre (idSong, idGenre) VALUES 
(1, 1),  -- Anti-Hero (Pop)
(2, 1),  -- Lavender Haze (Pop)
(3, 1),  -- Bejeweled (Pop)
(4, 1),  -- Shape of You (Pop)
(5, 1),  -- Perfect (Pop)
(6, 1),  -- Castle on the Hill (Pop)
(7, 5),  -- Yet To Come (K-pop)
(8, 5),  -- Dynamite (K-pop)
(9, 5),  -- Butter (K-pop)
(10, 1), -- Easy On Me (Pop)
(11, 1), -- Hello (Pop)
(12, 1), -- Rolling in the Deep (Pop)
(13, 3), -- God's Plan (Hip Hop)
(14, 3), -- In My Feelings (Hip Hop)
(15, 3), -- Hotline Bling (Hip Hop)
(16, 1), -- Thank U, Next (Pop)
(17, 1), -- 7 Rings (Pop)
(18, 1), -- Positions (Pop)
(19, 6), -- Blinding Lights (R&B)
(20, 6), -- Save Your Tears (R&B)
(21, 6), -- Can't Feel My Face (R&B)
(22, 1), -- Bad Guy (Pop)
(23, 1), -- Everything I Wanted (Pop)
(24, 1), -- Happier Than Ever (Pop)
(22, 13), -- Bad Guy (Alternative)
(23, 13), -- Everything I Wanted (Alternative)
(24, 13), -- Happier Than Ever (Alternative)
(25, 3), -- HUMBLE. (Hip Hop)
(26, 3), -- Alright (Hip Hop)
(27, 3), -- DNA. (Hip Hop)
(28, 1), -- Uptown Funk (Pop)
(29, 1), -- 24K Magic (Pop)
(30, 1), -- Just the Way You Are (Pop)
(31, 6), -- Umbrella (R&B)
(31, 1), -- Umbrella (Pop)
(32, 6), -- Diamonds 
(32, 1), -- Diamonds 
(33, 6), -- Work 
(33,1), -- Work 
(34,1),-- Poker Face(Pop) 
(35,1),-- Bad Romance(Pop) 
(36,2),-- Shallow(Rock)
(36,1);-- Shallow(Pop)

INSERT INTO AlbumSong (idAlbum, idSong, songNr) VALUES 
(1, 1, 1),  -- Midnights - Anti-Hero
(1, 2, 2),  -- Midnights - Lavender Haze
(1, 3, 3),  -- Midnights - Bejeweled
(2, 4, 1),  -- Divide - Shape of You
(2, 5, 2),  -- Divide - Perfect
(2, 6, 3),  -- Divide - Castle on the Hill
(3, 7, 1),  -- Proof - Yet To Come
(3, 8, 2),  -- Proof - Dynamite
(3, 9, 3),  -- Proof - Butter
(4, 10, 1), -- 30 - Easy On Me
(4, 11, 2), -- 30 - Hello
(4, 12, 3); -- 30 - Rolling in the Deep

INSERT INTO ArtistSong (idArtist, idSong) VALUES 
(1, 1),  -- Taylor Swift - Anti-Hero
(1, 2),  -- Taylor Swift - Lavender Haze
(1, 3),  -- Taylor Swift - Bejeweled
(2, 4),  -- Ed Sheeran - Shape of You
(2, 5),  -- Ed Sheeran - Perfect
(2, 6),  -- Ed Sheeran - Castle on the Hill
(3, 7),  -- BTS - Yet To Come
(3, 8),  -- BTS - Dynamite
(3, 9),  -- BTS - Butter
(4, 10), -- Adele - Easy On Me
(4, 11), -- Adele - Hello
(4, 12); -- Adele - Rolling in the Deep

INSERT INTO LikedArtist (idUser, idArtist) VALUES 
(1, 1),   -- User 1 likes Taylor Swift
(1, 2),   -- User 1 likes Ed Sheeran
(2, 1),   -- User 2 likes Taylor Swift
(2, 3),   -- User 2 likes BTS
(3, 2),   -- User 3 likes Ed Sheeran
(3, 4),   -- User 3 likes Adele
(4, 5),   -- User 4 likes Drake
(4, 6),   -- User 4 likes Ariana Grande
(5, 7),   -- User 5 likes The Weeknd
(5, 8),   -- User 5 likes Billie Eilish
(6, 9),   -- User6likes Kendrick Lamar 
(6, 10);-- User6likes Bruno Mars 

INSERT INTO Merchandise (idMerchandise, idArtist, CD, vinyl, shirt) VALUES 
(1, 1, true, true, true),
(2, 2, true, true, false),
(3, 3, true, false, true),
(4, 4, true, false, false),  -- Adele
(5, 5, true, true, true),    -- Drake
(6, 6, false, true, true),   -- Ariana Grande
(7, 7, true, false, false),  -- The Weeknd
(8, 8, false, true, false),  -- Billie Eilish
(9, 9, true, true, false),   -- Kendrick Lamar
(10, 10,true,false,true),    -- Bruno Mars
(11, 11,true,true,false ),   -- Rihanna 
(12, 12,false,true,true );-- Lady Gaga 

INSERT INTO Concert (idConcert, idArtist, date, time, country, city, theater, ticketPrice) VALUES 
(1 ,1 ,'2024 - 07 - 15 ','20:00:00 ','United States ','New York ','Madison Square Garden ',150.00),
(2 ,2 ,'2024 - 08 - 20 ','19:30:00 ','United Kingdom ','London ','O2 Arena ',89.99),
(3 ,3 ,'2024 - 09 - 10 ','18:00:00 ','Japan ','Tokyo ','Tokyo Dome ',120.00),
(4 ,4 ,'2024 - 07 - 25 ','21:00:00 ','United States ','Los Angeles ','Staples Center ',130.00),-- Adele 
 (5 ,5 ,'2024 - 08 - 15 ','20:30:00 ','Canada ','Toronto ','Scotiabank Arena ',110.00),-- Drake 
 (6 ,6 ,'2024 - 09 - 05 ','19:00:00 ','United States ','Miami ','American Airlines Arena ',95.50),-- Ariana Grande 
 (7 ,7 ,'2024 - 10 - 01 ','22:00:00 ','Germany ','Berlin','Mercedes-Benz Arena ',140.75),-- The Weeknd 
 (8 ,8 ,'2024 - 11 - 10','20:45:00','Australia','Sydney','Sydney Opera House',125.25),-- Billie Eilish 
 (9 ,9 ,'2024-12-05','19:15:00','United States','Chicago','United Center',100.50),-- Kendrick Lamar 
 (10 ,10,'2024-12-20','21:30:00','Brazil','Rio de Janeiro','Maracanã Stadium',115.75),-- Bruno Mars 
 (11 ,11,'2025-01-15','20:00:00','France','Paris','AccorHotels Arena',135.60),-- Rihanna 
 (12 ,12,'2025-02-25','19:45:00','Italy','Rome','Colosseum',145.90);-- Lady Gaga 

INSERT INTO FacebookFriend (idUser, idUser2, friendName) VALUES 
(1 ,2 ,'Rock Enthusiast '),
(2 ,3 ,'Jazz Master '),
(1 ,3 ,'Jazz Master '),
(2 ,1 ,'Swiftie '),
(3 ,1 ,'Swiftie '),
(3 ,2 ,'Rock Lover '),
(4 ,5 ,'James Wilson '),
(5 ,6 ,'Sophia Lee '),
(6 ,4 ,'Emma Davis '),
(7 ,5 ,'James Wilson '),
(8 ,6 ,'Sophia Lee '),
(9 ,4 ,'Emma Davis ');

INSERT INTO UserFriend (idUser, idUser2, friendName) VALUES 
(1, 3, 'Jazz Master'),
(2, 1, 'Swiftie'),
(3, 2, 'Rock Lover'),
(4, 5, 'James Wilson'),
(5, 6, 'Sophia Lee'),
(6, 4, 'Emma Davis'),
(1, 4, 'Emma Davis'),
(2, 5, 'James Wilson'),
(3, 6, 'Sophia Lee'),
(4, 1, 'Taylor Swift Fan'),
(5, 2, 'Rock Lover'),
(6, 3, 'Jazz Master');

INSERT INTO ListeningHistory (idUser, idSong, listenDate, listenTime) VALUES 
(1, 1, '2024-01-15', '14:30:00'),
(2, 2, '2024-01-15', '16:45:00'),
(3, 3, '2024-01-15', '18:20:00'),
(1, 2, '2024-01-16', '10:00:00'),
(2, 3, '2024-01-16', '11:30:00'),
(3, 1, '2024-01-16', '13:45:00'),
(4, 1, '2024-01-17', '09:15:00'),
(5, 2, '2024-01-17', '12:50:00'),
(6, 3, '2024-01-17', '15:30:00'),
(1, 3,'2024-01-18','14:00:00'), 
(2 ,1,'2024-01-18','16:20:00'), 
(3 ,2 ,'2024-01-18','18:45:00');

INSERT INTO FreeUser (idFreeUser, idUser, numberOfSkinChanges) VALUES 
(1 ,2 ,5 ),
(2 ,4 ,3 ),
(3 ,5 ,4 ),
(4 ,6 ,2 ),
(5 ,1 ,7 ),
(6 ,3 ,6 ),
(7 ,2 ,8 ),
(8 ,5 ,9 ),
(9 ,4 ,10 ),
(10 ,6 ,11 ), 
(11 ,1 ,12 ), 
(12 ,3 ,13 );

INSERT INTO PremiumUser (idPremiumUser, idUser, renewalDate, subscriptionType, membershipPrice) VALUES 
(1, 1, '2024-12-31', 'Family', 14.99),
(2, 3, '2024-11-30', 'Student', 4.99),
(3, 6, '2024-10-15', 'Plus', 9.99),
(4, 1, '2025-01-31', 'Plus', 9.99),
(5, 3, '2025-02-28', 'Family', 14.99),
(6, 6, '2025-03-31', 'Student', 4.99),
(7, 1, '2025-04-30', 'Family', 14.99),
(8, 3, '2025-05-31', 'Plus', 9.99),
(9, 6, '2025-06-30', 'Student', 4.99),
(10,1,'2025-07-31','Plus',9.99), 
(11,3,'2025-08-31','Family',14.99), 
(12,6,'2025-09-30','Student',4.99);

INSERT INTO PaymentProvider (idPaymentProvider, apiKey, choice) VALUES 
(1, 'stripe_live_key_xyz123', 'Card'),
(2, 'paypal_api_key_abc456', 'Paypal'),
(3, 'stripe_live_key_def789', 'Card'),
(4, 'stripe_live_key_ghi012', 'Card'),
(5, 'paypal_api_key_jkl345', 'Paypal'),
(6, 'stripe_live_key_mno678', 'Card'),
(7, 'paypal_api_key_pqr901', 'Paypal'),
(8, 'stripe_live_key_stu234', 'Card'),
(9, 'paypal_api_key_vwx567', 'Paypal'),
(10,'stripe_live_key_yza890','Card'), 
(11,'paypal_api_key_bcd123','Paypal'), 
(12,'stripe_live_key_efg456','Card');

INSERT INTO PremiumPaymentProvider (idPremiumUser, idPaymentProvider) VALUES 
(1 ,1 ),
(2 ,2 ),
(3 ,3 ),
(4 ,4 ),
(5 ,5 ),
(6 ,6 ),
(7 ,7 ),
(8 ,8 ),
(9 ,9 ),
(10 ,10 ), 
(11 ,11 ), 
(12 ,12 );

INSERT INTO Card (idCard, idPaymentProvider, name, expiryDate, cardNumber, securityCode) VALUES 

(1, 1, 'John Smith', '2025-06-30', '4532XXXXXXXX1234', 123),
(2, 3, 'Sarah Johnson', '2026-03-31', '5678XXXXXXXX5678', 456),
(3, 1, 'Michael Brown', '2026-08-31', '8765XXXXXXXX4321', 789),
(4, 3, 'Emily Davis', '2026-11-30', '9876XXXXXXXX5432', 101),
(5, 1, 'David Wilson', '2026-12-31', '6543XXXXXXXX2109', 112),
(6, 3, 'Emma Thompson', '2026-09-30', '3210XXXXXXXX9876', 131),
(7, 1, 'Olivia Martinez', '2026-07-31', '4321XXXXXXXX8765', 415),
(8, 3, 'Liam Garcia', '2026-05-31', '5432XXXXXXXX7654', 161),
(9, 1, 'Sophia Hernandez', '2026-04-30', '2109XXXXXXXX6543', 718),
(10,3,'Lucas White','2026 - 02 - 28','7654XXXXXXXX5432 ',192), 
(11 ,1 ,'Ava Lewis ','2026 - 01 - 31','8765XXXXXXXX4321 ',234), 
(12 ,3 ,'Isabella Walker ','2026 - 06 - 30','9876XXXXXXXX3210 ',345);


INSERT INTO Paypal (idPaypal, email, idPaymentProvider) VALUES 
(1 ,'john.smith@email.com ',2 ),
(2 ,'sarah.johnson@email.com ',2 ),
(3 ,'michael.brown@email.com ',2 ),
(4 ,'emily.davis@email.com ',2 ),
(5 ,'david.wilson@email.com ',2 ),
(6 ,'emma.thompson@email.com ',2 ),
(7 ,'olivia.martinez@email.com ',2 ),
(8 ,'liam.garcia@email.com ',2 ),
(9 ,'sophia.hernandez@email.com ',2 ),
(10 ,'lucas.white@email.com ',2 ), 
(11 ,'ava.lewis@email.com ',2 ), 
(12 ,'isabella.walker@email.com ',2 );

