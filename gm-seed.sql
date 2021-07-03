-- SEED DATA ---
DROP DATABASE gracemusic;
CREATE DATABASE gracemusic;
\connect gracemusic

DROP TABLE IF EXISTS "User" CASCADE;
DROP TABLE IF EXISTS "Course" CASCADE;
DROP TABLE IF EXISTS "Lesson" CASCADE;
DROP TABLE IF EXISTS "Course_Lesson" CASCADE;
DROP TABLE IF EXISTS "Contact" CASCADE;

-- // '"User"' seed data //
CREATE TABLE "User" (
	id SERIAL PRIMARY KEY,
	username VARCHAR(100),
	first_name TEXT,
	last_name TEXT,
	password VARCHAR(100),
	email VARCHAR(100),
	is_admin BOOLEAN
);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('apauletto0', 'Arabela', 'Pauletto', 'ZqqK61eW', 'apauletto0@examiner.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('mtopley1', 'Mommy', 'Topley', 'XbbfnjZEwQ', 'mtopley1@eventbrite.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('bseebert2', 'Barnebas', 'Seebert', 'OtF3jiPMimRs', 'bseebert2@google.co.uk', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('tmcconville3', 'Toddie', 'McConville', 'eWoE7XL0AQj7', 'tmcconville3@people.com.cn', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('kdurning4', 'Kirk', 'Durning', 'sVOKwFf9il', 'kdurning4@umich.edu', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('cmccraine5', 'Cher', 'McCraine', 'pXEPNIlmNoz', 'cmccraine5@prlog.org', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('sstannion6', 'Simona', 'Stannion', 'XKq2ufoD', 'sstannion6@barnesandnoble.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('gmoline7', 'Gerhardt', 'Moline', 'mETMBBJTxN', 'gmoline7@mail.ru', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('ttinham8', 'Terri-jo', 'Tinham', 'YZpHNIVBX97R', 'ttinham8@discovery.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('pmccullum9', 'Penny', 'McCullum', '2ovavlT', 'pmccullum9@dailymotion.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('mrafea', 'Malena', 'Rafe', '3KJXqxbiZ', 'mrafea@sina.com.cn', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('vohagirtieb', 'Victor', 'O''Hagirtie', 'QKyISKC', 'vohagirtieb@squarespace.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('asibbertc', 'Alika', 'Sibbert', 'TgXK9G', 'asibbertc@elpais.com', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('tweeklyd', 'Thain', 'Weekly', 'y3rBCmgTX', 'tweeklyd@behance.net', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('akellawaye', 'Adara', 'Kellaway', '2v2l04EpsysP', 'akellawaye@sitemeter.com', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('kkewzickf', 'Katusha', 'Kewzick', '6XxVlWH', 'kkewzickf@nih.gov', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('kbensteadg', 'Karia', 'Benstead', 'eoPNeQ7', 'kbensteadg@noaa.gov', true);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('tstorrockh', 'Trudie', 'Storrock', 'Wi3O7CUr', 'tstorrockh@desdev.cn', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('nfeatonbyi', 'Norean', 'Featonby', 'ryoEVL6', 'nfeatonbyi@yellowbook.com', false);
INSERT INTO "User" (username, first_name, last_name, password, email, is_admin) VALUES ('rscneiderj', 'Rycca', 'Scneider', '3sDAUdF', 'rscneiderj@ning.com', false);


-- COURSE table --
CREATE TABLE "Course" (
	id SERIAL PRIMARY KEY,
	name TEXT,
	level INT
);
INSERT INTO "Course" (name, level) VALUES ('dictumst', 4);
INSERT INTO "Course" (name, level) VALUES ('in', 4);
INSERT INTO "Course" (name, level) VALUES ('orci', 5);
INSERT INTO "Course" (name, level) VALUES ('convallis', 3);
INSERT INTO "Course" (name, level) VALUES ('scelerisque', 2);


-- LESSON table --
CREATE TABLE "Lesson" (
	id SERIAL PRIMARY KEcourse_id INT,
	name TEXT,
	number INT,
	stanza VARCHAR(1000),
	sound VARCHAR(1000)
);
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 4, 'lectus', 1, 'http://marketwatch.com/primis/in/faucibus.jpg', 'https://pen.io/vel/accumsan/tellus/nisi/eu.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 1, 'cursus', 1, 'https://cnn.com/massa/id/nisl/venenatis.jpg', 'https://bbc.co.uk/tristique/fusce/congue/diam.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 3, 'justo', 7, 'https://nyu.edu/vestibulum/sagittis.json', 'http://craigslist.org/nullam/orci/pede/venenatis/non/sodales/sed.js');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 3, 'amet', 2, 'https://nih.gov/eleifend/quam/a/odio/in.jpg', 'https://foxnews.com/in.xml');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 1, 'nulla', 9, 'http://multiply.com/integer/pede/justo/lacinia/eget/tincidunt/eget.jpg', 'http://goo.gl/est/phasellus/sit/amet/erat.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 4, 'morbi', 10, 'https://jimdo.com/auctor/sed.aspx', 'http://meetup.com/bibendum/imperdiet/nullam/orci/pede/venenatis/non.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 1, 'at', 5, 'http://weather.com/sem/fusce/consequat/nulla/nisl/nunc/nisl.html', 'http://google.com.br/enim.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 5, 'at', 1, 'https://webeden.co.uk/luctus/et/ultrices.png', 'https://businesswire.com/volutpat/in/congue/etiam/justo.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES 5, 'ipsum', 5, 'http://webmd.com/elementum/nullam/varius/nulla/facilisi/cras.jpg', 'http://aol.com/eleifend/donec/ut.aspx');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'quis', 6, 'https://weebly.com/consequat/ut/nulla/sed/accumsan.aspx', 'https://webmd.com/dapibus/duis/at.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (5, 'suspendisse', 10, 'https://examiner.com/congue/diam/id.js', 'http://last.fm/erat/nulla/tempus/vivamus/in/felis/eu.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'morbi', 2, 'https://businessinsider.com/ante.aspx', 'http://people.com.cn/sit/amet/justo.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'sapien', 9, 'http://seesaa.net/amet/erat/nulla/tempus/vivamus.xml', 'http://cnbc.com/luctus/et.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (5, 'magna', 10, 'https://about.me/malesuada/in/imperdiet/et/commodo/vulputate.xml', 'http://posterous.com/massa/donec/dapibus/duis/at/velit.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'erat', 10, 'http://statcounter.com/eget/nunc.png', 'https://angelfire.com/odio/donec/vitae.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'ut', 3, 'http://slate.com/auctor/gravida/sem/praesent/id/massa/id.html', 'http://state.gov/vestibulum.js');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'cras', 3, 'http://t.co/nulla/pede/ullamcorper/augue/a/suscipit/nulla.aspx', 'https://reference.com/in/felis.js');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'hac', 7, 'http://gov.uk/volutpat/in/congue/etiam/justo.aspx', 'http://noaa.gov/vitae/ipsum/aliquam/non/mauris/morbi/non.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'morbi', 6, 'http://adobe.com/ac/consequat/metus/sapien/ut/nunc.jpg', 'https://nydailynews.com/orci/eget/orci/vehicula.aspx');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (5, 'turpis', 3, 'https://seesaa.net/volutpat/quam/pede/lobortis/ligula/sit.json', 'https://shutterfly.com/eu/orci/mauris/lacinia/sapien/quis/libero.xml');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'natoque', 1, 'http://elpais.com/cursus/urna/ut/tellus.png', 'https://pbs.org/ipsum/primis/in/faucibus/orci/luctus.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'in', 5, 'https://ebay.com/mattis/egestas/metus/aenean/fermentum/donec.jpg', 'http://geocities.com/vel.html');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'sit', 7, 'http://delicious.com/vestibulum/velit/id/pretium/iaculis/diam/erat.html', 'http://smugmug.com/habitasse/platea/dictumst.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'cursus', 2, 'https://imdb.com/non/mi/integer/ac/neque/duis.jsp', 'https://miitbeian.gov.cn/nisl/nunc/nisl/duis/bibendum.png');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'sapien', 10, 'http://geocities.com/eu/massa.jpg', 'http://reddit.com/sapien/a.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'vestibulum', 1, 'http://wufoo.com/ligula/in/lacus.html', 'https://ibm.com/sodales.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'metus', 9, 'http://wunderground.com/ultrices/libero/non/mattis/pulvinar/nulla.json', 'http://mapquest.com/cubilia/curae/donec/pharetra/magna/vestibulum.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'nibh', 5, 'https://merriam-webster.com/aliquam/non/mauris/morbi/non/lectus/aliquam.html', 'http://networksolutions.com/vel/ipsum.xml');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'odio', 6, 'https://instagram.com/aliquam/quis/turpis.jpg', 'https://yelp.com/sit/amet/nulla.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'in', 9, 'https://addthis.com/nibh/in/lectus/pellentesque/at/nulla/suspendisse.aspx', 'http://nydailynews.com/sed/ante/vivamus/tortor/duis.html');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'sit', 8, 'https://sun.com/justo/maecenas/rhoncus/aliquam/lacus.html', 'https://hp.com/non/velit.html');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'venenatis', 10, 'https://liveinternet.ru/id/massa.png', 'http://abc.net.au/ultrices/posuere/cubilia/curae.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'aliquet', 6, 'http://nymag.com/vulputate/elementum.jsp', 'https://wix.com/lacinia/erat/vestibulum/sed/magna.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'nam', 2, 'http://jigsy.com/venenatis/non/sodales/sed/tincidunt/eu.jsp', 'http://economist.com/ornare/imperdiet.png');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'quisque', 3, 'http://bizjournals.com/augue/vestibulum/ante/ipsum/primis/in.json', 'https://ihg.com/duis/ac/nibh/fusce/lacus/purus/aliquet.js');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'eleifend', 9, 'http://yellowbook.com/nisi/nam/ultrices.json', 'http://pbs.org/sociis/natoque/penatibus/et/magnis/dis/parturient.html');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'in', 5, 'http://hubpages.com/ut/dolor/morbi.js', 'http://usatoday.com/vulputate/nonummy/maecenas/tincidunt/lacus/at/velit.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'integer', 7, 'http://tripadvisor.com/turpis/elementum/ligula/vehicula/consequat.jpg', 'http://shinystat.com/nec/nisi.xml');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'sagittis', 6, 'http://flavors.me/adipiscing/elit/proin/risus/praesent.xml', 'http://tinyurl.com/ut/mauris/eget/massa/tempor.xml');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'donec', 7, 'http://shinystat.com/sed/interdum/venenatis.xml', 'https://washington.edu/placerat/praesent/blandit/nam/nulla.js');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (5, 'vulputate', 1, 'http://google.com/luctus/nec/molestie/sed/justo.png', 'https://wp.com/nisl/nunc/rhoncus/dui/vel.json');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'hendrerit', 4, 'http://spiegel.de/at/ipsum/ac/tellus/semper/interdum/mauris.aspx', 'https://nifty.com/natoque/penatibus/et.jsp');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (2, 'posuere', 4, 'http://wikispaces.com/magna/bibendum.aspx', 'https://yale.edu/consequat/in/consequat/ut.jpg');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (3, 'in', 8, 'http://wix.com/sapien/quis.js', 'https://github.io/proin/eu/mi.png');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'dictumst', 9, 'http://google.ca/at.html', 'http://diigo.com/tincidunt/eu/felis.html');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'platea', 6, 'http://va.gov/donec/ut/dolor/morbi/vel.aspx', 'http://uiuc.edu/lacus/purus/aliquet/at/feugiat/non.xml');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (1, 'faucibus', 9, 'https://prlog.org/quam/sapien/varius/ut/blandit.json', 'http://wikipedia.org/dolor/vel/est.aspx');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (5, 'luctus', 10, 'http://cafepress.com/diam/nam/tristique/tortor/eu/pede.json', 'https://globo.com/in/libero/ut.png');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (5, 'auctor', 3, 'http://google.cn/venenatis/turpis/enim.json', 'http://typepad.com/elit/sodales/scelerisque.png');
INSERT INTO "Lesson" (course_id, name, number, stanza, sound) VALUES (4, 'viverra', 2, 'https://bloglines.com/purus/eu/magna/vulputate.html', 'https://epa.gov/nam/congue/risus/semper/porta.jpg');


-- COURSE_LESSON table --
CREATE TABLE "Course_Lesson" (
	id SERIAL PRIMARY KEY,
	user_id INT,
	course_id INT,
	lesson_id INT,
	is_completed BOOLEAN
);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (18, 2, 39, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (4, 2, 50, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (11, 5, 1, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (5, 5, 2, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (2, 3, 46, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (4, 1, 12, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (2, 4, 42, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (20, 2, 44, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (16, 1, 3, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (13, 3, 7, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (1, 3, 47, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (14, 5, 44, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (4, 2, 14, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (6, 3, 34, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (10, 5, 12, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (1, 5, 30, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (15, 1, 40, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (3, 5, 10, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (17, 5, 26, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (19, 1, 6, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (9, 3, 22, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (11, 1, 17, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (20, 2, 23, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (5, 5, 26, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (4, 2, 17, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (1, 4, 22, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (3, 3, 25, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (16, 5, 4, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (14, 3, 32, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (1, 5, 8, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (7, 5, 50, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (19, 1, 48, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (2, 4, 50, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (11, 3, 21, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (2, 2, 32, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (2, 3, 45, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (9, 5, 20, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (8, 2, 7, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (4, 3, 13, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (4, 2, 15, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (16, 3, 18, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (20, 2, 49, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (14, 1, 1, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (6, 1, 32, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (3, 3, 34, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (1, 1, 9, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (18, 5, 12, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (15, 2, 32, false);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (2, 2, 50, true);
INSERT INTO "Course_Lesson" (user_id, course_id, lesson_id, is_completed) VALUES (15, 3, 39, false);


-- CONTACT table --
CREATE TABLE "Contact" (
	id SERIAL PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	email VARCHAR(100),
	message TEXT,
	is_handled BOOLEAN
);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Ambrosi', 'Ion', 'aion0@newyorker.com', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Jarred', 'Cocher', 'jcocher1@people.com.cn', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Roxi', 'Dana', 'rdana2@vk.com', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Christie', 'Saxon', 'csaxon3@sakura.ne.jp', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Judie', 'Gritsunov', 'jgritsunov4@washingtonpost.com', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Lee', 'Allerton', 'lallerton5@sbwire.com', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Lindsay', 'Agiolfinger', 'lagiolfinger6@barnesandnoble.com', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', true);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Minerva', 'Bodycote', 'mbodycote7@4shared.com', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', true);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Nicolina', 'Holstein', 'nholstein8@parallels.com', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', false);
INSERT INTO "Contact" (first_name, last_name, email, message, is_handled) VALUES ('Wynn', 'Coners', 'wconers9@wikimedia.org', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', true);


-- ALTER TABLE "Lesson" ADD CONSTRAINT "fk_Lesson_course_id" FOREIGN Kcourse_id")
-- REFERENCES "Course" ("id");

-- ALTER TABLE "Course_Lesson" ADD CONSTRAINT "fk_Course_Lesson_user_id" FOREIGN KEY("user_id")
-- REFERENCES "User" ("id");

-- ALTER TABLE "Course_Lesson" ADD CONSTRAINT "fk_Course_Lesson_course_id" FOREIGN Kcourse_id")
-- REFERENCES "Course" ("id");

-- ALTER TABLE "Course_Lesson" ADD CONSTRAINT "fk_Course_Lesson_lesson_id" FOREIGN KEY("lesson_id")
-- REFERENCES "Lesson" ("id");