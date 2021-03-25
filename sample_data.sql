-- ------------------------------------------
-- POPULATION SCRIPT
-- DATABASE BOOK_BUSINESS
-- ------------------------------------------

USE `book_business`;

-- ------------------------------------------
-- POPULATE AUTHORS
-- ------------------------------------------

-- AuthorID->Name->DateOfBirth->Adress->Contact
INSERT INTO `Authors` VALUES(1 , 'Alice'              , '2000-03-17', NULL                                             , 'alice@wonderland.com');
INSERT INTO `Authors` VALUES(2 , 'Bob'                , '2002-01-23', 'US FL HOMOSASSA 2755 Bruce Street 34446'        , '+1-314-269-4718');
INSERT INTO `Authors` VALUES(3 , 'Stephen N Caine'    , '1983-03-15', 'US KY Madisonville 2124 Harper Street 42431'	   , '+1-270-460-8295');
INSERT INTO `Authors` VALUES(4 , 'Dominic T Parsons'  , '1992-02-06', 'UK FALKIRK 105 Cefn Road FK1 3PY'          	   , '+44-079-7097-6076');
INSERT INTO `Authors` VALUES(5 , 'Body No'            , NULL        , NULL                                             , NULL);
INSERT INTO `Authors` VALUES(6 , 'Where DoI Live'     , '1960-11-11', NULL                                             , 'where@noplace.x');
INSERT INTO `Authors` VALUES(7 , 'Shy Iam'            , NULL        , 'FR Ile-de-France LIVRY-GARGAN 55 rue Leon Dierx', NULL);
INSERT INTO `Authors` VALUES(8 , 'Ancient Writer'     , '0012-01-01', NULL                                             , NULL);
INSERT INTO `Authors` VALUES(9 , 'Future Writer'      , '2087-06-06', 'Mars Colony 47 Jezero 12X47'                    , '\/\/<132><475>\/\/(1293629)');
INSERT INTO `Authors` VALUES(10, 'Too Young'          , '2020-03-05', NULL                                             , NULL);
INSERT INTO `Authors` VALUES(11, 'Chief'              , '1995-07-14', 'Best Restaraunt in the World'                   , 'tasty.food@ever.com');
INSERT INTO `Authors` VALUES(12, 'Dr. Smart'          , '1960-04-29', 'Some Lab on the Coast'                          , 'science@heart.com');
INSERT INTO `Authors` VALUES(13, 'Data Scientist 1'   , '2002-02-02', 'US GA Atlanta 276 Junior Avenu 30303'           , '+1-404-560-0421');
INSERT INTO `Authors` VALUES(14, 'Data Scientist 2'   , '2002-02-02', 'US GA Atlanta 276 Junior Avenu 30303'           , '+1-404-560-0422');
INSERT INTO `Authors` VALUES(15, 'Data Scientist 3'   , '2002-02-02', 'US GA Atlanta 276 Junior Avenu 30303'           , '+1-404-560-0423');

-- ------------------------------------------
-- POPULATE PUBLISHERS
-- ------------------------------------------

-- PublisherID->Name->Adress->Contact
INSERT INTO `Publishers` VALUES(1, 'Easy Publish & Co'     , 'US OH TIPP CITY 170 Charles Street 45371', 'www.easypublish.com');
INSERT INTO `Publishers` VALUES(2, 'You Pay We Publish'    , 'US CA Riverside 4938 Denver Avenue 92503', 'www.payuscash.org');
INSERT INTO `Publishers` VALUES(3, 'Find Us if UCAN'       , NULL                                      , NULL);
INSERT INTO `Publishers` VALUES(4, 'Publisher on Wheels'   , NULL                                      , 'send.book@gmail.com');
INSERT INTO `Publishers` VALUES(5, 'Interdimensional Press', '11°22,40′ 142°35,50′'                    , NULL);

-- ------------------------------------------
-- POPULATE GENRES
-- ------------------------------------------

-- GenreID->Name

INSERT INTO `Genres` VALUES('1' , 'Classics');
INSERT INTO `Genres` VALUES('2' , 'Comic Book');
INSERT INTO `Genres` VALUES('3' , 'Detective');
INSERT INTO `Genres` VALUES('4' , 'Fantasy');
INSERT INTO `Genres` VALUES('5' , 'Historical Fiction');
INSERT INTO `Genres` VALUES('6' , 'Horror');
INSERT INTO `Genres` VALUES('7' , 'Science Fiction');
INSERT INTO `Genres` VALUES('8' , 'Short Stories');
INSERT INTO `Genres` VALUES('9' , 'Biographies');
INSERT INTO `Genres` VALUES('10', 'Cookbooks');
INSERT INTO `Genres` VALUES('11', 'History');
INSERT INTO `Genres` VALUES('12', 'Science');
INSERT INTO `Genres` VALUES('13', 'Poetry');

-- ------------------------------------------
-- POPULATE BOOKS
-- ------------------------------------------

-- BookID->Name->Price->IssueDate->PublisherID->GenreID

INSERT INTO `Books` VALUES(1 , "My Adventures in Wonderland"      , 1   , '1865-11-26', 5   , 9);
INSERT INTO `Books` VALUES(2 , "This Book Does Not Exists"        , 0   , NULL        , NULL, 4);
INSERT INTO `Books` VALUES(3 , "Searching for Home"               , 1000, '2020-01-17', 4   , 9);
INSERT INTO `Books` VALUES(4 , "My Friends Poems"                 , 5.12, '2017-11-12', 2   , 13);
INSERT INTO `Books` VALUES(5 , "Oogabooga"                        , 0   , '0022-02-03', 5   , 11);
INSERT INTO `Books` VALUES(6 , "What if We Hadn't Colonized Mars" , 12.5, '2117-05-05', 5   , 5);
INSERT INTO `Books` VALUES(7 , "Adventures of Paint Drop"         , 6   , '2020-03-15', 1   , 2);
INSERT INTO `Books` VALUES(8 , "BFR-Best Food Ever"               , 20  , '2016-02-15', 2   , 10);
INSERT INTO `Books` VALUES(9 , "I Found YOU"                      , 0   , '2019-12-17', 3   , 8);
INSERT INTO `Books` VALUES(10, "Electrons in 0-dimensional Space" , 125 , '2018-11-12', 1   , 12);
INSERT INTO `Books` VALUES(11, "Honey I Dropped the Table"        , 11  , '2020-03-17', 1   , 8);
INSERT INTO `Books` VALUES(12, "Honey I Dropped the Database"     , 11  , '2020-03-17', 1   , 8);
INSERT INTO `Books` VALUES(13, "Honey I Dropped Everything  "     , 11  , '2020-03-17', 1   , 8);
INSERT INTO `Books` VALUES(14, "Voice in the DUST"                , 3.33, '2011-06-14', 2   , 3);
INSERT INTO `Books` VALUES(15, "ElvenDor"                         , 27  , '2014-11-23', 2   , 1);
INSERT INTO `Books` VALUES(16, "Potato Growth on Mars"            , 126 , '2019-07-12', 5   , 12);
INSERT INTO `Books` VALUES(17, "Self-Moving Cart"                 , 0   , '0024-01-21', 5   , 7);
INSERT INTO `Books` VALUES(18, "DROP *... I had no backup"        , 12  , '2020-03-18', 4   , 6);
INSERT INTO `Books` VALUES(19, "To The Stars and Beyound"         , 5   , '2019-12-16', 2   , 7);
INSERT INTO `Books` VALUES(20, "Medieval Manuscript"              , 9999, NULL        , NULL, 11);
INSERT INTO `Books` VALUES(21, "Burning Sand"                     , 15  , NULL        , 4   , 1);
INSERT INTO `Books` VALUES(22, "Elf in a Jar"                     , 10  , '2018-09-24', 1   , 4);
INSERT INTO `Books` VALUES(23, "Salad from Martian Potatoes"      , 50  , '2019-03-07', 2   , 10);
INSERT INTO `Books` VALUES(24, "Beyound the Stars"                , 5   , '2020-01-16', 2   , 7);
INSERT INTO `Books` VALUES(25, "Tales of the World. Collection."  , 350 , '2020-02-12', 2   , 8);

-- ------------------------------------------
-- POPULATE BOOKAUTHORS
-- ------------------------------------------

-- BookID->AuthorID->Royalty
INSERT INTO `BookAuthors` VALUES(1 , 1 , 0.00);
INSERT INTO `BookAuthors` VALUES(2 , 5 , NULL);
INSERT INTO `BookAuthors` VALUES(3 , 6 , 0.10);
INSERT INTO `BookAuthors` VALUES(4 , 7 , 0.12);
INSERT INTO `BookAuthors` VALUES(5 , 8 , 0.00);
INSERT INTO `BookAuthors` VALUES(6 , 9 , 0.15);
INSERT INTO `BookAuthors` VALUES(7 , 10, 0.05);
INSERT INTO `BookAuthors` VALUES(7 , 2 , 0.10);
INSERT INTO `BookAuthors` VALUES(8 , 11, 0.17);
INSERT INTO `BookAuthors` VALUES(9 , 12, 0.00);
INSERT INTO `BookAuthors` VALUES(10, 12, 0.50);
INSERT INTO `BookAuthors` VALUES(11, 13, 0.11);
INSERT INTO `BookAuthors` VALUES(12, 14, 0.11);
INSERT INTO `BookAuthors` VALUES(13, 15, 0.11);
INSERT INTO `BookAuthors` VALUES(14, 3 , 0.10);
INSERT INTO `BookAuthors` VALUES(14, 4 , 0.10);
INSERT INTO `BookAuthors` VALUES(15, 2 , 0.03);
INSERT INTO `BookAuthors` VALUES(15, 4 , 0.06);
INSERT INTO `BookAuthors` VALUES(16, 9 , 0.10);
INSERT INTO `BookAuthors` VALUES(16, 12, 0.40);
INSERT INTO `BookAuthors` VALUES(17, 8 , 0.05);
INSERT INTO `BookAuthors` VALUES(17, 2 , 0.10);
INSERT INTO `BookAuthors` VALUES(18, 13, 0.07);
INSERT INTO `BookAuthors` VALUES(18, 14, 0.07);
INSERT INTO `BookAuthors` VALUES(18, 15, 0.07);
INSERT INTO `BookAuthors` VALUES(19, 12, 0.05);
INSERT INTO `BookAuthors` VALUES(19, 6 , 0.05);
INSERT INTO `BookAuthors` VALUES(21, 3 , 0.12);
INSERT INTO `BookAuthors` VALUES(22, 7 , 0.01);
INSERT INTO `BookAuthors` VALUES(22, 2 , 0.09);
INSERT INTO `BookAuthors` VALUES(23, 9 , 0.10);
INSERT INTO `BookAuthors` VALUES(23, 11, 0.20);
INSERT INTO `BookAuthors` VALUES(24, 12, 0.10);
INSERT INTO `BookAuthors` VALUES(24, 9 , 0.10);
INSERT INTO `BookAuthors` VALUES(24, 4 , 0.05);
INSERT INTO `BookAuthors` VALUES(25, 1 , 0.10);
INSERT INTO `BookAuthors` VALUES(25, 5 , 0.10);
INSERT INTO `BookAuthors` VALUES(25, 6 , 0.10);
INSERT INTO `BookAuthors` VALUES(25, 7 , 0.10);
INSERT INTO `BookAuthors` VALUES(25, 9 , 0.10);
INSERT INTO `BookAuthors` VALUES(25, 12, 0.10);

-- ------------------------------------------
-- POPULATE EDITORS
-- ------------------------------------------

-- EditorID->Name->Adress->Contact
INSERT INTO `Editors` VALUES(1, 'Srotide'      , 'Sserda'                                       , 'Tcatnoc');
INSERT INTO `Editors` VALUES(2, 'Mary J Emery' , 'Us MA North Billerica 3520 Christie Way 01862', '+1-978-807-3541');
INSERT INTO `Editors` VALUES(3, 'Traveler'     , NULL                                           , 'ask.me@gmail.com');
INSERT INTO `Editors` VALUES(4, 'Betty M Greer', 'Us MA Holyoke 1085 Kinney Street 01040'       , '+1-413-552-9622');
INSERT INTO `Editors` VALUES(5, 'Inter Editor' , '11°22,40′ 142°35,50′'                         , NULL);

-- ------------------------------------------
-- POPULATE BOOKEDITORS
-- ------------------------------------------

-- BookID->EditorID
INSERT INTO `BookEditors` VALUES(1 , 1);
INSERT INTO `BookEditors` VALUES(3 , 3);
INSERT INTO `BookEditors` VALUES(5 , 5);
INSERT INTO `BookEditors` VALUES(6 , 5);
INSERT INTO `BookEditors` VALUES(7 , 1);
INSERT INTO `BookEditors` VALUES(10, 2);
INSERT INTO `BookEditors` VALUES(14, 4);
INSERT INTO `BookEditors` VALUES(15, 2);
INSERT INTO `BookEditors` VALUES(15, 4);
INSERT INTO `BookEditors` VALUES(16, 5);
INSERT INTO `BookEditors` VALUES(17, 5);
INSERT INTO `BookEditors` VALUES(18, 1);
INSERT INTO `BookEditors` VALUES(19, 5);
INSERT INTO `BookEditors` VALUES(22, 2);
INSERT INTO `BookEditors` VALUES(22, 3);
INSERT INTO `BookEditors` VALUES(22, 4);
INSERT INTO `BookEditors` VALUES(23, 5);
INSERT INTO `BookEditors` VALUES(24, 5);
INSERT INTO `BookEditors` VALUES(25, 1);
INSERT INTO `BookEditors` VALUES(25, 3);
INSERT INTO `BookEditors` VALUES(25, 5);

-- ------------------------------------------
-- POPULATE CUSTOMERS
-- ------------------------------------------

-- CustomerID->Name->DateOfBirth->Adress->Contact
INSERT INTO `Customers` VALUES(1, 'Rich Riches'       , '1989-03-17', 'SW Mauborget Sonnenweg 22 1453'     , 'r.r@nomail.com');
INSERT INTO `Customers` VALUES(2, 'Inter Police'      , NULL        , NULL	                               , '//<000>\/(1)');
INSERT INTO `Customers` VALUES(3, 'Charlotte R Hinkle', '1972-06-03', 'US NC 3304 Lucky Duck Drive 27524'  , NULL);
INSERT INTO `Customers` VALUES(4, 'Buy Only Free'     , '1999-12-01', 'US GA Savannah 1973  Lilac Lane'    , '+1-912-508-1228');
INSERT INTO `Customers` VALUES(5, '	Eve L Hudson'     , '1956-01-26', 'UK HAROME 105 Balsham Road YO62 8BW', '+44-079-7420-9844');

-- ------------------------------------------
-- POPULATE ORDERS
-- ------------------------------------------

-- OrderID->CustomerID->OrderDate->ShippedDate

INSERT INTO `Orders` VALUES(1, 1, '2020-03-19', '2020-03-21');
INSERT INTO `Orders` VALUES(2, 2, '2020-03-18', NULL);
INSERT INTO `Orders` VALUES(3, 3, '2020-03-10', '2020-03-21');
INSERT INTO `Orders` VALUES(4, 3, '2020-03-12', '2020-03-21');
INSERT INTO `Orders` VALUES(5, 4, '2020-03-01', '2020-03-21');
INSERT INTO `Orders` VALUES(6, 5, '2020-02-01', '2020-03-01');
INSERT INTO `Orders` VALUES(7, 5, '2020-02-08', '2020-03-18');
INSERT INTO `Orders` VALUES(8, 5, '2020-02-15', NULL);

-- ------------------------------------------
-- POPULATE ORDERDETAILS
-- ------------------------------------------

-- OrderID->BookID->Quantity->Discount
INSERT INTO `OrderDetails` VALUES(1, 1 , 1000, 0.00);
INSERT INTO `OrderDetails` VALUES(1, 2 , 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(1, 6 , 80  , 0.00);
INSERT INTO `OrderDetails` VALUES(1, 8 , 50  , 0.00);
INSERT INTO `OrderDetails` VALUES(1, 10, 8   , 0.00);
INSERT INTO `OrderDetails` VALUES(1, 20, 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(1, 25, 3   , 0.00);
INSERT INTO `OrderDetails` VALUES(2, 1 , 1   , 1.00);
INSERT INTO `OrderDetails` VALUES(2, 5 , 1   , 1.00);
INSERT INTO `OrderDetails` VALUES(2, 6 , 1   , 1.00);
INSERT INTO `OrderDetails` VALUES(2, 16, 1   , 1.00);
INSERT INTO `OrderDetails` VALUES(2, 17, 1   , 1.00);
INSERT INTO `OrderDetails` VALUES(3, 8 , 1   , 0.10);
INSERT INTO `OrderDetails` VALUES(3, 16, 1   , 0.10);
INSERT INTO `OrderDetails` VALUES(4, 8 , 2   , 0.10);
INSERT INTO `OrderDetails` VALUES(4, 18, 1   , 0.10);
INSERT INTO `OrderDetails` VALUES(5, 2 , 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(5, 5 , 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(5, 9 , 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(5, 17, 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(6, 14, 1   , 0.05);
INSERT INTO `OrderDetails` VALUES(7, 17, 1   , 0.15);
INSERT INTO `OrderDetails` VALUES(7, 19, 1   , 0.15);
INSERT INTO `OrderDetails` VALUES(7, 24, 1   , 0.15);
INSERT INTO `OrderDetails` VALUES(8, 4 , 1   , 0.00);
INSERT INTO `OrderDetails` VALUES(8, 15, 1   , 0.03);