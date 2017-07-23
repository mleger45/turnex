BEGIN TRANSACTION;
CREATE TABLE "forms_turnexform" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(10) NOT NULL, "details" text NULL, "order" integer NOT NULL, "published" bool NOT NULL);
INSERT INTO `forms_turnexform` VALUES (1,'Entrada','[{"type":"Site","color":"#f0c944"},{"type":"Usuario","color":"#ff8484"},{"type":"Mandatario","color":"#6ab9ec"}]',0,1);
INSERT INTO `forms_turnexform` VALUES (2,'Caja','[{"type":"0 KM","color":"#86a91c"},{"type":"Patente","color":"#848bc8"}]',1,1);
INSERT INTO `forms_turnexform` VALUES (3,'0 KM','[{"type":"nuevo 1","color":"red"},{"type":"nuevo 2","color":"black"}]',2,0);
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO `django_session` VALUES ('26eoavmrsg63t2fqx1qcj4ehzmaeyly3','ZGFkYTNkZDEzNzFjYjViYTdlYTE3ZDg0ZTI4NjMwNzVlYmJjOTlkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMTc3MjFlZWI3ZTFmMzViNmE5NDc0Yjg2NmUzYzFjOWU4YzVjZDVlIn0=','2017-07-02 05:16:37.465778');
INSERT INTO `django_session` VALUES ('chnc37c9441f585114cf0501356b3f20','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:27:30.357933');
INSERT INTO `django_session` VALUES ('chn7c8472ad8e27277f5bb72bb21101d','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:27:40.843737');
INSERT INTO `django_session` VALUES ('chnf42531412577dfa7a6c41f944356b','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:27:45.016097');
INSERT INTO `django_session` VALUES ('chn608894fb3e788c1f0ad7df2e4081b','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:27:50.018546');
INSERT INTO `django_session` VALUES ('chn46e1e661567d7ec61694fbb5bd552','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:29:20.144283');
INSERT INTO `django_session` VALUES ('chn5fff36f647c00a0403d2b885662e8','ZjNhYTU0ZjZjOTlhYzM2ODZkYzY0YTY2ZGI2ZjMxNTExZWM1OGI3Yzp7InJvb20iOiJrYXNqZGthcyJ9','2017-07-02 05:35:01.058599');
INSERT INTO `django_session` VALUES ('chn02ad2cc850e2b9024c3fffde7ddd1','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:35:12.887006');
INSERT INTO `django_session` VALUES ('chnf0e92968ced3465a70d0efd76f0ea','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:35:17.853884');
INSERT INTO `django_session` VALUES ('chn875ff664d6f28ab10abecac9f4179','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:50:29.277773');
INSERT INTO `django_session` VALUES ('chnc4cfada8aa04474ab828a1049ed5a','NTAwNjljYTFjM2RhZDBhYmRlOGNlNTVhMzhkM2MwNDg2Zjc4NzdlMjp7InJvb20iOiJ2MSJ9','2017-07-02 05:52:11.971587');
INSERT INTO `django_session` VALUES ('chn0235314bedf89e9c69d94905b41e1','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:52:43.618515');
INSERT INTO `django_session` VALUES ('chn709a7619c017db3207ca5a7c0d10d','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:53:24.966756');
INSERT INTO `django_session` VALUES ('chn23ed907d9d8db762335763d4c5fc5','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:54:24.328667');
INSERT INTO `django_session` VALUES ('chnfd24bc16fa48b7933e330a2478a16','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:54:24.341478');
INSERT INTO `django_session` VALUES ('chnfb43684634a456c2cec669d9f2a52','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:54:24.333378');
INSERT INTO `django_session` VALUES ('chn9fbfb70da8da6cdf6260c330ab03e','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:54:37.982024');
INSERT INTO `django_session` VALUES ('chna78b102f7021edb0d129d06909567','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:54:48.486017');
INSERT INTO `django_session` VALUES ('chn32f67d809a708b8a23c3ca9b09f0b','NTAwNjljYTFjM2RhZDBhYmRlOGNlNTVhMzhkM2MwNDg2Zjc4NzdlMjp7InJvb20iOiJ2MSJ9','2017-07-02 05:55:01.718200');
INSERT INTO `django_session` VALUES ('chn08565bcec5d64563b504d26ba0f8a','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:55:15.326958');
INSERT INTO `django_session` VALUES ('chnd03a880aeabf24cd9fbb38136c3c3','NTAwNjljYTFjM2RhZDBhYmRlOGNlNTVhMzhkM2MwNDg2Zjc4NzdlMjp7InJvb20iOiJ2MSJ9','2017-07-02 05:55:27.548228');
INSERT INTO `django_session` VALUES ('chn38c986ae5136e5e0f55940dff4195','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:56:06.270092');
INSERT INTO `django_session` VALUES ('chn22d9038246cc332c24480b08abba7','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:56:15.963577');
INSERT INTO `django_session` VALUES ('chn4234057592d081fe29eba40c326fc','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:56:44.821414');
INSERT INTO `django_session` VALUES ('chn08ab3fa79db0f405d4aab6eac43bb','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:57:00.903249');
INSERT INTO `django_session` VALUES ('chn02295701514b28d5923644dcf0b67','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:57:18.326488');
INSERT INTO `django_session` VALUES ('chn9987822463499acc0c127b22febae','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:59:04.341390');
INSERT INTO `django_session` VALUES ('chn1002685cbb86d0521557e3303f964','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:59:14.229157');
INSERT INTO `django_session` VALUES ('chn1b3bf6ac3e7b8939fc2deb713083b','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:59:19.021952');
INSERT INTO `django_session` VALUES ('chna56edcd1a99300912040edd9f237c','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:59:24.020678');
INSERT INTO `django_session` VALUES ('chn4e6e5abc40b597ef6f961ed392d51','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:59:29.021160');
INSERT INTO `django_session` VALUES ('chn936b74a93ee594438a07b8bc6b5f6','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 05:59:40.521517');
INSERT INTO `django_session` VALUES ('chnbf0b2b6e057e4a935eee51f903060','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 05:59:59.274350');
INSERT INTO `django_session` VALUES ('chnb1d43c8ea2c96297d3c62abc85235','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 06:00:07.758629');
INSERT INTO `django_session` VALUES ('chncdf73541899e5c429ed8ec5956eda','ZWFhYjViMGRhMjgyYWUwMDY2ZGZmY2JlODdiNmU4YWZhNjkzZmY2Mzp7InJvb20iOiJxdyJ9','2017-07-02 06:00:16.872834');
INSERT INTO `django_session` VALUES ('chnf1bcabbb90329c756abf0db4ac5fc','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:00:22.719181');
INSERT INTO `django_session` VALUES ('chncb540a5e86df674aca0b5c24f4366','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:00:38.323116');
INSERT INTO `django_session` VALUES ('chnb5e5881f23542f008b1e4b361b487','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:01:30.728028');
INSERT INTO `django_session` VALUES ('chn818879b96b2e7a82da74d9bbdbab1','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:01:37.085014');
INSERT INTO `django_session` VALUES ('chnc025f70e214137f6d2b644c747674','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:01:46.595184');
INSERT INTO `django_session` VALUES ('chn4ab75db8d45da9d33ba4a1f09deb6','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:02:35.477145');
INSERT INTO `django_session` VALUES ('chn257c42476338ad5376845b696e722','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:02:52.712901');
INSERT INTO `django_session` VALUES ('chn736950f19be5e6e02c7e2890d97fe','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:05:17.673612');
INSERT INTO `django_session` VALUES ('chnb2921de1562fb9562635c69cc2f89','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:05:24.895224');
INSERT INTO `django_session` VALUES ('chn08a105fcc9e2ec89a346b290c4ca8','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:05:37.881470');
INSERT INTO `django_session` VALUES ('chn75e6c238b37f77b89bcf400ea7cb4','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:06:25.924620');
INSERT INTO `django_session` VALUES ('chn28cb68d1fa50c0aea5101167af080','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:06:30.019637');
INSERT INTO `django_session` VALUES ('chnea7d698767ddf3ec6bde1754a2b29','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:06:35.023918');
INSERT INTO `django_session` VALUES ('chn0eb7491f8842c53366aa9e6e6423d','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:06:40.021972');
INSERT INTO `django_session` VALUES ('chna614ef03d6c586b19828488b7788d','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:06:45.023303');
INSERT INTO `django_session` VALUES ('chn07033d4fcb679389ef0abe700d98f','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:07:04.946977');
INSERT INTO `django_session` VALUES ('chn9ae2bb1d051fec61cde0c8310a031','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:29.694115');
INSERT INTO `django_session` VALUES ('chn75861f423635fbae7aa072bb63484','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:34.018913');
INSERT INTO `django_session` VALUES ('chn7dc37539db01c7d83c5f9566f2611','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:39.021404');
INSERT INTO `django_session` VALUES ('chnd61857bb6abf0a6cf1a08fa9e0dd5','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:44.021815');
INSERT INTO `django_session` VALUES ('chn4bae8b80bc63c155f5c1c58f4f1e0','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:49.018970');
INSERT INTO `django_session` VALUES ('chn7dbf92bdf0512560bf514bc3c4c1e','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:54.023636');
INSERT INTO `django_session` VALUES ('chn0d2309170d2eab4433f0d5a73db45','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:09:59.021099');
INSERT INTO `django_session` VALUES ('chn5cbaeb0c19d0f45d0e7631ea1f318','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:10:04.018421');
INSERT INTO `django_session` VALUES ('chnefe1697b613b8d91b199cfa96a2c4','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:10:09.024784');
INSERT INTO `django_session` VALUES ('chn2ae1ba17facb182a3b2cd1f57bd06','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:10:14.041185');
INSERT INTO `django_session` VALUES ('chna743e2033f08403b3d22b4cac55de','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:10:20.047942');
INSERT INTO `django_session` VALUES ('chne34815fee04ea1b08435a57058eb2','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:12:45.616721');
INSERT INTO `django_session` VALUES ('chn7eb1d09f55b1efe36468223c98e17','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:13:02.715736');
INSERT INTO `django_session` VALUES ('chnb89c2f106c048c49ac403470590b2','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:13:08.065010');
INSERT INTO `django_session` VALUES ('chn238c30db14b847138a185b030b1a0','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:13:17.428229');
INSERT INTO `django_session` VALUES ('chnd7b1eccea9e43bf8a60929471582a','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:14:49.269764');
INSERT INTO `django_session` VALUES ('chnd61f035ee521bf3da76b137a82e2a','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:14:59.418646');
INSERT INTO `django_session` VALUES ('chn90e70fcdbe045059cd2951c87f3c7','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:15:12.689670');
INSERT INTO `django_session` VALUES ('chna7d4908cce882e98909c4c1e446cc','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:22:24.092518');
INSERT INTO `django_session` VALUES ('chn56983cbd4942893dc5ac0f32d4793','MWFiMTYwZjgzNDU2YmJhMWRkYWJkMzM3YmY3ZWM3ZTRmNzFiNDc3Yzp7InJvb20iOiJyZWdpc3RlciJ9','2017-07-02 06:23:50.265451');
INSERT INTO `django_session` VALUES ('chn3216cbb92425656d1f0a615d865b2','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:23:57.027825');
INSERT INTO `django_session` VALUES ('chn5100e1cfcfa51e3442b4d1fb84308','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:24:31.402141');
INSERT INTO `django_session` VALUES ('chnee076b68049d44de53041db726a76','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:26:46.797871');
INSERT INTO `django_session` VALUES ('chnac2330fbee44b9995c365eb0bd0b4','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:26:51.825749');
INSERT INTO `django_session` VALUES ('chn3c336e309b4d9b8e835c871838aa1','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:27:01.366689');
INSERT INTO `django_session` VALUES ('chn4aae692b7782622ea668199d5c94b','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:29:54.703950');
INSERT INTO `django_session` VALUES ('chn918de4ebbdd29867f41fd2c98a93b','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:30:03.202635');
INSERT INTO `django_session` VALUES ('chn6be748f6d9bdbd39af60085da88a7','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:30:16.333166');
INSERT INTO `django_session` VALUES ('chn40eae1827561a12b1f05d9ca772f3','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:30:21.020046');
INSERT INTO `django_session` VALUES ('chn5f444b01872d8e427ea0a3a6c1521','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:30:26.020561');
INSERT INTO `django_session` VALUES ('chnf560912bb69d609efd40a074fc27a','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:30:31.019043');
INSERT INTO `django_session` VALUES ('chn6bee21d1e166f657fe52720cb601b','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 06:30:57.450669');
INSERT INTO `django_session` VALUES ('chn32fe49e780fa56809bb5ed1995bf0','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 06:31:27.905902');
INSERT INTO `django_session` VALUES ('chndc34ba6400e8119002229f1b9cee7','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 15:53:13.831515');
INSERT INTO `django_session` VALUES ('chnd3326c8fb7290015f8449dab00738','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 15:53:18.020790');
INSERT INTO `django_session` VALUES ('chn6761f59a3d99a55575c7d8af17cec','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 15:53:29.753900');
INSERT INTO `django_session` VALUES ('chn4f54e3689074724735f4f3c90b85b','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 15:53:48.554376');
INSERT INTO `django_session` VALUES ('chnd4f996969a7d302a8be7c2c3449ad','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 15:53:54.720121');
INSERT INTO `django_session` VALUES ('chna6d045859fc444546d14f27b46f6f','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 15:54:00.814406');
INSERT INTO `django_session` VALUES ('chn52b060eb29e84ec9e1afb38aa04cf','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 15:55:24.320897');
INSERT INTO `django_session` VALUES ('chn50b8c2d218ba5429218e6ac6d672f','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 15:55:33.570647');
INSERT INTO `django_session` VALUES ('chnd6a35c440cc72e9adee164ad918d0','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 17:14:45.779977');
INSERT INTO `django_session` VALUES ('chnc1cbec87833fd2a889e832f6295fe','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 18:28:03.213755');
INSERT INTO `django_session` VALUES ('chn7488182cdc4b5fd2a2546733c3cfb','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:15.895039');
INSERT INTO `django_session` VALUES ('chn91fc4af6b509828d18fe85f999a0a','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:20.023830');
INSERT INTO `django_session` VALUES ('chn2556392ec786b2f57c2211fa2855b','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:25.021187');
INSERT INTO `django_session` VALUES ('chn454ee985850d97e13b484ce7ac0b6','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:30.018271');
INSERT INTO `django_session` VALUES ('chn0138b3e4e98784783967e1747db55','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:35.023533');
INSERT INTO `django_session` VALUES ('chnbc9aed0609f2df961e70204a528be','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:40.021314');
INSERT INTO `django_session` VALUES ('chn04c350f2c1ac69e6222ebef61a809','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:51.631858');
INSERT INTO `django_session` VALUES ('chnae43bdeb6060b6bea71f7a166f086','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:41:58.653309');
INSERT INTO `django_session` VALUES ('chn1d2d86d01f75ad9c3fb0774408d26','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:42:10.880012');
INSERT INTO `django_session` VALUES ('chn497a210931e980f782d94ca1f261a','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:42:17.993596');
INSERT INTO `django_session` VALUES ('chnd1a95211afe58f115e9330921a8dd','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:44:08.860720');
INSERT INTO `django_session` VALUES ('chn3c9cbffa792cf458802fb06366769','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:44:13.021105');
INSERT INTO `django_session` VALUES ('chnd06d33b90fd76cf7a3752a5a1462a','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:44:18.020632');
INSERT INTO `django_session` VALUES ('chned4811322ea3c31f89c81754611c1','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:44:23.017832');
INSERT INTO `django_session` VALUES ('chn067b3bf09d40bc36672024b02c6fc','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 19:44:32.549993');
INSERT INTO `django_session` VALUES ('chnb46c1d735e55802ce47208ecd5ef5','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 19:45:38.158953');
INSERT INTO `django_session` VALUES ('chnd8405c609fa21c38493c0523f6ac0','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 19:45:44.895572');
INSERT INTO `django_session` VALUES ('chn1ae9703ccd5475f2c66a41fd9426d','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 19:46:07.810425');
INSERT INTO `django_session` VALUES ('chn13cc50e044c4d2045bb5cb63a13b9','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 19:46:12.018206');
INSERT INTO `django_session` VALUES ('chn32b35ac7d7712ee8c5f1dd285ea58','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 19:46:19.358016');
INSERT INTO `django_session` VALUES ('chnbb2d84e16d00623bd38c48ba2a83c','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 20:02:09.819091');
INSERT INTO `django_session` VALUES ('chn859e2f06f191e26fdd4992e6ec13b','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:13:10.702551');
INSERT INTO `django_session` VALUES ('chn4a2355dad94e210b4e4f224502c33','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:13:17.076048');
INSERT INTO `django_session` VALUES ('chn5a7dafee8acfffb04d4e35b3469ab','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:13:22.021616');
INSERT INTO `django_session` VALUES ('chn303733f04aff7fc3682e70f10a812','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:13:27.025697');
INSERT INTO `django_session` VALUES ('chncf7550911bbda29fab0daabab897c','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:13:34.425716');
INSERT INTO `django_session` VALUES ('chn4213da0187408dc3c9817900a398a','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:13:44.296283');
INSERT INTO `django_session` VALUES ('chn17ed3bc46b5039b30bbacaaf1ed7a','MGRkMjM2ZjIzZmZhZTkzMDU0N2NlZGJjNDI3ZjFkMWQyMGJjNjAyMzp7fQ==','2017-07-02 20:13:49.742532');
INSERT INTO `django_session` VALUES ('chn5f50730019f63d09535ebede88524','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:14:06.239802');
INSERT INTO `django_session` VALUES ('chnb73e038120c810854e015aced62d6','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:14:13.747455');
INSERT INTO `django_session` VALUES ('chn8edac8cbb7048043a995ba46b1c21','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:14:18.024040');
INSERT INTO `django_session` VALUES ('chnd0a87a9e7c86e98d47e1120163b30','OGE0ODQ0NzUzYjVmYTA1YjBmYTM2Y2VhM2RmNmY4YjRjYjI0YWUwMTp7InJvb20iOiJ0ZXN0In0=','2017-07-02 20:14:23.020376');
INSERT INTO `django_session` VALUES ('6f7zoyowre3v9wykfw5jq1jeqqazwnwf','ZGFkYTNkZDEzNzFjYjViYTdlYTE3ZDg0ZTI4NjMwNzVlYmJjOTlkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMTc3MjFlZWI3ZTFmMzViNmE5NDc0Yjg2NmUzYzFjOWU4YzVjZDVlIn0=','2017-07-15 19:57:04.293873');
INSERT INTO `django_session` VALUES ('uqnqbbu33zhln5oiw37t4du4g6n1h34k','ZGFkYTNkZDEzNzFjYjViYTdlYTE3ZDg0ZTI4NjMwNzVlYmJjOTlkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMTc3MjFlZWI3ZTFmMzViNmE5NDc0Yjg2NmUzYzFjOWU4YzVjZDVlIn0=','2017-07-15 19:57:52.189652');
INSERT INTO `django_session` VALUES ('neiyx1w0zuk5gk4zk5on4ifm0g7htsl5','ZGFkYTNkZDEzNzFjYjViYTdlYTE3ZDg0ZTI4NjMwNzVlYmJjOTlkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMTc3MjFlZWI3ZTFmMzViNmE5NDc0Yjg2NmUzYzFjOWU4YzVjZDVlIn0=','2017-07-23 03:20:36.960548');
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-06-18 02:57:23.921169');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2017-06-18 02:57:23.954965');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2017-06-18 02:57:23.971510');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2017-06-18 02:57:23.990149');
INSERT INTO `django_migrations` VALUES (5,'contenttypes','0002_remove_content_type_name','2017-06-18 02:57:24.025844');
INSERT INTO `django_migrations` VALUES (6,'auth','0002_alter_permission_name_max_length','2017-06-18 02:57:24.050550');
INSERT INTO `django_migrations` VALUES (7,'auth','0003_alter_user_email_max_length','2017-06-18 02:57:24.065675');
INSERT INTO `django_migrations` VALUES (8,'auth','0004_alter_user_username_opts','2017-06-18 02:57:24.086839');
INSERT INTO `django_migrations` VALUES (9,'auth','0005_alter_user_last_login_null','2017-06-18 02:57:24.105614');
INSERT INTO `django_migrations` VALUES (10,'auth','0006_require_contenttypes_0002','2017-06-18 02:57:24.107403');
INSERT INTO `django_migrations` VALUES (11,'auth','0007_alter_validators_add_error_messages','2017-06-18 02:57:24.124137');
INSERT INTO `django_migrations` VALUES (12,'auth','0008_alter_user_username_max_length','2017-06-18 02:57:24.140690');
INSERT INTO `django_migrations` VALUES (13,'sessions','0001_initial','2017-06-18 02:57:24.150490');
INSERT INTO `django_migrations` VALUES (14,'forms','0001_initial','2017-06-18 03:27:10.018013');
INSERT INTO `django_migrations` VALUES (15,'forms','0002_turnexform_publish','2017-06-18 03:41:20.463176');
INSERT INTO `django_migrations` VALUES (16,'forms','0003_turnexform_order','2017-06-18 03:42:26.642693');
INSERT INTO `django_migrations` VALUES (17,'forms','0004_auto_20170618_0357','2017-06-18 03:57:22.122764');
INSERT INTO `django_migrations` VALUES (18,'forms','0005_auto_20170624_1747','2017-06-24 17:47:32.181866');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'auth','permission');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (7,'forms','turnexform');
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO `django_admin_log` VALUES (1,'1','TurnexForm object',1,'[{"added": {}}]',7,1,'2017-06-18 03:34:37.217406');
INSERT INTO `django_admin_log` VALUES (2,'1','TurnexForm object',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-18 03:34:43.433614');
INSERT INTO `django_admin_log` VALUES (3,'1','TurnexForm object',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-18 03:34:54.033736');
INSERT INTO `django_admin_log` VALUES (4,'1','TurnexForm object',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-18 03:35:24.025465');
INSERT INTO `django_admin_log` VALUES (5,'1','TurnexForm object',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-18 03:35:39.452909');
INSERT INTO `django_admin_log` VALUES (6,'1','TurnexForm object',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-18 03:36:44.907568');
INSERT INTO `django_admin_log` VALUES (7,'1','Form: Entry',2,'[{"changed": {"fields": ["details", "published"]}}]',7,1,'2017-06-18 04:31:33.582708');
INSERT INTO `django_admin_log` VALUES (8,'1','Form: Entra',2,'[{"changed": {"fields": ["name", "details"]}}]',7,1,'2017-06-24 17:46:36.854511');
INSERT INTO `django_admin_log` VALUES (9,'1','Form: Entra',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 17:46:45.225775');
INSERT INTO `django_admin_log` VALUES (10,'1','Form: Entrada',2,'[{"changed": {"fields": ["name", "details"]}}]',7,1,'2017-06-24 17:47:37.819359');
INSERT INTO `django_admin_log` VALUES (11,'2','Form: Caja',1,'[{"added": {}}]',7,1,'2017-06-24 17:47:51.923089');
INSERT INTO `django_admin_log` VALUES (12,'1','Form: Entrada',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 17:48:04.695419');
INSERT INTO `django_admin_log` VALUES (13,'2','Form: Caja',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 17:48:57.423459');
INSERT INTO `django_admin_log` VALUES (14,'2','Form: Caja',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 17:49:07.018488');
INSERT INTO `django_admin_log` VALUES (15,'1','Form: Entrada',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 17:49:11.894122');
INSERT INTO `django_admin_log` VALUES (16,'2','Form: Caja',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 18:32:16.720342');
INSERT INTO `django_admin_log` VALUES (17,'3','Form: Nuevo',1,'[{"added": {}}]',7,1,'2017-06-24 18:33:38.155781');
INSERT INTO `django_admin_log` VALUES (18,'3','Form: Nuevo',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-24 18:34:26.771221');
INSERT INTO `django_admin_log` VALUES (19,'3','Form: Nuevo',2,'[{"changed": {"fields": ["details", "published"]}}]',7,1,'2017-06-24 18:35:50.183555');
INSERT INTO `django_admin_log` VALUES (20,'2','Form: Caja',2,'[{"changed": {"fields": ["details", "published"]}}]',7,1,'2017-06-24 18:37:02.313185');
INSERT INTO `django_admin_log` VALUES (21,'3','Form: Nuevo',2,'[{"changed": {"fields": ["details", "published"]}}]',7,1,'2017-06-24 18:37:06.420514');
INSERT INTO `django_admin_log` VALUES (22,'1','Form: Entrada',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-25 23:38:04.524158');
INSERT INTO `django_admin_log` VALUES (23,'1','Form: Entrada',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-26 00:13:24.404084');
INSERT INTO `django_admin_log` VALUES (24,'2','Form: Caja',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-06-26 00:14:16.613050');
INSERT INTO `django_admin_log` VALUES (25,'3','Form: 0 KM',2,'[{"changed": {"fields": ["name", "details"]}}]',7,1,'2017-07-01 19:57:20.440797');
INSERT INTO `django_admin_log` VALUES (26,'2','Form: Caja',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-07-01 19:58:28.008415');
INSERT INTO `django_admin_log` VALUES (27,'1','Form: Entrada',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-07-09 03:22:21.260825');
INSERT INTO `django_admin_log` VALUES (28,'2','Form: Caja',2,'[{"changed": {"fields": ["details"]}}]',7,1,'2017-07-09 03:22:49.706260');
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$uIrGNEme2J5a$+utcJ/W9vF5ds+imrpLerDJiIhrPP8qyxmGTXivE2nM=','2017-07-09 03:20:36.956533',1,'','','turnex@gmail.com',1,1,'2017-06-18 02:58:21.377575','turnex');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry');
INSERT INTO `auth_permission` VALUES (2,1,'change_logentry','Can change log entry');
INSERT INTO `auth_permission` VALUES (3,1,'delete_logentry','Can delete log entry');
INSERT INTO `auth_permission` VALUES (4,2,'add_permission','Can add permission');
INSERT INTO `auth_permission` VALUES (5,2,'change_permission','Can change permission');
INSERT INTO `auth_permission` VALUES (6,2,'delete_permission','Can delete permission');
INSERT INTO `auth_permission` VALUES (7,3,'add_group','Can add group');
INSERT INTO `auth_permission` VALUES (8,3,'change_group','Can change group');
INSERT INTO `auth_permission` VALUES (9,3,'delete_group','Can delete group');
INSERT INTO `auth_permission` VALUES (10,4,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (11,4,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (12,4,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (13,5,'add_contenttype','Can add content type');
INSERT INTO `auth_permission` VALUES (14,5,'change_contenttype','Can change content type');
INSERT INTO `auth_permission` VALUES (15,5,'delete_contenttype','Can delete content type');
INSERT INTO `auth_permission` VALUES (16,6,'add_session','Can add session');
INSERT INTO `auth_permission` VALUES (17,6,'change_session','Can change session');
INSERT INTO `auth_permission` VALUES (18,6,'delete_session','Can delete session');
INSERT INTO `auth_permission` VALUES (19,7,'add_turnexform','Can add turnex form');
INSERT INTO `auth_permission` VALUES (20,7,'change_turnexform','Can change turnex form');
INSERT INTO `auth_permission` VALUES (21,7,'delete_turnexform','Can delete turnex form');
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE INDEX "forms_turnexform_published_4c20bee5" ON "forms_turnexform" ("published");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
COMMIT;