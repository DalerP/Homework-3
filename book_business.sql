-- ------------------------------------------
-- INSTALLATION SCRIPT
-- DATABASE BOOK_BUSINESS
-- ------------------------------------------

DROP DATABASE IF EXISTS `book_business`;
CREATE DATABASE `book_business`;
USE `book_business`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- ------------------------------------------
-- TABLE AUTHORS
-- ------------------------------------------

CREATE TABLE `Authors` (
	`AuthorID`	  int  		   NOT NULL AUTO_INCREMENT,
    `Name`	      varchar (30) NOT NULL,
    `DateOfBirth` date			   NULL,
    `Adress`	  varchar (50)     NULL,
    `Contact`	  varchar (30)     NULL,
    PRIMARY KEY (`AuthorID`),
    INDEX `AuthorID` (`AuthorID` ASC),
    INDEX `Name`	 (`Name`     ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE PUBLISHERS
-- ------------------------------------------

CREATE TABLE `Publishers` (
	`PublisherID` int          NOT NULL AUTO_INCREMENT,
    `Name`        varchar (30) NOT NULL,
    `Adress`      varchar (50)     NULL,
    `Contact`     varchar (30)     NULL,
    PRIMARY KEY (`PublisherID`),
    INDEX `PublisherID` (`PublisherID` ASC),
    INDEX `Name`        (`Name`        ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE GENRES
-- ------------------------------------------

CREATE TABLE `Genres` (
	`GenreID` int          NOT NULL AUTO_INCREMENT,
    `Name`    varchar (20) NOT NULL,
    PRIMARY KEY (`GenreID`),
    INDEX `Name` (`Name` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE BOOKS
-- ------------------------------------------

CREATE TABLE `Books` (
	`BookID`      int          NOT NULL AUTO_INCREMENT,
    `Name`        varchar (35) NOT NULL,
    `Price`       float        NOT NULL,
    `IssueDate`   date			   NULL,
    `PublisherID` int			   NULL,
    `GenreID`     int 		   NOT NULL,
    PRIMARY KEY (`BookID`),
    INDEX `BookID` (`BookID` ASC),
    INDEX `Name`   (`Name`   ASC),
    FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (`GenreID`)     REFERENCES `Genres`     (`GenreID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE BOOKAUTHORS
-- ------------------------------------------

CREATE TABLE `BookAuthors` (
	`BookID`   int   NOT NULL,
    `AuthorID` int   NOT NULL,
	`Royalty`  float     NULL,
    PRIMARY KEY (`BookID`, `AuthorID`),
    INDEX `BookID`   (`BookID`   ASC),
    INDEX `AuthorID` (`AuthorID` ASC),
    FOREIGN KEY (`BookID`)   REFERENCES `Books`   (`BookID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE EDITORS
-- ------------------------------------------

CREATE TABLE `Editors` (
	`EditorID` int          NOT NULL AUTO_INCREMENT,
    `Name`     varchar (30) NOT NULL,
    `Adress`   varchar (50)     NULL,
    `Contact`  varchar (30)     NULL,
    PRIMARY KEY (`EditorID`),
    INDEX `EditorID` (`EditorID` ASC),
    INDEX `Name`     (`Name`     ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE BOOKEDITORS
-- ------------------------------------------

CREATE TABLE `BookEditors` (
	`BookID`   int NOT NULL,
    `EditorID` int NOT NULL,
    PRIMARY KEY (`BookID`, `EditorID`),
    INDEX `BookID`   (`BookID`   ASC),
    INDEX `EditorID` (`EditorID` ASC),
    FOREIGN KEY (`BookID`)   REFERENCES `Books`   (`BookID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
)  ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE CUSTOMERS
-- ------------------------------------------

CREATE TABLE `Customers` (
	`CustomerID`  int          NOT NULL AUTO_INCREMENT,
    `Name`        varchar (30) NOT NULL,
    `DateOfBirth` date			   NULL,
    `Adress`      varchar (50)     NULL,
    `Contact`     varchar (30)     NULL,
    PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID` ASC),
    INDEX `Name`       (`Name`       ASC)
)  ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE ORDERS
-- ------------------------------------------

CREATE TABLE `Orders` (
	`OrderID`     int  NOT NULL AUTO_INCREMENT,
    `CustomerID`  int  NOT NULL,
    `OrderDate`   date NOT NULL,
    `ShippedDate` date     NULL,
    PRIMARY KEY (`OrderID`),
    INDEX `OrderID` (`OrderID` ASC),
    FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
)  ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------
-- TABLE ORDERDETAILS
-- ------------------------------------------

CREATE TABLE `OrderDetails` (
	`OrderID`  int   NOT NULL,
    `BookID`   int   NOT NULL,
    `Quantity` int   NOT NULL,
	`Discount` float NOT NULL,
    PRIMARY KEY (`OrderID`, `BookID`),
    INDEX `OrderID` (`OrderID` ASC),
    FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION,
	FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
)  ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;