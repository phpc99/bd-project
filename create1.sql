PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS Facebook;
DROP TABLE IF EXISTS Region;
DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS FacebookFriend;
DROP TABLE IF EXISTS UserFriend;
DROP TABLE IF EXISTS Playlist;
DROP TABLE IF EXISTS Lyrics;
DROP TABLE IF EXISTS Song;
DROP TABLE IF EXISTS PlaylistSong;
DROP TABLE IF EXISTS ListeningHistory;
DROP TABLE IF EXISTS Genre;
DROP TABLE IF EXISTS SongGenre;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS AlbumSong;
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS ArtistSong;
DROP TABLE IF EXISTS LikedArtist;
DROP TABLE IF EXISTS Merchandise;
DROP TABLE IF EXISTS Concert;
DROP TABLE IF EXISTS FreeUser;
DROP TABLE IF EXISTS PremiumUser;
DROP TABLE IF EXISTS PaymentProvider;
DROP TABLE IF EXISTS PremiumPaymentProvider;
DROP TABLE IF EXISTS Card;
DROP TABLE IF EXISTS Paypal;




CREATE TABLE Facebook (
    idFacebook INT PRIMARY KEY,
    key VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Region (
    idRegion INT PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE User (
    idUser INT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    idRegion INT NOT NULL,
    dateOfBirth DATE,
    joinDate DATE NOT NULL DEFAULT current_timestamp,
    idFacebook INT,
    userType VARCHAR(10) NOT NULL Default 'FREE',
    CONSTRAINT pk_idUser PRIMARY KEY (idUser),

    CONSTRAINT fk_id_facebook_id_facebook FOREIGN KEY (idFacebook) REFERENCES Facebook(idFacebook) ON DELETE SET NULL,
    CONSTRAINT fk_id_region_id_region FOREIGN KEY (idRegion) REFERENCES Region(idRegion) ON DELETE SET NULL,
    CONSTRAINT valid_usertype CHECK (userType IN ('FREE', 'PREMIUM')),

    CONSTRAINT un_email UNIQUE (email)

);

CREATE TABLE FacebookFriend (
    idUser INT,
    idUser2 INT,
    friendName VARCHAR(50) NOT NULL,
    FOREIGN KEY (idUser) REFERENCES User(idUser) ON DELETE CASCADE,
    FOREIGN KEY (idUser2) REFERENCES User(idUser) ON DELETE CASCADE,
    PRIMARY KEY (idUser, idUser2)
);

CREATE TABLE UserFriend (
    idUser INT,
    idUser2 INT,
    friendName VARCHAR(50) NOT NULL,
    FOREIGN KEY (idUser) REFERENCES User(idUser) ON DELETE CASCADE,
    FOREIGN KEY (idUser2) REFERENCES User(idUser) ON DELETE CASCADE,
    PRIMARY KEY (idUser, idUser2)
);

CREATE TABLE Playlist (
    idPlaylist INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    idUser INT,
    createdDate DATE NOT NULL DEFAULT current_timestamp,
    FOREIGN KEY (idUser) REFERENCES User(IdUser) ON DELETE SET NULL
);

CREATE TABLE Lyrics (
    idLyrics INT PRIMARY KEY,
    text TEXT NOT NULL,
    provider VARCHAR(50) NOT NULL
);

CREATE TABLE Song (
    idSong INT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    duration TIME NOT NULL,
    releaseDate DATE NOT NULL DEFAULT current_timestamp,
    idLyrics INT,
    FOREIGN KEY (idLyrics) REFERENCES Lyrics(idLyrics) ON DELETE SET NULL
);

CREATE TABLE PlaylistSong (
    idPlaylist INT,
    idSong INT,
    FOREIGN KEY (idPlaylist) REFERENCES Playlist(idPlaylist) ON DELETE CASCADE,
    FOREIGN KEY (idSong) REFERENCES Song(idSong) ON DELETE CASCADE,
    PRIMARY KEY (idPlaylist, idSong)
);

CREATE TABLE ListeningHistory ( -- UserSong is a table that stores the songs that a user has listened to
    idUser INT,
    idSong INT,
    listenDate DATE DEFAULT current_timestamp,
    listenTime TIME,
    FOREIGN KEY (idUser) REFERENCES User(idUser) ON DELETE CASCADE,
    FOREIGN KEY (idSong) REFERENCES Song(idSong) ON DELETE CASCADE,
    PRIMARY KEY (idUser, idSong)
);

CREATE TABLE Genre (
    idGenre INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE SongGenre ( 
    idSong INT,
    idGenre INT,
    FOREIGN KEY (idSong) REFERENCES Song(idSong) ON DELETE CASCADE,
    FOREIGN KEY (idGenre) REFERENCES Genre(idGenre) ON DELETE CASCADE,
    PRIMARY KEY (idSong, idGenre)
);

CREATE TABLE Album (
    idAlbum INT PRIMARY KEY,
    idArtist INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    releaseYear INT NOT NULL,
    FOREIGN KEY (idArtist) REFERENCES Artist(idArtist) ON DELETE CASCADE
);

CREATE TABLE AlbumSong (
    idAlbum INT,
    idSong INT,
    songNr INT NOT NULL,
    FOREIGN KEY (idAlbum) REFERENCES Album(idAlbum) ON DELETE CASCADE
    FOREIGN KEY (idSong) REFERENCES Song(idSong) ON DELETE CASCADE
    PRIMARY KEY (idAlbum, idSong)
);


CREATE TABLE Artist (
    idArtist INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    debutYear INT NOT NULL,
    bio TEXT,
    verified BOOLEAN DEFAULT FALSE
);

CREATE TABLE ArtistSong ( --Artist can have multiple songs
    idArtist INT,
    idSong INT,
    FOREIGN KEY (idArtist) REFERENCES Artist(idArtist) ON DELETE CASCADE,
    FOREIGN KEY (idSong) REFERENCES Song(idSong) ON DELETE CASCADE
    PRIMARY KEY (idArtist, idSong)
);

CREATE TABLE LikedArtist (
    idUser INT,
    idArtist INT,
    FOREIGN KEY (idUser) REFERENCES User(idUser) ON DELETE CASCADE,
    FOREIGN KEY (idArtist) REFERENCES Artist(idArtist) ON DELETE CASCADE,
    PRIMARY KEY (idUser, idArtist)
);


CREATE TABLE Merchandise (
    idMerchandise INT PRIMARY KEY,
    idArtist INT NOT NULL,
    CD BOOLEAN,
    vinyl BOOLEAN,
    shirt BOOLEAN,
    FOREIGN KEY (idArtist) REFERENCES Artist(idArtist) ON DELETE CASCADE
);


CREATE TABLE Concert (
    idConcert INT PRIMARY KEY,
    idArtist INT NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    theater VARCHAR(50) NOT NULL,
    ticketPrice DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (idArtist) REFERENCES Artist(idArtist) ON DELETE CASCADE,
    CONSTRAINT valid_price CHECK (ticketPrice > 0)
);
/*
CREATE TABLE ArtistConcert ( --MULTIPLE ARTISTS CAN BE IN A CONCERT
    idArtist INT,
    idConcert INT,
    FOREIGN KEY (idArtist) REFERENCES Artist(idArtist),
    FOREIGN KEY (idConcert) REFERENCES Concert(idConcert),
    PRIMARY KEY (idArtist, idConcert)
);*/

CREATE TABLE FreeUser ( --User can be a free user
    idFreeUser INT,
    idUser INT,
    numberOfSkinChanges INT NOT NULL DEFAULT 5,
    FOREIGN KEY (idUser) REFERENCES User(idUser) ON DELETE CASCADE,
    PRIMARY KEY (idUser, idFreeUser)
);

CREATE TABLE PremiumUser (
    idPremiumUser INT PRIMARY KEY,
    idUser INT NOT NULL,
    renewalDate DATE NOT NULL,
    subscriptionType VARCHAR(50) NOT NULL,
    membershipPrice DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (idUser) REFERENCES User(idUser) ON DELETE CASCADE,
    CONSTRAINT valid_subscriptiontype CHECK (subscriptionType IN ('Student', 'Family', 'Plus'))
);

CREATE TABLE PaymentProvider (
    idPaymentProvider INT PRIMARY KEY,
    apiKey VARCHAR(50) NOT NULL UNIQUE,
    choice VARCHAR(50) NOT NULL,
    CONSTRAINT valid_choice CHECK (choice IN ('Card', 'Paypal'))
);

CREATE TABLE PremiumPaymentProvider (
    idPremiumUser INT,
    idPaymentProvider INT,
    PRIMARY KEY (idPremiumUser, idPaymentProvider),
    FOREIGN KEY (idPremiumUser) REFERENCES PremiumUser(idPremiumUser) ON DELETE CASCADE,
    FOREIGN KEY (idPaymentProvider) REFERENCES PaymentProvider(idPaymentProvider) ON DELETE CASCADE
);

CREATE TABLE Card (
    idCard INT PRIMARY KEY,
    idPaymentProvider INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    expiryDate DATE NOT NULL,
    cardNumber VARCHAR(50) NOT NULL UNIQUE,
    securityCode INT NOT NULL,
    FOREIGN KEY (idPaymentProvider) REFERENCES PaymentProvider(idPaymentProvider) ON DELETE CASCADE,
    CONSTRAINT valid_card CHECK (expiryDate > CURRENT_DATE)
);

CREATE TABLE Paypal (
    idPaypal INT PRIMARY KEY,
    email VARCHAR(50) NOT NULL UNIQUE,
    idPaymentProvider INT NOT NULL,
    FOREIGN KEY (idPaymentProvider) REFERENCES PaymentProvider(idPaymentProvider) ON DELETE CASCADE
);

PRAGMA foreign_keys = ON;

