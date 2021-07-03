-- SEED DATA ---
DROP DATABASE gracemusic;
CREATE DATABASE gracemusic;
\connect gracemusic

DROP TABLE "User" CASCADE;
DROP TABLE ""Course"" CASCADE;
DROP TABLE "Lesson" CASCADE;
DROP TABLE "Course_Lesson" CASCADE;
DROP TABLE "Contact" CASCADE;

-- // '"User"' seed data //
create table "User" (
	id INT PRIMARY KEY,
	username VARCHAR(50),
	first_name TEXT,
	last_name TEXT,
	password VARCHAR(50),
	email VARCHAR(50),
	is_admin BOOLEAN
);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (1, 'apauletto0', 'Arabela', 'Pauletto', 'ZqqK61eW', 'apauletto0@examiner.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (2, 'mtopley1', 'Mommy', 'Topley', 'XbbfnjZEwQ', 'mtopley1@eventbrite.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (3, 'bseebert2', 'Barnebas', 'Seebert', 'OtF3jiPMimRs', 'bseebert2@google.co.uk', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (4, 'tmcconville3', 'Toddie', 'McConville', 'eWoE7XL0AQj7', 'tmcconville3@people.com.cn', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (5, 'kdurning4', 'Kirk', 'Durning', 'sVOKwFf9il', 'kdurning4@umich.edu', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (6, 'cmccraine5', 'Cher', 'McCraine', 'pXEPNIlmNoz', 'cmccraine5@prlog.org', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (7, 'sstannion6', 'Simona', 'Stannion', 'XKq2ufoD', 'sstannion6@barnesandnoble.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (8, 'gmoline7', 'Gerhardt', 'Moline', 'mETMBBJTxN', 'gmoline7@mail.ru', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (9, 'ttinham8', 'Terri-jo', 'Tinham', 'YZpHNIVBX97R', 'ttinham8@discovery.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (10, 'pmccullum9', 'Penny', 'McCullum', '2ovavlT', 'pmccullum9@dailymotion.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (11, 'mrafea', 'Malena', 'Rafe', '3KJXqxbiZ', 'mrafea@sina.com.cn', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (12, 'vohagirtieb', 'Victor', 'O''Hagirtie', 'QKyISKC', 'vohagirtieb@squarespace.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (13, 'asibbertc', 'Alika', 'Sibbert', 'TgXK9G', 'asibbertc@elpais.com', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (14, 'tweeklyd', 'Thain', 'Weekly', 'y3rBCmgTX', 'tweeklyd@behance.net', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (15, 'akellawaye', 'Adara', 'Kellaway', '2v2l04EpsysP', 'akellawaye@sitemeter.com', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (16, 'kkewzickf', 'Katusha', 'Kewzick', '6XxVlWH', 'kkewzickf@nih.gov', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (17, 'kbensteadg', 'Karia', 'Benstead', 'eoPNeQ7', 'kbensteadg@noaa.gov', true);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (18, 'tstorrockh', 'Trudie', 'Storrock', 'Wi3O7CUr', 'tstorrockh@desdev.cn', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (19, 'nfeatonbyi', 'Norean', 'Featonby', 'ryoEVL6', 'nfeatonbyi@yellowbook.com', false);
insert into "User" (id, username, first_name, last_name, password, email, is_admin) values (20, 'rscneiderj', 'Rycca', 'Scneider', '3sDAUdF', 'rscneiderj@ning.com', false);


-- COURSE table --
create table "Course" (
	id INT PRIMARY KEY,
	name TEXT,
	level INT
);
insert into "Course" (id, name, level) values (1, 'dictumst', 4);
insert into "Course" (id, name, level) values (2, 'in', 4);
insert into "Course" (id, name, level) values (3, 'orci', 5);
insert into "Course" (id, name, level) values (4, 'convallis', 3);
insert into "Course" (id, name, level) values (5, 'scelerisque', 2);


-- LESSON table --
create table "Lesson" (
	id INT,
	course_id INT,
	name TEXT,
	number INT,
	stanza VARCHAR(1000),
	sound VARCHAR(1000)
);
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (1, 4, 'lectus', 1, 'http://marketwatch.com/primis/in/faucibus.jpg', 'https://pen.io/vel/accumsan/tellus/nisi/eu.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (2, 1, 'cursus', 1, 'https://cnn.com/massa/id/nisl/venenatis.jpg', 'https://bbc.co.uk/tristique/fusce/congue/diam.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (3, 3, 'justo', 7, 'https://nyu.edu/vestibulum/sagittis.json', 'http://craigslist.org/nullam/orci/pede/venenatis/non/sodales/sed.js');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (4, 3, 'amet', 2, 'https://nih.gov/eleifend/quam/a/odio/in.jpg', 'https://foxnews.com/in.xml');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (5, 1, 'nulla', 9, 'http://multiply.com/integer/pede/justo/lacinia/eget/tincidunt/eget.jpg', 'http://goo.gl/est/phasellus/sit/amet/erat.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (6, 4, 'morbi', 10, 'https://jimdo.com/auctor/sed.aspx', 'http://meetup.com/bibendum/imperdiet/nullam/orci/pede/venenatis/non.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (7, 1, 'at', 5, 'http://weather.com/sem/fusce/consequat/nulla/nisl/nunc/nisl.html', 'http://google.com.br/enim.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (8, 5, 'at', 1, 'https://webeden.co.uk/luctus/et/ultrices.png', 'https://businesswire.com/volutpat/in/congue/etiam/justo.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (9, 5, 'ipsum', 5, 'http://webmd.com/elementum/nullam/varius/nulla/facilisi/cras.jpg', 'http://aol.com/eleifend/donec/ut.aspx');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (10, 1, 'quis', 6, 'https://weebly.com/consequat/ut/nulla/sed/accumsan.aspx', 'https://webmd.com/dapibus/duis/at.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (11, 5, 'suspendisse', 10, 'https://examiner.com/congue/diam/id.js', 'http://last.fm/erat/nulla/tempus/vivamus/in/felis/eu.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (12, 3, 'morbi', 2, 'https://businessinsider.com/ante.aspx', 'http://people.com.cn/sit/amet/justo.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (13, 1, 'sapien', 9, 'http://seesaa.net/amet/erat/nulla/tempus/vivamus.xml', 'http://cnbc.com/luctus/et.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (14, 5, 'magna', 10, 'https://about.me/malesuada/in/imperdiet/et/commodo/vulputate.xml', 'http://posterous.com/massa/donec/dapibus/duis/at/velit.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (15, 2, 'erat', 10, 'http://statcounter.com/eget/nunc.png', 'https://angelfire.com/odio/donec/vitae.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (16, 4, 'ut', 3, 'http://slate.com/auctor/gravida/sem/praesent/id/massa/id.html', 'http://state.gov/vestibulum.js');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (17, 4, 'cras', 3, 'http://t.co/nulla/pede/ullamcorper/augue/a/suscipit/nulla.aspx', 'https://reference.com/in/felis.js');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (18, 3, 'hac', 7, 'http://gov.uk/volutpat/in/congue/etiam/justo.aspx', 'http://noaa.gov/vitae/ipsum/aliquam/non/mauris/morbi/non.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (19, 1, 'morbi', 6, 'http://adobe.com/ac/consequat/metus/sapien/ut/nunc.jpg', 'https://nydailynews.com/orci/eget/orci/vehicula.aspx');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (20, 5, 'turpis', 3, 'https://seesaa.net/volutpat/quam/pede/lobortis/ligula/sit.json', 'https://shutterfly.com/eu/orci/mauris/lacinia/sapien/quis/libero.xml');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (21, 3, 'natoque', 1, 'http://elpais.com/cursus/urna/ut/tellus.png', 'https://pbs.org/ipsum/primis/in/faucibus/orci/luctus.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (22, 3, 'in', 5, 'https://ebay.com/mattis/egestas/metus/aenean/fermentum/donec.jpg', 'http://geocities.com/vel.html');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (23, 1, 'sit', 7, 'http://delicious.com/vestibulum/velit/id/pretium/iaculis/diam/erat.html', 'http://smugmug.com/habitasse/platea/dictumst.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (24, 2, 'cursus', 2, 'https://imdb.com/non/mi/integer/ac/neque/duis.jsp', 'https://miitbeian.gov.cn/nisl/nunc/nisl/duis/bibendum.png');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (25, 4, 'sapien', 10, 'http://geocities.com/eu/massa.jpg', 'http://reddit.com/sapien/a.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (26, 4, 'vestibulum', 1, 'http://wufoo.com/ligula/in/lacus.html', 'https://ibm.com/sodales.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (27, 4, 'metus', 9, 'http://wunderground.com/ultrices/libero/non/mattis/pulvinar/nulla.json', 'http://mapquest.com/cubilia/curae/donec/pharetra/magna/vestibulum.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (28, 1, 'nibh', 5, 'https://merriam-webster.com/aliquam/non/mauris/morbi/non/lectus/aliquam.html', 'http://networksolutions.com/vel/ipsum.xml');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (29, 3, 'odio', 6, 'https://instagram.com/aliquam/quis/turpis.jpg', 'https://yelp.com/sit/amet/nulla.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (30, 3, 'in', 9, 'https://addthis.com/nibh/in/lectus/pellentesque/at/nulla/suspendisse.aspx', 'http://nydailynews.com/sed/ante/vivamus/tortor/duis.html');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (31, 3, 'sit', 8, 'https://sun.com/justo/maecenas/rhoncus/aliquam/lacus.html', 'https://hp.com/non/velit.html');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (32, 3, 'venenatis', 10, 'https://liveinternet.ru/id/massa.png', 'http://abc.net.au/ultrices/posuere/cubilia/curae.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (33, 1, 'aliquet', 6, 'http://nymag.com/vulputate/elementum.jsp', 'https://wix.com/lacinia/erat/vestibulum/sed/magna.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (34, 4, 'nam', 2, 'http://jigsy.com/venenatis/non/sodales/sed/tincidunt/eu.jsp', 'http://economist.com/ornare/imperdiet.png');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (35, 1, 'quisque', 3, 'http://bizjournals.com/augue/vestibulum/ante/ipsum/primis/in.json', 'https://ihg.com/duis/ac/nibh/fusce/lacus/purus/aliquet.js');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (36, 3, 'eleifend', 9, 'http://yellowbook.com/nisi/nam/ultrices.json', 'http://pbs.org/sociis/natoque/penatibus/et/magnis/dis/parturient.html');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (37, 2, 'in', 5, 'http://hubpages.com/ut/dolor/morbi.js', 'http://usatoday.com/vulputate/nonummy/maecenas/tincidunt/lacus/at/velit.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (38, 2, 'integer', 7, 'http://tripadvisor.com/turpis/elementum/ligula/vehicula/consequat.jpg', 'http://shinystat.com/nec/nisi.xml');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (39, 4, 'sagittis', 6, 'http://flavors.me/adipiscing/elit/proin/risus/praesent.xml', 'http://tinyurl.com/ut/mauris/eget/massa/tempor.xml');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (40, 2, 'donec', 7, 'http://shinystat.com/sed/interdum/venenatis.xml', 'https://washington.edu/placerat/praesent/blandit/nam/nulla.js');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (41, 5, 'vulputate', 1, 'http://google.com/luctus/nec/molestie/sed/justo.png', 'https://wp.com/nisl/nunc/rhoncus/dui/vel.json');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (42, 2, 'hendrerit', 4, 'http://spiegel.de/at/ipsum/ac/tellus/semper/interdum/mauris.aspx', 'https://nifty.com/natoque/penatibus/et.jsp');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (43, 2, 'posuere', 4, 'http://wikispaces.com/magna/bibendum.aspx', 'https://yale.edu/consequat/in/consequat/ut.jpg');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (44, 3, 'in', 8, 'http://wix.com/sapien/quis.js', 'https://github.io/proin/eu/mi.png');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (45, 1, 'dictumst', 9, 'http://google.ca/at.html', 'http://diigo.com/tincidunt/eu/felis.html');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (46, 3, 'platea', 6, 'http://va.gov/donec/ut/dolor/morbi/vel.aspx', 'http://uiuc.edu/lacus/purus/aliquet/at/feugiat/non.xml');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (47, 1, 'faucibus', 9, 'https://prlog.org/quam/sapien/varius/ut/blandit.json', 'http://wikipedia.org/dolor/vel/est.aspx');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (48, 5, 'luctus', 10, 'http://cafepress.com/diam/nam/tristique/tortor/eu/pede.json', 'https://globo.com/in/libero/ut.png');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (49, 5, 'auctor', 3, 'http://google.cn/venenatis/turpis/enim.json', 'http://typepad.com/elit/sodales/scelerisque.png');
insert into "Lesson" (id, course_id, name, number, stanza, sound) values (50, 4, 'viverra', 2, 'https://bloglines.com/purus/eu/magna/vulputate.html', 'https://epa.gov/nam/congue/risus/semper/porta.jpg');


-- COURSE_LESSON table --
create table "Course_Lesson" (
	id INT,
	user_id INT,
	course_id INT,
	lesson_id INT,
	is_completed BOOLEAN
);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (1, 18, 2, 39, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (2, 4, 2, 50, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (3, 11, 5, 1, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (4, 5, 5, 2, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (5, 2, 3, 46, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (6, 4, 1, 12, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (7, 2, 4, 42, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (8, 20, 2, 44, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (9, 16, 1, 3, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (10, 13, 3, 7, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (11, 1, 3, 47, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (12, 14, 5, 44, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (13, 4, 2, 14, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (14, 6, 3, 34, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (15, 10, 5, 12, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (16, 1, 5, 30, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (17, 15, 1, 40, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (18, 3, 5, 10, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (19, 17, 5, 26, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (20, 19, 1, 6, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (21, 9, 3, 22, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (22, 11, 1, 17, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (23, 20, 2, 23, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (24, 5, 5, 26, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (25, 4, 2, 17, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (26, 1, 4, 22, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (27, 3, 3, 25, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (28, 16, 5, 4, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (29, 14, 3, 32, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (30, 1, 5, 8, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (31, 7, 5, 50, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (32, 19, 1, 48, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (33, 2, 4, 50, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (34, 11, 3, 21, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (35, 2, 2, 32, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (36, 2, 3, 45, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (37, 9, 5, 20, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (38, 8, 2, 7, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (39, 4, 3, 13, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (40, 4, 2, 15, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (41, 16, 3, 18, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (42, 20, 2, 49, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (43, 14, 1, 1, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (44, 6, 1, 32, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (45, 3, 3, 34, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (46, 1, 1, 9, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (47, 18, 5, 12, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (48, 15, 2, 32, false);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (49, 2, 2, 50, true);
insert into "Course_Lesson" (id, user_id, course_id, lesson_id, is_completed) values (50, 15, 3, 39, false);


-- CONTACT table --
create table "Contact" (
	id INT,
	first_name TEXT,
	last_name TEXT,
	email VARCHAR(50),
	message TEXT,
	is_handled BOOLEAN
);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (1, 'Ambrosi', 'Ion', 'aion0@newyorker.com', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (2, 'Jarred', 'Cocher', 'jcocher1@people.com.cn', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (3, 'Roxi', 'Dana', 'rdana2@vk.com', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (4, 'Christie', 'Saxon', 'csaxon3@sakura.ne.jp', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (5, 'Judie', 'Gritsunov', 'jgritsunov4@washingtonpost.com', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (6, 'Lee', 'Allerton', 'lallerton5@sbwire.com', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (7, 'Lindsay', 'Agiolfinger', 'lagiolfinger6@barnesandnoble.com', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', true);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (8, 'Minerva', 'Bodycote', 'mbodycote7@4shared.com', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', true);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (9, 'Nicolina', 'Holstein', 'nholstein8@parallels.com', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', false);
insert into "Contact" (id, first_name, last_name, email, message, is_handled) values (10, 'Wynn', 'Coners', 'wconers9@wikimedia.org', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', true);


