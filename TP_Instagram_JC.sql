-- Créer les différentes tables
CREATE TABLE users (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nom VARCHAR(50) NOT NULL, prenom VARCHAR(50) NOT NULL, username VARCHAR(30) NOT NULL, email VARCHAR(60), avatar VARCHAR(100), bio TEXT);

CREATE TABLE pics (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, url VARCHAR(100) NOT NULL, user_id INT NOT NULL, FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE RESTRICT);

CREATE TABLE coms (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, contenu VARCHAR(140) NOT NULL, user_id INT NOT NULL, pic_id INT NOT NULL, FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE RESTRICT, FOREIGN KEY(pic_id) REFERENCES pics(id) ON DELETE RESTRICT);

CREATE TABLE likepic (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, pic_id INT NOT NULL, FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE RESTRICT, FOREIGN KEY(pic_id) REFERENCES pics(id) ON DELETE RESTRICT, CONSTRAINT uniquelikepic UNIQUE (user_id,pic_id));

CREATE TABLE likecom (id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, com_id INT NOT NULL, FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE RESTRICT, FOREIGN KEY(com_id) REFERENCES coms(id) ON DELETE RESTRICT, CONSTRAINT uniquelikecom UNIQUE (user_id,com_id));


-- Remplissage users

insert into users (nom, prenom, username, email, avatar, bio) values ('Sinden', 'Dieter', 'dsinden0', 'dsinden0@youtube.com', 'http://nsw.gov.au/odio/cras/mi/pede.html', 'ut dolor morbi vel lectus in quam fringilla rhoncus mauris');
insert into users (nom, prenom, username, email, avatar, bio) values ('Weben', 'Gennifer', 'gweben1', 'gweben1@cnbc.com', 'http://cdbaby.com/fermentum.json', 'feugiat et eros vestibulum ac');
insert into users (nom, prenom, username, email, avatar, bio) values ('Fullerd', 'Sterling', 'sfullerd2', 'sfullerd2@dagondesign.com', 'http://cornell.edu/tincidunt/ante/vel.xml', 'at nunc commodo placerat praesent blandit nam nulla');
insert into users (nom, prenom, username, email, avatar, bio) values ('Bryning', 'Hobard', 'hbryning3', 'hbryning3@nbcnews.com', 'https://unicef.org/ultrices/posuere.jpg', 'non sodales sed tincidunt eu felis fusce posuere felis');
insert into users (nom, prenom, username, email, avatar, bio) values ('Babbe', 'Lowell', 'lbabbe4', 'lbabbe4@mit.edu', 'http://sfgate.com/placerat/ante/nulla/justo/aliquam/quis.jsp', 'aliquam non mauris morbi non lectus aliquam sit');
insert into users (nom, prenom, username, email, avatar, bio) values ('Tomczykowski', 'Katherine', 'ktomczykowski5', 'ktomczykowski5@lulu.com', 'https://forbes.com/proin/risus.json', 'ligula in lacus curabitur at ipsum ac');
insert into users (nom, prenom, username, email, avatar, bio) values ('Norquay', 'Cesare', 'cnorquay6', 'cnorquay6@naver.com', 'http://lulu.com/sit/amet/sapien/dignissim/vestibulum/vestibulum/ante.png', 'et ultrices posuere cubilia curae nulla');
insert into users (nom, prenom, username, email, avatar, bio) values ('Hornbuckle', 'Sybil', 'shornbuckle7', 'shornbuckle7@pagesperso-orange.fr', 'http://imdb.com/et/ultrices/posuere/cubilia.xml', 'nisi volutpat eleifend donec ut');
insert into users (nom, prenom, username, email, avatar, bio) values ('Roots', 'Timotheus', 'troots8', 'troots8@globo.com', 'http://drupal.org/ut/odio/cras/mi/pede.xml', 'purus eu magna vulputate luctus cum sociis natoque penatibus');
insert into users (nom, prenom, username, email, avatar, bio) values ('Paulitschke', 'Cynthie', 'cpaulitschke9', 'cpaulitschke9@sina.com.cn', 'https://github.com/dui/proin/leo/odio/porttitor/id.aspx', 'non quam nec dui luctus rutrum nulla');
insert into users (nom, prenom, username, email, avatar, bio) values ('Roan', 'Lindy', 'lroana', 'lroana@delicious.com', 'http://moonfruit.com/sit.xml', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in');
insert into users (nom, prenom, username, email, avatar, bio) values ('McBride', 'Ricky', 'rmcbrideb', 'rmcbrideb@ameblo.jp', 'https://usnews.com/feugiat/non/pretium/quis/lectus/suspendisse.aspx', 'nisi venenatis tristique fusce congue diam id');
insert into users (nom, prenom, username, email, avatar, bio) values ('Peinke', 'Merle', 'mpeinkec', 'mpeinkec@msn.com', 'https://tripadvisor.com/faucibus/orci/luctus/et/ultrices/posuere/cubilia.json', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum');
insert into users (nom, prenom, username, email, avatar, bio) values ('Puig', 'Melvyn', 'mpuigd', 'mpuigd@fda.gov', 'https://dailymail.co.uk/pede/ullamcorper/augue/a/suscipit/nulla/elit.html', 'eget eros elementum pellentesque quisque porta volutpat erat');
insert into users (nom, prenom, username, email, avatar, bio) values ('Tullett', 'Tammie', 'ttullette', 'ttullette@google.com.au', 'https://networkadvertising.org/suscipit/a/feugiat/et/eros/vestibulum.jsp', 'primis in faucibus orci luctus et ultrices posuere');
insert into users (nom, prenom, username, email, avatar, bio) values ('Simakov', 'Michelle', 'msimakovf', 'msimakovf@webmd.com', 'https://buzzfeed.com/nunc/donec/quis/orci/eget/orci.jpg', 'nisi at nibh in hac habitasse platea dictumst');
insert into users (nom, prenom, username, email, avatar, bio) values ('Fowlds', 'Waring', 'wfowldsg', 'wfowldsg@yahoo.com', 'https://deviantart.com/donec/posuere/metus/vitae.xml', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt');
insert into users (nom, prenom, username, email, avatar, bio) values ('Fruchter', 'Hyacinthe', 'hfruchterh', 'hfruchterh@blogtalkradio.com', 'https://cloudflare.com/ac.png', 'amet eros suspendisse accumsan tortor quis turpis');
insert into users (nom, prenom, username, email, avatar, bio) values ('Bortolotti', 'Hana', 'hbortolottii', 'hbortolottii@diigo.com', 'https://phpbb.com/fermentum/donec/ut/mauris/eget.json', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis');
insert into users (nom, prenom, username, email, avatar, bio) values ('Jacketts', 'Fae', 'fjackettsj', 'fjackettsj@lycos.com', 'https://phoca.cz/venenatis.jpg', 'diam in magna bibendum imperdiet nullam orci pede');

--remplissage pics

insert into pics (url, user_id) values ('http://slideshare.net/tortor/quis/turpis/sed/ante/vivamus/tortor.aspx', 17);
insert into pics (url, user_id) values ('https://privacy.gov.au/dolor/quis/odio/consequat/varius/integer/ac.json', 20);
insert into pics (url, user_id) values ('http://zimbio.com/vulputate/justo/in/blandit/ultrices/enim/lorem.png', 17);
insert into pics (url, user_id) values ('http://elpais.com/id.jpg', 13);
insert into pics (url, user_id) values ('https://craigslist.org/ipsum/integer/a/nibh/in/quis/justo.html', 18);
insert into pics (url, user_id) values ('http://dion.ne.jp/porttitor/lorem.xml', 12);
insert into pics (url, user_id) values ('http://bluehost.com/proin.jsp', 7);
insert into pics (url, user_id) values ('http://hugedomains.com/dui/nec/nisi/volutpat/eleifend/donec.png', 13);
insert into pics (url, user_id) values ('https://archive.org/nisl/ut/volutpat/sapien/arcu/sed.html', 9);
insert into pics (url, user_id) values ('https://mediafire.com/nam/dui.xml', 7);
insert into pics (url, user_id) values ('https://sciencedaily.com/id/nulla.xml', 4);
insert into pics (url, user_id) values ('https://dropbox.com/posuere.json', 13);
insert into pics (url, user_id) values ('http://com.com/mauris/vulputate/elementum/nullam.js', 10);
insert into pics (url, user_id) values ('https://joomla.org/eget/tincidunt.html', 13);
insert into pics (url, user_id) values ('https://uol.com.br/dictumst/morbi/vestibulum.json', 3);
insert into pics (url, user_id) values ('https://seattletimes.com/nisl/ut/volutpat.xml', 8);
insert into pics (url, user_id) values ('https://123-reg.co.uk/fusce/congue/diam/id.png', 14);
insert into pics (url, user_id) values ('http://aboutads.info/ut.aspx', 4);
insert into pics (url, user_id) values ('https://cdc.gov/tortor/sollicitudin/mi/sit/amet/lobortis/sapien.jsp', 16);
insert into pics (url, user_id) values ('http://mapy.cz/dictumst/etiam/faucibus/cursus/urna/ut.aspx', 19);

-- remplissage coms

insert into coms (contenu, user_id, pic_id) values ('Realigned zero defect local area network', 15, 14);
insert into coms (contenu, user_id, pic_id) values ('Reverse-engineered secondary architecture', 7, 4);
insert into coms (contenu, user_id, pic_id) values ('Vision-oriented impactful circuit', 6, 6);
insert into coms (contenu, user_id, pic_id) values ('Synergized 24 hour internet solution', 7, 12);
insert into coms (contenu, user_id, pic_id) values ('Robust hybrid parallelism', 17, 8);
insert into coms (contenu, user_id, pic_id) values ('Innovative intermediate attitude', 17, 2);
insert into coms (contenu, user_id, pic_id) values ('Distributed intermediate standardization', 14, 11);
insert into coms (contenu, user_id, pic_id) values ('Exclusive maximized framework', 18, 16);
insert into coms (contenu, user_id, pic_id) values ('Reverse-engineered executive workforce', 15, 6);
insert into coms (contenu, user_id, pic_id) values ('Innovative dedicated algorithm', 15, 2);
insert into coms (contenu, user_id, pic_id) values ('Extended multimedia moderator', 16, 11);
insert into coms (contenu, user_id, pic_id) values ('Profound stable parallelism', 4, 18);
insert into coms (contenu, user_id, pic_id) values ('Profit-focused logistical application', 12, 1);
insert into coms (contenu, user_id, pic_id) values ('Implemented directional approach', 3, 15);
insert into coms (contenu, user_id, pic_id) values ('Cloned 3rd generation productivity', 7, 15);
insert into coms (contenu, user_id, pic_id) values ('Exclusive static internet solution', 18, 1);
insert into coms (contenu, user_id, pic_id) values ('Focused asynchronous strategy', 2, 11);
insert into coms (contenu, user_id, pic_id) values ('Sharable grid-enabled functionalities', 5, 4);
insert into coms (contenu, user_id, pic_id) values ('Multi-tiered zero tolerance system engine', 7, 13);
insert into coms (contenu, user_id, pic_id) values ('Organic needs-based interface', 12, 14);

-- remplissage likepic

insert into likepic (user_id, pic_id) values (19, 4);
insert into likepic (user_id, pic_id) values (19, 16);
insert into likepic (user_id, pic_id) values (13, 18);
insert into likepic (user_id, pic_id) values (9, 3);
insert into likepic (user_id, pic_id) values (18, 10);
insert into likepic (user_id, pic_id) values (16, 15);
insert into likepic (user_id, pic_id) values (5, 4);
insert into likepic (user_id, pic_id) values (12, 17);
insert into likepic (user_id, pic_id) values (5, 6);
insert into likepic (user_id, pic_id) values (12, 12);
insert into likepic (user_id, pic_id) values (7, 15);
insert into likepic (user_id, pic_id) values (16, 7);
insert into likepic (user_id, pic_id) values (16, 3);
insert into likepic (user_id, pic_id) values (4, 2);
insert into likepic (user_id, pic_id) values (5, 15);
insert into likepic (user_id, pic_id) values (17, 14);
insert into likepic (user_id, pic_id) values (17, 5);
insert into likepic (user_id, pic_id) values (18, 8);
insert into likepic (user_id, pic_id) values (4, 5);
insert into likepic (user_id, pic_id) values (9, 8);

-- remplissage likecom

insert into likecom (user_id, com_id) values (13, 3);
insert into likecom (user_id, com_id) values (9, 4);
insert into likecom (user_id, com_id) values (1, 12);
insert into likecom (user_id, com_id) values (10, 18);
insert into likecom (user_id, com_id) values (20, 3);
insert into likecom (user_id, com_id) values (10, 20);
insert into likecom (user_id, com_id) values (18, 1);
insert into likecom (user_id, com_id) values (17, 14);
insert into likecom (user_id, com_id) values (9, 1);
insert into likecom (user_id, com_id) values (18, 5);
insert into likecom (user_id, com_id) values (15, 6);
insert into likecom (user_id, com_id) values (3, 16);
insert into likecom (user_id, com_id) values (13, 13);
insert into likecom (user_id, com_id) values (16, 5);
insert into likecom (user_id, com_id) values (12, 14);
insert into likecom (user_id, com_id) values (2, 2);
insert into likecom (user_id, com_id) values (15, 9);
insert into likecom (user_id, com_id) values (7, 8);
insert into likecom (user_id, com_id) values (16, 18);
insert into likecom (user_id, com_id) values (13, 10);

-- 4. afficher com et username

SELECT coms.contenu, users.username FROM coms INNER JOIN users ON user_id=users.id; 

-- 5. afficher com et post associé

SELECT coms.contenu, pics.url FROM coms INNER JOIN pics ON pic_id=pics.id; 

-- 6. Url de chaque photo + username
SELECT pics.url, users.username FROM pics INNER JOIN users ON user_id=users.id; 

-- 7. selectionner les commentaires de la pic 11

SELECT coms.contenu, users.username FROM coms INNER JOIN users ON users.id=user_id WHERE pic_id=11;

-- 8 & 9. Présenter les commentaires postés par l'auteur de la photo

SELECT pics.url, coms.contenu, users.username FROM coms INNER JOIN pics ON pics.id=coms.pic_id INNER JOIN users ON coms.user_id=users.id  WHERE pics.user_id=coms.user_id;

-- 10. Nombre de likes pour la photo ID 4

SELECT COUNT(likepic.user_id) FROM likepic WHERE likepic.pic_id=4;

-- 11. Dépôt Github(personnel) bien documenté avec toutes les Requete