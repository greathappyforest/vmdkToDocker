DROP DATABASE IF EXISTS zx;
create databases zx DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
use zx;
# Host: localhost  (Version: 5.5.27)
# Date: 2018-06-23 21:53:00
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "auth"
#

CREATE TABLE `auth` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`zoneid`,`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth"
#

INSERT INTO `auth` VALUES (1504,1,106),(1504,1,107),(1504,1,108),(1504,1,109),(1504,1,110),(1504,1,301),(1504,1,302),(1504,1,303),(1504,1,304),(1504,1,305),(1504,1,306),(1504,1,307),(1504,1,308),(1504,1,309),(1504,1,310),(1504,1,401),(1504,1,402),(1504,1,403),(1504,1,404),(1504,1,405),(1504,1,406),(1504,1,407),(1504,1,408),(1504,1,409),(1504,1,410),(1520,1,106),(1520,1,107),(1520,1,108),(1520,1,109),(1520,1,110),(1520,1,301),(1520,1,302),(1520,1,303),(1520,1,304),(1520,1,305),(1520,1,306),(1520,1,307),(1520,1,308),(1520,1,309),(1520,1,310),(1520,1,401),(1520,1,402),(1520,1,403),(1520,1,404),(1520,1,405),(1520,1,406),(1520,1,407),(1520,1,408),(1520,1,409),(1520,1,410),(2240,1,0),(2240,1,1),(2240,1,2),(2240,1,3),(2240,1,4),(2240,1,5),(2240,1,6),(2240,1,7),(2240,1,8),(2240,1,9),(2240,1,10),(2240,1,11),(2240,1,100),(2240,1,101),(2240,1,102),(2240,1,103),(2240,1,104),(2240,1,105),(2240,1,200),(2240,1,201),(2240,1,202),(2240,1,203),(2240,1,204),(2240,1,205),(2240,1,206),(2240,1,207),(2240,1,208),(2240,1,209),(2240,1,210),(2240,1,211),(2240,1,212),(2240,1,213),(2240,1,214),(2240,1,501),(2240,1,502),(2240,1,503),(2240,1,504),(2240,1,505),(2240,1,506),(2240,1,507),(2240,1,508),(2240,1,509),(2240,1,510),(2240,1,511),(2240,1,512),(2240,1,513),(2240,1,514),(2240,1,515),(2240,1,516),(2240,1,517),(2240,1,518);

#
# Structure for table "forbid"
#

CREATE TABLE `forbid` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL,
  `forbid_time` int(11) NOT NULL DEFAULT '0',
  `reason` blob NOT NULL,
  `gmroleid` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "forbid"
#


#
# Structure for table "iplimit"
#

CREATE TABLE `iplimit` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `ipaddr1` int(11) DEFAULT '0',
  `ipmask1` varchar(2) DEFAULT '',
  `ipaddr2` int(11) DEFAULT '0',
  `ipmask2` varchar(2) DEFAULT '',
  `ipaddr3` int(11) DEFAULT '0',
  `ipmask3` varchar(2) DEFAULT '',
  `enable` char(1) DEFAULT '',
  `lockstatus` char(1) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "iplimit"
#


#
# Structure for table "online"
#

CREATE TABLE `online` (
  `ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "online"
#

INSERT INTO `online` VALUES (2240);

#
# Structure for table "point"
#

CREATE TABLE `point` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) DEFAULT '0',
  `zonelocalid` int(11) DEFAULT '0',
  `accountstart` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`aid`),
  KEY `IX_point_aidzoneid` (`aid`,`zoneid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "point"
#

INSERT INTO `point` VALUES (48,1,89999100,0,0,NULL,NULL,NULL),(48,11,0,NULL,NULL,NULL,'2014-04-10 09:33:01',NULL),(64,11,0,NULL,NULL,NULL,'2013-10-15 23:51:25',NULL),(1008,11,0,NULL,NULL,NULL,'2013-10-07 21:30:02',NULL),(1088,11,0,NULL,NULL,NULL,'2013-10-06 02:22:44',NULL),(1104,11,0,NULL,NULL,NULL,'2013-10-06 13:48:24',NULL),(1120,11,0,NULL,NULL,NULL,'2013-10-06 11:54:57',NULL),(1152,11,0,NULL,NULL,NULL,'2013-10-24 22:35:19',NULL),(1184,11,0,NULL,NULL,NULL,'2013-10-06 02:16:24',NULL),(1328,11,0,NULL,NULL,NULL,'2013-10-06 02:18:30',NULL),(1472,11,0,NULL,NULL,NULL,'2013-10-06 02:18:13',NULL),(1488,1,2147483647,0,0,NULL,NULL,NULL),(1488,11,0,NULL,NULL,NULL,'2014-04-10 14:59:37',NULL),(1520,11,0,NULL,NULL,NULL,'2013-12-01 21:20:51',NULL),(1536,11,0,NULL,NULL,NULL,'2014-04-10 15:11:19',NULL),(1552,1,899999100,0,0,NULL,NULL,NULL),(1552,11,0,NULL,NULL,NULL,'2014-04-10 15:18:35',NULL),(1872,11,0,NULL,NULL,NULL,'2014-04-10 15:27:19',NULL),(2192,11,0,NULL,NULL,NULL,'2014-04-10 15:29:48',NULL),(2208,1,899999100,0,0,NULL,NULL,NULL),(2208,11,0,NULL,NULL,NULL,'2014-04-10 19:51:26',NULL),(2224,1,2147483647,0,0,NULL,NULL,NULL),(2224,11,0,NULL,NULL,NULL,'2014-04-29 15:42:41',NULL),(2240,1,899999100,0,0,NULL,NULL,NULL),(2240,11,0,1,28,NULL,'2018-06-22 03:54:36',NULL),(2272,11,0,NULL,NULL,NULL,'2015-06-29 16:04:43',NULL);

#
# Structure for table "usecashlog"
#

CREATE TABLE `usecashlog` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` datetime NOT NULL,
  `fintime` datetime NOT NULL,
  KEY `IX_usecashlog_creatime` (`creatime`),
  KEY `IX_usecashlog_uzs` (`userid`,`zoneid`,`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "usecashlog"
#

INSERT INTO `usecashlog` VALUES (48,1,1,1,0,9999900,4,'2013-10-05 21:26:30','2013-10-06 00:22:09'),(1488,1,1,1,0,99999900,4,'2013-10-06 02:19:43','2013-10-06 02:24:38'),(1504,1,1,1,0,99999900,4,'2013-10-06 07:14:24','2013-10-07 21:31:00'),(1488,1,1,1,0,999999900,4,'2013-10-10 17:01:17','2013-10-10 17:03:06'),(1520,1,1,1,0,9999900,4,'2013-11-24 09:36:22','2013-11-24 16:36:36'),(1552,1,1,1,0,99999900,4,'2014-04-10 15:13:26','2014-04-10 15:14:37'),(2208,1,1,1,0,99999900,4,'2014-04-10 15:31:11','2014-04-10 15:31:22'),(2224,1,1,1,0,2147483647,4,'2014-04-14 00:48:01','2014-04-14 00:48:56'),(2240,1,1,1,0,99999900,4,'2015-06-26 22:05:33','2015-06-26 22:08:20');

#
# Structure for table "usecashnow"
#

CREATE TABLE `usecashnow` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` datetime NOT NULL,
  PRIMARY KEY (`userid`,`zoneid`,`sn`),
  KEY `IX_usecashnow_creatime` (`creatime`),
  KEY `IX_usecashnow_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "usecashnow"
#


#
# Structure for table "users"
#

CREATE TABLE `users` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `passwd` varchar(64) NOT NULL,
  `Prompt` varchar(32) NOT NULL DEFAULT '',
  `answer` varchar(32) NOT NULL DEFAULT '',
  `truename` varchar(32) NOT NULL DEFAULT '',
  `idnumber` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `mobilenumber` varchar(32) DEFAULT '',
  `province` varchar(32) DEFAULT '',
  `city` varchar(32) DEFAULT '',
  `phonenumber` varchar(32) DEFAULT '',
  `address` varchar(64) DEFAULT '',
  `postalcode` varchar(8) DEFAULT '',
  `gender` int(11) DEFAULT '0',
  `birthday` datetime DEFAULT NULL,
  `creatime` datetime NOT NULL,
  `qq` varchar(32) DEFAULT '',
  `passwd2` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_users_name` (`name`),
  KEY `IX_users_creatime` (`creatime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (32,'administrator','×OK:°j¾zç¥P\"ÝK:','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-05 21:25:45','','×OK:°j¾zç¥P\"ÝK:'),(48,'725422188','Õës…³=“Mœ3”ÆÝì','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-05 21:26:03','','Õës…³=“Mœ3”ÆÝì'),(64,'myttuzhenzhan001','(²l´Ç®¹Ï\"—¿ú7ÒÚù','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:13','','(²l´Ç®¹Ï\"—¿ú7ÒÚù'),(80,'myttuzhenzhan002','!†ãa.µ$9ÜmW˜,','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:17','','!†ãa.µ$9ÜmW˜,'),(96,'myttuzhenzhan003','6‡`ìWs‹VŽˆ}Ù)','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:21','','6‡`ìWs‹VŽˆ}Ù)'),(112,'myttuzhenzhan004','‘b®¶ˆ‡ª°²•ä','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:25','','‘b®¶ˆ‡ª°²•ä'),(128,'myttuzhenzhan005','Â ·±((!l,{í´»','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:29','','Â ·±((!l,{í´»'),(144,'myttuzhenzhan006','_„çÊÉÿn`…€…åŒVC_','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:33','','_„çÊÉÿn`…€…åŒVC_'),(160,'myttuzhenzhan007','K9`ÝíƒÓ­R©„/…£','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:36','','K9`ÝíƒÓ­R©„/…£'),(176,'myttuzhenzhan008','zç¿½zÇº©:†!A\\Ë:','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:43','','zç¿½zÇº©:†!A\\Ë:'),(192,'myttuzhenzhan009','òFPÀ-œ‡CVJpÜ¸Ô','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:47','','òFPÀ-œ‡CVJpÜ¸Ô'),(208,'myttuzhenzhan010','Ž>„µª9†}!½x?(Ö','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:51','','Ž>„µª9†}!½x?(Ö'),(224,'myttuzhenzhan011','¾ÿÕ[WÖ{)¾¤ÿ0†Ã´','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:54','','¾ÿÕ[WÖ{)¾¤ÿ0†Ã´'),(240,'myttuzhenzhan012','¦.î¾xdâK‹¶Xf=¾','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:12:58','','¦.î¾xdâK‹¶Xf=¾'),(256,'myttuzhenzhan013','Æ€¯N¸SÇý¥¹Ë3þ¹Ý','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:01','','Æ€¯N¸SÇý¥¹Ë3þ¹Ý'),(272,'myttuzhenzhan014','RÞ±÷?½0!6i+7Z','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:04','','RÞ±÷?½0!6i+7Z'),(288,'myttuzhenzhan015','ˆñfñ.‘j­’ŠÊ~fÍ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:06','','ˆñfñ.‘j­’ŠÊ~fÍ'),(304,'myttuzhenzhan016','u2Ç ÐO\t²íÆ÷‡Ðâ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:09','','u2Ç ÐO\t²íÆ÷‡Ðâ'),(320,'myttuzhenzhan017','£®}^p»&žQÞV,êpR','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:12','','£®}^p»&žQÞV,êpR'),(336,'myttuzhenzhan018','ÒËô’çu¹€þÿ &Äi¾I','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:15','','ÒËô’çu¹€þÿ &Äi¾I'),(352,'myttuzhenzhan019','ðÍ°%Túìc™¸Ò¯Þ¥x','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:18','','ðÍ°%Túìc™¸Ò¯Þ¥x'),(368,'myttuzhenzhan020','i†wSÙKÍø\"d”R\\?#','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:22','','i†wSÙKÍø\"d”R\\?#'),(384,'myttuzhenzhan021','óð¸—ë¬HLˆ•)õyÓÜ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:25','','óð¸—ë¬HLˆ•)õyÓÜ'),(400,'myttuzhenzhan022','ý›1¢Æ¼»†','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:28','','ý›1¢Æ¼»†'),(416,'myttuzhenzhan023','«V¤K’•;™n-\tj?p“','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:32','','«V¤K’•;™n-\tj?p“'),(432,'myttuzhenzhan024','½#A‚meƒI\n€p¶JÔk','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:35','','½#A‚meƒI\n€p¶JÔk'),(448,'myttuzhenzhan025','UrZ;á4ú!.J»$*0','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:38','','UrZ;á4ú!.J»$*0'),(464,'myttuzhenzhan026','v±û¾\n44ZÚ9Oýz','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:41','','v±û¾\n44ZÚ9Oýz'),(480,'myttuzhenzhan027','ÀyºÚ‘hÅ¬nyÂ[ Ý','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:44','','ÀyºÚ‘hÅ¬nyÂ[ Ý'),(496,'myttuzhenzhan028',':i5€m}“©©RÈúMÖê','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:47','',':i5€m}“©©RÈúMÖê'),(512,'myttuzhenzhan029','ÝEÍ¼iöŽÆ,ƒªÙ®w','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:50','','ÝEÍ¼iöŽÆ,ƒªÙ®w'),(528,'myttuzhenzhan030','SV¾×;Sù&•eBác','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:54','','SV¾×;Sù&•eBác'),(544,'myttuzhenzhan031','¶›nHVÑ ßm÷@bc','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:13:58','','¶›nHVÑ ßm÷@bc'),(560,'myttuzhenzhan032','M6Dst€ôÐ­7° o','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:01','','M6Dst€ôÐ­7° o'),(576,'myttuzhenzhan033','G©\'ïqÄ‹†xÁ0¸ê4','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:04','','G©\'ïqÄ‹†xÁ0¸ê4'),(592,'myttuzhenzhan034','ë®)J’W((f1“.;Ói','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:07','','ë®)J’W((f1“.;Ói'),(608,'myttuzhenzhan035','Äk<Ã%Ý¯9äMÊƒäì¾S','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:10','','Äk<Ã%Ý¯9äMÊƒäì¾S'),(624,'myttuzhenzhan036','îK•Æ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:13','','îK•Æ'),(640,'myttuzhenzhan037','ç;*Á2!Ã*uèýŸ€C','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:16','','ç;*Á2!Ã*uèýŸ€C'),(656,'myttuzhenzhan038','¥j®ñsÜVÏÖT°j','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:19','','¥j®ñsÜVÏÖT°j'),(672,'myttuzhenzhan039','û\t‚Ùì¶*‡ï¨òß','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:22','','û\t‚Ùì¶*‡ï¨òß'),(688,'myttuzhenzhan040','±›Cœ.í…ì†KXN','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:26','','±›Cœ.í…ì†KXN'),(704,'myttuzhenzhan041','@–+\tš‡’fý\t-XœUJG','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:29','','@–+\tš‡’fý\t-XœUJG'),(720,'myttuzhenzhan042','tý¯e\r3ÚO~jÅ|','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:32','','tý¯e\r3ÚO~jÅ|'),(736,'myttuzhenzhan043',',ûÌ²ðs\n@¨cóYœå','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:35','',',ûÌ²ðs\n@¨cóYœå'),(752,'myttuzhenzhan044','^î¸ˆîÉVp(b','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:38','','^î¸ˆîÉVp(b'),(768,'myttuzhenzhan045','É]¥Yôâ‚¹)5pe\'','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:40','','É]¥Yôâ‚¹)5pe\''),(784,'myttuzhenzhan046','Ûçç‰Õ²C ª_ \tgÙ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:43','','Ûçç‰Õ²C ª_ \tgÙ'),(800,'myttuzhenzhan047','ðcQ(ªÔ¼Mh.iOÊìÔ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:46','','ðcQ(ªÔ¼Mh.iOÊìÔ'),(816,'myttuzhenzhan048','/!ÔK}vi›$8ÿ¸E\"','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:48','','/!ÔK}vi›$8ÿ¸E\"'),(832,'myttuzhenzhan049','QÜ5U*\tå¨¹0ò‘','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:52','','QÜ5U*\tå¨¹0ò‘'),(848,'myttuzhenzhan050','D£aë\t\\æUÅJ+','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:56','','D£aë\t\\æUÅJ+'),(864,'myttuzhenzhan051','|åy˜Í§uÅ-ïp›ÙHö','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:14:59','','|åy˜Í§uÅ-ïp›ÙHö'),(880,'myttuzhenzhan052','[jjkš¾³Ë QJ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:03','','[jjkš¾³Ë QJ'),(896,'myttuzhenzhan053','ÓÖÆ›×LZcÍÍ\t×‹! ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:06','','ÓÖÆ›×LZcÍÍ\t×‹! '),(912,'myttuzhenzhan054','¶ÐH‰5ißŒÜÍwã','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:10','','¶ÐH‰5ißŒÜÍwã'),(928,'myttuzhenzhan055',' Ì†¹„¯šp‡¨','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:13','',' Ì†¹„¯šp‡¨'),(944,'myttuzhenzhan056','k¼—øª·U–EÖ÷Å¼ï','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:16','','k¼—øª·U–EÖ÷Å¼ï'),(960,'myttuzhenzhan057','$Š@>YÒ:˜õ‹ÏûŒ¨','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:19','','$Š@>YÒ:˜õ‹ÏûŒ¨'),(976,'myttuzhenzhan058','Lò!Jbdb.1T`¥4¡','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:22','','Lò!Jbdb.1T`¥4¡'),(992,'myttuzhenzhan059','rH','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:26','','rH'),(1008,'myttuzhenzhan060',',Ðøû¬‡æ\ty-ïEÊs','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:31','',',Ðøû¬‡æ\ty-ïEÊs'),(1024,'myttuzhenzhan061','ÙÖúƒÈ fviÝ¶Õ$','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:34','','ÙÖúƒÈ fviÝ¶Õ$'),(1040,'myttuzhenzhan062','\\‡s›$©îL+–rŸ°Ë','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:39','','\\‡s›$©îL+–rŸ°Ë'),(1056,'myttuzhenzhan063','[ää+X¬QŒ „hÔ%Œ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:43','','[ää+X¬QŒ „hÔ%Œ'),(1072,'myttuzhenzhan064','¶äàÙ\\s1SvQãkB°','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:46','','¶äàÙ\\s1SvQãkB°'),(1088,'myttuzhenzhan065','à‚KÂ¼\'˜èD\"Ê*I','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:50','','à‚KÂ¼\'˜èD\"Ê*I'),(1104,'myttuzhenzhan066','oÒèõßBµšµùë','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:54','','oÒèõßBµšµùë'),(1120,'myttuzhenzhan067','\"åBQêëp‚CÍè%TOå','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:15:57','','\"åBQêëp‚CÍè%TOå'),(1136,'myttuzhenzhan068','È­BÝMXI®Ú2','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:00','','È­BÝMXI®Ú2'),(1152,'myttuzhenzhan069','‰ÿ.ç¯íø1ùåë¶÷%X','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:03','','‰ÿ.ç¯íø1ùåë¶÷%X'),(1168,'myttuzhenzhan070','z¿7ò\nÊ0hü^àøxÒ“•','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:07','','z¿7ò\nÊ0hü^àøxÒ“•'),(1184,'myttuzhenzhan071','\"•éIÔ´Z´^S´”ì ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:10','','\"•éIÔ´Z´^S´”ì '),(1200,'myttuzhenzhan072','6¨í«ô¼‚f5Ìs»¡hd','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:37','','6¨í«ô¼‚f5Ìs»¡hd'),(1216,'myttuzhenzhan073','‰%ÆÜ—)¼‰±.?±÷','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:40','','‰%ÆÜ—)¼‰±.?±÷'),(1232,'myttuzhenzhan074','›ûrÁPÏ…hÌ1@ÃúIyS','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:43','','›ûrÁPÏ…hÌ1@ÃúIyS'),(1248,'myttuzhenzhan075','W}Ÿ),˜L^céT„','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:46','','W}Ÿ),˜L^céT„'),(1264,'myttuzhenzhan076','ÌÁ\\‰¼²\\ÂQ¯qŸ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:16:50','','ÌÁ\\‰¼²\\ÂQ¯qŸ'),(1280,'myttuzhenzhan077','}Ën‘Ç÷áÓ\'Å\tnD\\·','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:01','','}Ën‘Ç÷áÓ\'Å\tnD\\·'),(1296,'myttuzhenzhan078','%7¢0¡¤–6Us&ÇJh€Ø','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:03','','%7¢0¡¤–6Us&ÇJh€Ø'),(1312,'myttuzhenzhan079','rŠ Ñ$„\t) ü5ú]àŽØ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:07','','rŠ Ñ$„\t) ü5ú]àŽØ'),(1328,'myttuzhenzhan080','|’>Ÿ×FAOÅ›€Q§L7Á','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:11','','|’>Ÿ×FAOÅ›€Q§L7Á'),(1344,'myttuzhenzhan081','íôs˜/giÏQÓÓHô','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:14','','íôs˜/giÏQÓÓHô'),(1360,'myttuzhenzhan085','Æµ>qÝNŠKl£aŸ˜','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:18','','Æµ>qÝNŠKl£aŸ˜'),(1376,'myttuzhenzhan082','\"KxlÈÿþÖ%“ÍÔq\'','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:23','','\"KxlÈÿþÖ%“ÍÔq\''),(1392,'myttuzhenzhan083',':þÿ\rŠÏï\\\nÂ5è£','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:27','',':þÿ\rŠÏï\\\nÂ5è£'),(1408,'myttuzhenzhan084','jÝ6¦¡óµ•gé9Çäy\rÝ','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:30','','jÝ6¦¡óµ•gé9Çäy\rÝ'),(1424,'myttuzhenzhan086','ˆ…Ÿ€üùÑ°‘iþð®','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:33','','ˆ…Ÿ€üùÑ°‘iþð®'),(1440,'myttuzhenzhan087','¶ìUvRbì›Ñ²šìC\'S','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:39','','¶ìUvRbì›Ñ²šìC\'S'),(1456,'myttuzhenzhan088','c<²¾ÜD=«¡æêí-','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:42','','c<²¾ÜD=«¡æêí-'),(1472,'myttuzhenzhan089','È9V UÙ•\"ˆ7:ÈH','0','0','Î¢Ð¦','0','root@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:17:48','','È9V UÙ•\"ˆ7:ÈH'),(1488,'a725422188','Š\nmA”û6ôS¶úN{gÖ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 02:19:11','','Š\nmA”û6ôS¶úN{gÖ'),(1504,'b852456','yH$®\rqS€úÑrq\rx','0','0','0','0','46546@qq.com','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-10-06 13:14:24','','yH$®\rqS€úÑrq\rx'),(1520,'tutu1991','µ8—g.Âh”uÐô','0','0','0','0','531055392@qq.com','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2013-11-24 16:36:22','','µ8—g.Âh”uÐô'),(1536,'myttuzhenzhan090','ˆT¢Q5ÄéÊ~‰SŒ×·','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:10:35','','ˆT¢Q5ÄéÊ~‰SŒ×·'),(1552,'admin','Òä‚@âW<>f—î^y3','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:12:53','','Òä‚@âW<>f—î^y3'),(1568,'myttuzhenzhan091','»æs‡>®M¾„ôÜŒý','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:24:56','','»æs‡>®M¾„ôÜŒý'),(1584,'myttuzhenzhan092','.6_­·\0Xn+jîä†§','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:01','','.6_­·\0Xn+jîä†§'),(1600,'myttuzhenzhan093','Ä0â¾ôT«y‹Y‹aÕ$','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:05','','Ä0â¾ôT«y‹Y‹aÕ$'),(1616,'myttuzhenzhan094','ºt]gów /T0¯0','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:09','','ºt]gów /T0¯0'),(1632,'myttuzhenzhan095','H,Q¥å.<#q Æ,c#Þ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:15','','H,Q¥å.<#q Æ,c#Þ'),(1648,'myttuzhenzhan096','ˆÓ,Œõ*\\Ð´!˜ä5','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:19','','ˆÓ,Œõ*\\Ð´!˜ä5'),(1664,'myttuzhenzhan097','žl`XŒ[i¡ûé’!_','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:23','','žl`XŒ[i¡ûé’!_'),(1680,'myttuzhenzhan098',':×3Žšª³Áaƒvî#ñL','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:27','',':×3Žšª³Áaƒvî#ñL'),(1696,'myttuzhenzhan099','_èòŸüÍoŸ\tÅÆv§n¼d','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:32','','_èòŸüÍoŸ\tÅÆv§n¼d'),(1712,'myttuzhenzhan100','l\\5¢ÿÁÙEÙšP^T7','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:37','','l\\5¢ÿÁÙEÙšP^T7'),(1728,'myttuzhenzhan101','Z-Íá/A{Ñ £¨_\t','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:41','','Z-Íá/A{Ñ £¨_\t'),(1744,'myttuzhenzhan102','SÖ¨ìøøÈüy•#¾˜','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:44','','SÖ¨ìøøÈüy•#¾˜'),(1760,'myttuzhenzhan103','f¶’Ær\nÛRƒ¼K]”Ôõ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:47','','f¶’Ær\nÛRƒ¼K]”Ôõ'),(1776,'myttuzhenzhan104','p®3¾¬·lÌØsÑCC:¿','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:51','','p®3¾¬·lÌØsÑCC:¿'),(1792,'myttuzhenzhan105','@òŠð-ÙÃ’÷-¶ÕúÇ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:54','','@òŠð-ÙÃ’÷-¶ÕúÇ'),(1808,'myttuzhenzhan106','V—¸0Å\'•Bš=ë`Y–_','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:25:57','','V—¸0Å\'•Bš=ë`Y–_'),(1824,'myttuzhenzhan107','.mÀ*”ÆCƒ4g$º\tŽv¸','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:26:00','','.mÀ*”ÆCƒ4g$º\tŽv¸'),(1840,'myttuzhenzhan108','Ó™.KxSñiÙŸº','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:26:04','','Ó™.KxSñiÙŸº'),(1856,'myttuzhenzhan109','…ï$æf³‰£‘·¯£õ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:26:07','','…ï$æf³‰£‘·¯£õ'),(1872,'myttuzhenzhan110','\nâØ¦° àÊYÈï¤Ðÿ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:26:11','','\nâØ¦° àÊYÈï¤Ðÿ'),(1888,'myttuzhenzhan111','V,kÙKlÑiN)U«Õ”{n','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:15','','V,kÙKlÑiN)U«Õ”{n'),(1904,'myttuzhenzhan112','OÚÑÀðøj\nÜëH£¤','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:19','','OÚÑÀðøj\nÜëH£¤'),(1920,'myttuzhenzhan113','¿ÃE©²¡¬Œ_W¸iõì4','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:22','','¿ÃE©²¡¬Œ_W¸iõì4'),(1936,'myttuzhenzhan114','Un*Öá%W-ÀîÃó“3\t','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:26','','Un*Öá%W-ÀîÃó“3\t'),(1952,'myttuzhenzhan115','»Ž÷í*Ë˜{ÁÜß—(','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:29','','»Ž÷í*Ë˜{ÁÜß—('),(1968,'myttuzhenzhan116','ö¦Éi›ÕoÎW¶9À','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:32','','ö¦Éi›ÕoÎW¶9À'),(1984,'myttuzhenzhan117','OpVŠuXQ”åJß§”¥','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:36','','OpVŠuXQ”åJß§”¥'),(2000,'myttuzhenzhan118','›0p3ØèÊfSÓ®¿ŸO','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:40','','›0p3ØèÊfSÓ®¿ŸO'),(2016,'myttuzhenzhan119','„,J@\r%s9Po‘½s×','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:45','','„,J@\r%s9Po‘½s×'),(2032,'myttuzhenzhan120','vE½ƒQ[fÁ‘œB\n‚','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:49','','vE½ƒQ[fÁ‘œB\n‚'),(2048,'myttuzhenzhan121','©øêÔŠYâ£ììc”G','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:52','','©øêÔŠYâ£ììc”G'),(2064,'myttuzhenzhan122','xö8lh³éd—„åªî','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:55','','xö8lh³éd—„åªî'),(2080,'myttuzhenzhan123','šQàOÓë´(ûl‚Ìh','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:28:59','','šQàOÓë´(ûl‚Ìh'),(2096,'myttuzhenzhan124','7½:šiÄÏÞ–Ün|²yÏ','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:03','','7½:šiÄÏÞ–Ün|²yÏ'),(2112,'myttuzhenzhan125','ç-Æ;”BvXßþ½Ñ©','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:07','','ç-Æ;”BvXßþ½Ñ©'),(2128,'myttuzhenzhan126','ú²ýDŠµº÷‰ä1ª²îí','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:12','','ú²ýDŠµº÷‰ä1ª²îí'),(2144,'myttuzhenzhan127','¾uÞó¹ÅÍ“«ë@Â…¥','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:16','','¾uÞó¹ÅÍ“«ë@Â…¥'),(2160,'myttuzhenzhan128','®ÅYÂÈn•›ƒ¦Z¢;Ÿ¢','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:20','','®ÅYÂÈn•›ƒ¦Z¢;Ÿ¢'),(2176,'myttuzhenzhan129','·ãqB”¨òû\"\\÷­','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:24','','·ãqB”¨òû\"\\÷­'),(2192,'myttuzhenzhan130','+H\0Þ¦€ºæ•¬ækt','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:29:30','','+H\0Þ¦€ºæ•¬ækt'),(2208,'admin725422188','úÑbë2ñ^¾çÞ«Eƒ”','0','0','Î¢Ð¦','0','123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-10 15:30:47','','úÑbë2ñ^¾çÞ«Eƒ”'),(2224,'123456','êHWo0¾i—™ÀšÐ\\”','0','0','Î¢Ð¦','0','2124@422.net ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2014-04-14 00:47:33','','êHWo0¾i—™ÀšÐ\\”'),(2240,'aa123123','®*÷¦}\'§ÃãêWÃ¯·™','0','0','Î¢Ð¦','0','123123@qq.com ','0','0','0','0','0','0',0,'0000-00-00 00:00:00','2015-06-26 22:01:37','','®*÷¦}\'§ÃãêWÃ¯·™'),(2256,'','ÔŒÙ\0²é€\t˜ìøB~','??QQ???','495404617','Error','495404617','495404617@qq.com','','','','','','',0,'0000-00-00 00:00:00','2015-06-29 16:02:56','495404617','ÔŒÙ\0²é€\t˜ìøB~'),(2272,'qweqwe','Õƒf{¨3—)…c ÏòZñ3','??QQ???','495404617','Error','495404617','495404617@qq.com','','','','','','',0,'0000-00-00 00:00:00','2015-06-29 16:03:41','495404617','Õƒf{¨3—)…c ÏòZñ3');

#
# Function "fn_varbintohexsubstring"
#

CREATE FUNCTION `fn_varbintohexsubstring`(fsetprefix bit,pbinin varbinary(8000),startoffset int,cbytesin int) RETURNS varchar(4000) CHARSET latin1
    READS SQL DATA
BEGIN
  DECLARE pstrout VARCHAR(4000);
  DECLARE i int;
  DECLARE firstnibble int;
  DECLARE secondnibble int;
  DECLARE tempint int;
  DECLARE hexstring char( 16);
  BEGIN
    IF( pbinin IS NOT NULL) THEN
      SET i= 0, cbytesin= CASE WHEN( cbytesin> 0) THEN cbytesin ELSE LENGTH( pbinin) END,
         pstrout= CASE WHEN( fsetprefix= 1) THEN '0x'  ELSE ''  END,
         hexstring= '0123456789abcdef';
      IF((( cbytesin * 2) + 2> 4000) or( startoffset< 1)) THEN
        RETURN NULL;
      END IF;
      WHILE( i< cbytesin) DO
        SET tempint= ASCII( substring( pbinin, i + startoffset, 1));
        SET firstnibble= TRUNCATE((tempint / 16),0);
        SET secondnibble= tempint % 16;
        SET pstrout= CONCAT(pstrout ,cast( substring( hexstring,( firstnibble+1), 1) AS CHAR), cast( substring( hexstring,( secondnibble+1), 1) AS CHAR));
        SET i= i + 1;
      END WHILE;
      RETURN pstrout;
    END IF;
    RETURN NULL;
  END;
END;

#
# Procedure "acquireuserpasswd"
#

CREATE PROCEDURE `acquireuserpasswd`(in name1 VARCHAR(64), out uid1 INTEGER, out passwd1 VARCHAR(64))
BEGIN
  DECLARE passwdtemp VARCHAR(64);
  START TRANSACTION;
    SELECT id, passwd INTO uid1, passwdtemp FROM users WHERE name = name1;
    SELECT fn_varbintohexsubstring(1,passwdtemp,1,0) INTO passwd1;
  COMMIT;
END;

#
# Procedure "addForbid"
#

CREATE PROCEDURE `addForbid`(in userid1 INTEGER, in type1 INTEGER, in forbid_time1 INTEGER, in reason1 BINARY(255), in gmroleid1 INTEGER)
BEGIN
 DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE forbid SET ctime = now(), forbid_time = forbid_time1, reason = reason1, gmroleid = gmroleid1 WHERE userid = userid1 AND type = type1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO forbid VALUES(userid1, type1, now(), forbid_time1, reason1, gmroleid);
    END IF;
  COMMIT;
END;

#
# Procedure "addGM"
#

CREATE PROCEDURE `addGM`(in userid INTEGER, in zoneid INTEGER)
BEGIN
  DECLARE x INTEGER;
  START TRANSACTION;
    SET x = 0;
    WHILE x < 12 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 100;
    WHILE x < 106 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 200;
    WHILE x < 215 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 500;
    WHILE x < 519 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
  COMMIT;
END;

#
# Procedure "adduser"
#

CREATE PROCEDURE `adduser`(
  in name1 VARCHAR(64),
  in passwd1 VARCHAR(64),
  in prompt1 VARCHAR(32),
  in answer1 VARCHAR(32),
  in truename1 VARCHAR(32),
  in idnumber1 VARCHAR(32),
  in email1 VARCHAR(32),
  in mobilenumber1 VARCHAR(32),
  in province1 VARCHAR(32),
  in city1 VARCHAR(32),
  in phonenumber1 VARCHAR(32),
  in address1 VARCHAR(64),
  in postalcode1 VARCHAR(8),
  in gender1 INTEGER,
  in birthday1 VARCHAR(32),
  in qq1 VARCHAR(32),
  in passwd21 VARCHAR(64)
)
BEGIN
  DECLARE idtemp INTEGER;
    SELECT IFNULL(MAX(id), 16) + 16 INTO idtemp FROM users;
    INSERT INTO users (id,name,passwd,prompt,answer,truename,idnumber,email,mobilenumber,province,city,phonenumber,address,postalcode,gender,birthday,creatime,qq,passwd2) VALUES( idtemp, name1, passwd1, prompt1, answer1, truename1, idnumber1, email1, mobilenumber1, province1, city1, phonenumber1, address1, postalcode1, gender1, birthday1, now(), qq1, passwd21 );
END;

#
# Procedure "adduserpoint"
#

CREATE PROCEDURE `adduserpoint`(in uid1 INTEGER, in aid1 INTEGER, in time1 INTEGER)
BEGIN
 DECLARE rowcount INTEGER;
 START TRANSACTION;
    UPDATE point SET time = IFNULL(time,0) + time1 WHERE uid1 = uid AND aid1 = aid;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO point (uid,aid,time) VALUES (uid1,aid1,time1);
    END IF;
  COMMIT;
END;

#
# Procedure "addUserPriv"
#

CREATE PROCEDURE `addUserPriv`(in userid INTEGER, in zoneid INTEGER, in rid INTEGER)
BEGIN
  START TRANSACTION;
    INSERT INTO auth VALUES(userid, zoneid, rid);
  COMMIT;
END;

#
# Procedure "changePasswd"
#

CREATE PROCEDURE `changePasswd`(in name1 VARCHAR(64), in passwd1 VARCHAR(64))
BEGIN
  START TRANSACTION;
    UPDATE users SET passwd = passwd1 WHERE name = name1;
  COMMIT;
END;

#
# Procedure "changePasswd2"
#

CREATE PROCEDURE `changePasswd2`(in name1 VARCHAR(64), in passwd21 VARCHAR(64))
BEGIN
  START TRANSACTION;
    UPDATE users SET passwd2 = passwd21 WHERE name = name1;
  COMMIT;
END;

#
# Procedure "clearonlinerecords"
#

CREATE PROCEDURE `clearonlinerecords`(in zoneid1 INTEGER, in aid1 INTEGER)
BEGIN
  START TRANSACTION;
    UPDATE point SET zoneid = NULL, zonelocalid = NULL WHERE aid = aid1 AND zoneid = zoneid1;
    DELETE FROM online;
  COMMIT;
END;

#
# Procedure "deleteTimeoutForbid"
#

CREATE PROCEDURE `deleteTimeoutForbid`(in userid1 INTEGER)
BEGIN
  START TRANSACTION;
    DELETE FROM forbid WHERE userid = userid1 AND timestampdiff(second, ctime, now()) > forbid_time;
  COMMIT;
END;

#
# Procedure "delUserPriv"
#

CREATE PROCEDURE `delUserPriv`(in userid1 INTEGER, in zoneid1 INTEGER, in rid1 INTEGER, in deltype1 INTEGER)
BEGIN
START TRANSACTION;
  IF deltype1 = 0 THEN
    DELETE FROM auth WHERE userid = userid1 AND zoneid = zoneid1 AND rid = rid1;
  ELSE
    IF deltype1 = 1 THEN
      DELETE FROM auth WHERE userid = userid1 AND zoneid = zoneid1;
    ELSE
      IF deltype1 = 2 THEN
        DELETE FROM auth WHERE userid = userid1;
      END IF;
    END IF;
  END IF;
COMMIT;
END;

#
# Procedure "enableiplimit"
#

CREATE PROCEDURE `enableiplimit`(in uid1 INTEGER, in enable1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  UPDATE iplimit SET enable=enable1 WHERE uid=uid1;
  SET rowcount = ROW_COUNT();
  IF rowcount = 0 THEN
    INSERT INTO iplimit (uid,enable) VALUES (uid1,enable1);
  END IF;
  COMMIT;
END;

#
# Procedure "lockuser"
#

CREATE PROCEDURE `lockuser`(in uid1 INTEGER, in lockstatus1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  UPDATE iplimit SET lockstatus=lockstatus1 WHERE uid=uid1;
  SET rowcount = ROW_COUNT();
  IF rowcount = 0 THEN
    INSERT INTO iplimit (uid,lockstatus,enable) VALUES (uid1,lockstatus1,'t');
  END IF;
  COMMIT;
END;

#
# Procedure "recordoffline"
#

CREATE PROCEDURE `recordoffline`(in uid1 INTEGER, in aid1 INTEGER, inout zoneid1 INTEGER, inout zonelocalid1 INTEGER, inout overwrite1 INTEGER)
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE point SET zoneid = NULL, zonelocalid = NULL WHERE uid = uid1 AND aid = aid1 AND zoneid = zoneid1;
    DELETE FROM online WHERE ID = uid1;
    SET rowcount = ROW_COUNT();
    IF overwrite1 = rowcount THEN
      SELECT zoneid, zonelocalid INTO zoneid1, zonelocalid1 FROM point WHERE uid = uid1 AND aid = aid1;
    END IF;
  COMMIT;
END;

#
# Procedure "recordonline"
#

CREATE PROCEDURE `recordonline`(in uid1 INTEGER, in aid1 INTEGER, inout zoneid1 INTEGER, inout zonelocalid1 INTEGER, inout overwrite INTEGER)
BEGIN
  DECLARE tmp_zoneid INTEGER;
  DECLARE tmp_zonelocalid INTEGER;
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    SELECT SQL_CALC_FOUND_ROWS zoneid, zonelocalid INTO tmp_zoneid, tmp_zonelocalid FROM point WHERE uid = uid1 and aid = aid1;
    INSERT INTO online (ID) VALUES (uid1);
    SET rowcount = FOUND_ROWS();
    IF rowcount = 0 THEN
      INSERT INTO point (uid, aid, time, zoneid, zonelocalid, lastlogin) VALUES (uid1, aid1, 0, zoneid1, zonelocalid1, now());
    ELSE IF tmp_zoneid IS NULL OR overwrite = 1 THEN
      UPDATE point SET zoneid = zoneid1, zonelocalid = zonelocalid1, lastlogin = now() WHERE uid = uid1 AND aid = aid1;
    END IF;
    END IF;
    IF tmp_zoneid IS NULL THEN
      SET overwrite = 1;
    ELSE
      SET zoneid1 = tmp_zoneid;
      SET zonelocalid1 = tmp_zonelocalid;
    END IF;
  COMMIT;
END;

#
# Procedure "remaintime"
#

CREATE PROCEDURE `remaintime`(in uid1 INTEGER, in aid1 INTEGER, out remain INTEGER, out freetimeleft INTEGER)
BEGIN
  DECLARE enddate1 DATETIME;
  DECLARE now1 DATETIME;
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  SET now1 = now();
  IF aid1 = 0 THEN
    SET remain = 86313600;
    SET enddate1 = date_add(now1, INTERVAL '30' DAY);
  ELSE
    SELECT time, IFNULL(enddate, now1) INTO remain, enddate1 FROM point WHERE uid = uid1 AND aid = aid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      SET remain = 0;
      INSERT INTO point (uid,aid,time) VALUES (uid1, aid1, remain);
    END IF;
  END IF;
  SET freetimeleft = 0;
  IF enddate1 > now1 THEN
    SET freetimeleft = timestampdiff(second, now1, enddate1);
  END IF;
  COMMIT;
END;

#
# Procedure "setiplimit"
#

CREATE PROCEDURE `setiplimit`(in uid1 INTEGER, in ipaddr11 INTEGER, in ipmask11 VARCHAR(2), in ipaddr21 INTEGER, in ipmask21 VARCHAR(2), in ipaddr31 INTEGER, in ipmask31 VARCHAR(2), in enable1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE iplimit SET ipaddr1 = ipaddr11, ipmask1 = ipmask11, ipaddr2 = ipaddr21, ipmask2 = ipmask21, ipaddr3 = ipaddr31, ipmask3 = ipmask31 WHERE uid = uid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO iplimit (uid, ipaddr1, ipmask1, ipaddr2, ipmask2, ipaddr3, ipmask3, enable1) VALUES (uid1, ipaddr11, ipmask11, ipaddr21, ipmask21, ipaddr31, ipmask31,'t');
    END IF;
  COMMIT;
END;

#
# Procedure "updateUserInfo"
#

CREATE PROCEDURE `updateUserInfo`(
  in name1 VARCHAR(32),
  in prompt1 VARCHAR(32),
  in answer1 VARCHAR(32),
  in truename1 VARCHAR(32),
  in idnumber1 VARCHAR(32),
  in email1 VARCHAR(32),
  in mobilenumber1 VARCHAR(32),
  in province1 VARCHAR(32),
  in city1 VARCHAR(32),
  in phonenumber1 VARCHAR(32),
  in address1 VARCHAR(32),
  in postalcode1 VARCHAR(32),
  in gender1 INTEGER,
  in birthday1 VARCHAR(32),
  in qq1 VARCHAR(32)
 )
BEGIN
  START TRANSACTION;
    UPDATE users SET prompt = prompt1, answer = answer1, truename = truename1, idnumber = idnumber1, email = email1, mobilenumber = mobilenumber1, province = province1, city = city1, phonenumber = phonenumber1, address = address1, postalcode = postalcode1, gender = gender1, birthday = birthda1, qq = qq1 WHERE name = name1;
  COMMIT;
END;

#
# Procedure "usecash"
#

CREATE PROCEDURE `usecash`(
  in userid1 INTEGER,
  in zoneid1 INTEGER,
  in sn1 INTEGER,
  in aid1 INTEGER,
  in point1 INTEGER,
  in cash1 INTEGER,
  in status1 INTEGER,
  out error INTEGER
)
BEGIN
DECLARE sn_old INTEGER;
DECLARE aid_old INTEGER;
DECLARE point_old INTEGER;
DECLARE cash_old INTEGER;
DECLARE status_old INTEGER;
DECLARE createtime_old DATETIME;
DECLARE time_old INTEGER;
DECLARE need_restore INTEGER;
DECLARE exists1 INTEGER;
DECLARE rowcount INTEGER;
START TRANSACTION;
  SET error = 0;
  SET need_restore = 0;
  SELECT SQL_CALC_FOUND_ROWS sn, aid, point, cash, status, creatime INTO sn_old, aid_old, point_old, cash_old, status_old, createtime_old FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn >= 0;
  SET rowcount = FOUND_ROWS();
  IF rowcount = 1 THEN
    SET exists1 = 1;
  ELSE
    SET exists1 = 0;
  END IF;
  IF status1 = 0 THEN
    IF exists1 = 0 THEN
      SELECT aid, point INTO aid1, point1 FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn1;
      SET point1 = IFNULL(point1,0);
      UPDATE point SET time = time-point1 WHERE uid = userid1 AND aid = aid1 AND time >= point1;
      SET rowcount = ROW_COUNT();
      IF rowcount = 1 THEN
        UPDATE usecashnow SET sn = 0, status = 1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn1;
      ELSE
        SET error = -8;
      END IF;
    END IF;
  ELSE
    IF status1 = 1 THEN
      IF exists1 = 0 THEN
        UPDATE point SET time = time-point1 WHERE uid = userid1 AND aid = aid1 AND time >= point1;
        SET rowcount = ROW_COUNT();
        IF rowcount = 1 THEN
          INSERT INTO usecashnow (userid, zoneid, sn, aid, point, cash, status, creatime) VALUES (userid1, zoneid1, sn1, aid1, point1, cash1, status1, now());
        ELSE
          INSERT INTO usecashnow SELECT userid1, zoneid1, IFNULL(min(sn),0)-1, aid1, point1, cash1, 0, now() FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND 0 >= sn;
          SET error = -8;
        END IF;
      ELSE
        INSERT INTO usecashnow SELECT userid1, zoneid1, IFNULL(min(sn),0)-1, aid1, point1, cash1, 0, now() FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND 0 >= sn;
        SET error = -7;
      END IF;
    ELSE
      IF status1 = 2 THEN
        IF exists1 = 1 AND status_old = 1 AND sn_old = 0 THEN
          UPDATE usecashnow SET sn = sn1, status = status1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
        ELSE
          SET error = -9;
        END IF;
      ELSE
        IF status1 = 3 THEN
           IF exists1 = 1 AND status_old = 2 THEN
            UPDATE usecashnow SET status = status1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
           ELSE
            SET error = -10;
            END IF;
        ELSE
         IF status1 = 4 THEN
          IF exists1 = 1 THEN
            DELETE FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
            INSERT INTO usecashlog (userid, zoneid, sn, aid, point, cash, status, creatime, fintime) VALUES (userid1, zoneid1, sn_old, aid_old, point_old, cash_old, status1, createtime_old, now());
          END IF;
          IF NOT (exists1 = 1 AND status_old = 3) THEN
            SET error = -11;
          END IF;
        ELSE
          SET error = -12;
        END IF;
      END IF;
    END IF;
  END IF;
  END IF;
  IF need_restore = 1 THEN
    UPDATE point SET time = time+point_old WHERE uid = userid1 AND aid = aid_old;
    DELETE FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
    INSERT INTO usecashlog (userid, zoneid, sn, aid, point, cash, status, creatime, fintime) VALUES (userid1, zoneid1, sn_old, aid_old, point_old, cash_old, status1, createtime_old, now());
  END IF;
COMMIT;
END;
