PRAGMA foreign_keys = ON;

INSERT INTO Region (idRegion, country, city) VALUES 
(1, 'United States', 'Los Angeles'),
(2, 'United Kingdom', 'London'),
(3, 'Japan', 'Tokyo'),
(4, 'Canada', 'Toronto');

INSERT INTO Facebook (idFacebook, key) VALUES 
(1, 'fb_auth_key_123xyz'),
(2, 'fb_auth_key_456abc'),
(3, 'fb_auth_key_789def');

INSERT INTO User (idUser, username, email, password, idRegion, dateOfBirth, joinDate, idFacebook, userType) VALUES 
(1, 'taylor_swift_fan', 'swiftie@email.com', 'hash', 1, '1995-03-15', '2024-01-01', 1, 'PREMIUM'),
(2, 'rock_lover', 'rock@email.com', 'hash', 2, '1990-07-22', '2024-02-15', 2, 'FREE'),
(3, 'jazz_master', 'jazz@email.com', 'hash', 3, '1988-11-30', '2024-03-20', 3, 'PREMIUM'),
(4, 'emma_davis', 'emma.davis@email.com', 'hash', 1, '1995-06-15', '2024-09-01', NULL, 'FREE'),
(5, 'james_wilson', 'james.wilson@email.com', 'hash', 2, '1991-12-03', '2024-09-15', NULL, 'FREE'),
(6, 'sophia_lee', 'sophia.lee@email.com', 'hash', 3, '1993-08-22', '2024-10-01', NULL, 'PREMIUM');

INSERT INTO Artist (idArtist, name, debutYear, bio, verified) VALUES 
(1, 'Taylor Swift', 2006, 'American singer-songwriter', true),
(2, 'Ed Sheeran', 2011, 'British singer-songwriter', true),
(3, 'BTS', 2013, 'South Korean boy band', true);

INSERT INTO Album (idAlbum, idArtist, name, releaseYear) VALUES 
(1, 1, 'Midnights', 2022),
(2, 2, 'Divide', 2017),
(3, 3, 'Proof', 2022);

INSERT INTO Genre (idGenre, name) VALUES 
(1, 'Pop'),
(2, 'Rock'),
(3, 'Hip Hop'),
(4, 'Jazz'),
(5, 'K-pop');

INSERT INTO Song (idSong, name, duration, releaseDate) VALUES 
(1, 'Anti-Hero', '00:03:20', '2022-10-21'),
(2, 'Shape of You', '00:03:53', '2017-01-06'),
(3, 'Yet To Come', '00:03:13', '2022-06-10');

INSERT INTO Lyrics (idLyrics, text, provider) VALUES 
(1, 'Its me, hi, Im the problem its me...', 'Musixmatch'),
(2, 'The club isnt the best place to find a lover...', 'Genius'),
(3, 'Was it honestly the best...', 'Musixmatch');

UPDATE Song SET idLyrics = 1 WHERE idSong = 1;  -- Anti-Hero
UPDATE Song SET idLyrics = 2 WHERE idSong = 2;  -- Shape of You
UPDATE Song SET idLyrics = 3 WHERE idSong = 3;  -- Yet To Come

INSERT INTO Playlist (idPlaylist, name, idUser, createdDate) VALUES 
(1, 'My Favorites', 1, '2023-05-15'),
(2, 'Workout Mix', 2, '2023-06-20'),
(3, 'Chill Vibes', 3, '2023-07-01');

INSERT INTO PlaylistSong (idPlaylist, idSong) VALUES 
(1, 1),
(1, 2),
(2, 2),
(3, 3);

INSERT INTO SongGenre (idSong, idGenre) VALUES 
(1, 1),
(2, 1),
(2, 3),
(3, 5);

INSERT INTO AlbumSong (idAlbum, idSong, songNr) VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

INSERT INTO ArtistSong (idArtist, idSong) VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO LikedArtist (idUser, idArtist) VALUES 
(1, 1),
(1, 2),
(2, 2),
(3, 3);

INSERT INTO Merchandise (idMerchandise, idArtist, CD, vinyl, shirt) VALUES 
(1, 1, true, true, true),
(2, 2, true, true, false),
(3, 3, true, false, true);

INSERT INTO Concert (idConcert, idArtist, date, time, country, city, theater, ticketPrice) VALUES 
(1, 1, '2024-07-15', '20:00:00', 'United States', 'New York', 'Madison Square Garden', 150.00),
(2, 2, '2024-08-20', '19:30:00', 'United Kingdom', 'London', 'O2 Arena', 89.99),
(3, 3, '2024-09-10', '18:00:00', 'Japan', 'Tokyo', 'Tokyo Dome', 120.00);

INSERT INTO FacebookFriend (idUser, idUser2, friendName) VALUES 
(1, 2, 'Rock Enthusiast'),
(2, 3, 'Jazz Master');

INSERT INTO UserFriend (idUser, idUser2, friendName) VALUES 
(1, 3, 'Jazz Master'),
(2, 1, 'Swiftie');

INSERT INTO ListeningHistory (idUser, idSong, listenDate, listenTime) VALUES 
(1, 1, '2024-01-15', '14:30:00'),
(2, 2, '2024-01-15', '16:45:00'),
(3, 3, '2024-01-15', '18:20:00');

INSERT INTO FreeUser (idFreeUser, idUser, numberOfSkinChanges) VALUES 
(1, 2, 5),
(2, 4, 3),
(3, 5, 4);

INSERT INTO PremiumUser (idPremiumUser, idUser, renewalDate, subscriptionType, membershipPrice) VALUES 
(1, 1, '2024-12-31', 'Family', 14.99),
(2, 3, '2024-11-30', 'Student', 4.99),
(3, 6, '2024-10-15', 'Plus', 9.99);

INSERT INTO PaymentProvider (idPaymentProvider, apiKey, choice) VALUES 
(1, 'stripe_live_key_xyz123', 'Card'),
(2, 'paypal_api_key_abc456', 'Paypal'),
(3, 'stripe_live_key_def789', 'Card');

INSERT INTO PremiumPaymentProvider (idPremiumUser, idPaymentProvider) VALUES 
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Card (idCard, idPaymentProvider, name, expiryDate, cardNumber, securityCode) VALUES 
(1, 1, 'John Smith', '2025-06-30', '4532XXXXXXXX1234', 123),
(2, 3, 'Sarah Johnson', '2026-03-31', '5678XXXXXXXX5678', 456);

INSERT INTO Paypal (idPaypal, email, idPaymentProvider) VALUES 
(1, 'john.smith@email.com', 2);

