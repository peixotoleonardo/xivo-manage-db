BEGIN;

INSERT INTO "agentgroup" VALUES (DEFAULT,1,'default','',0,0,'');


INSERT INTO "contexttype" VALUES(DEFAULT, 'internal', 0, 0, '');
INSERT INTO "contexttype" VALUES(DEFAULT, 'incall', 0, 0, '');
INSERT INTO "contexttype" VALUES(DEFAULT, 'outcall', 0, 0, '');
INSERT INTO "contexttype" VALUES(DEFAULT, 'services', 0, 0, '');
INSERT INTO "contexttype" VALUES(DEFAULT, 'others', 0, 0, '');


INSERT INTO "cti_service" VALUES (DEFAULT, 'enablevm');
INSERT INTO "cti_service" VALUES (DEFAULT, 'callrecord');
INSERT INTO "cti_service" VALUES (DEFAULT, 'incallrec');
INSERT INTO "cti_service" VALUES (DEFAULT, 'incallfilter');
INSERT INTO "cti_service" VALUES (DEFAULT, 'enablednd');
INSERT INTO "cti_service" VALUES (DEFAULT, 'fwdunc');
INSERT INTO "cti_service" VALUES (DEFAULT, 'fwdbusy');
INSERT INTO "cti_service" VALUES (DEFAULT, 'fwdrna');


INSERT INTO "cti_preference" VALUES (DEFAULT, 'loginwindow.url');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.identity.logagent');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.identity.pauseagent');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.agentdetails.noqueueaction');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.agentdetails.hideastid');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.agentdetails.hidecontext');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.agents.fontname');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.agents.fontsize');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.agents.iconsize');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'xlet.queues.statsfetchperiod');
INSERT INTO "cti_preference" VALUES (DEFAULT, 'presence.autochangestate');


INSERT INTO "cti_xlet" VALUES (DEFAULT, 'identity');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'dial');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'history');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'search');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'directory');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'fax');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'features');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'conference');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'datetime');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'tabber');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'mylocaldir');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'customerinfo');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'agents');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'agentdetails');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'queues');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'queuemembers');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'queueentrydetails');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'switchboard');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'remotedirectory');
INSERT INTO "cti_xlet" VALUES (DEFAULT, 'agentstatusdashboard');


INSERT INTO "cti_xlet_layout" VALUES (DEFAULT, 'dock');
INSERT INTO "cti_xlet_layout" VALUES (DEFAULT, 'grid');
INSERT INTO "cti_xlet_layout" VALUES (DEFAULT, 'tab');


INSERT INTO "ctiphonehintsgroup" VALUES(DEFAULT,'xivo','De base non supprimable',0);


INSERT INTO "ctipresences" VALUES(DEFAULT,'xivo','De base non supprimable',0);


INSERT INTO "cti_profile" VALUES (DEFAULT, 'Supervisor', 1, 1);
INSERT INTO "cti_profile" VALUES (DEFAULT, 'Agent', 1, 1);
INSERT INTO "cti_profile" VALUES (DEFAULT, 'Client', 1, 1);
INSERT INTO "cti_profile" VALUES (DEFAULT, 'Switchboard', 1, 1);


/* agentsup */
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'identity'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'grid'),
                                       TRUE, TRUE, TRUE, TRUE, 0);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'queues'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'queuemembers'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'queueentrydetails'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'agents'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'agentdetails'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'conference'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Supervisor'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));

/* agent */
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'identity'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Agent'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'grid'),
                                       TRUE, TRUE, TRUE, TRUE, 0);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'queues'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Agent'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'customerinfo'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Agent'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'agentdetails'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Agent'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'));

/* client */
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'identity'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'grid'),
                                       TRUE, TRUE, TRUE, TRUE, 0);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'tabber'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'grid'),
                                       TRUE, TRUE, TRUE, TRUE, 1);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'dial'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'grid'),
                                       TRUE, TRUE, TRUE, TRUE, 2);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'search'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 0);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'customerinfo'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 1);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'fax'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 2);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'history'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 3);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'remotedirectory'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 4);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'features'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 5);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'mylocaldir'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 6);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'conference'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'tab'),
                                       TRUE, TRUE, TRUE, TRUE, 7);

/* switchboard */
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'identity'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Switchboard'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'grid'),
                                       TRUE, TRUE, TRUE, TRUE, 0);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'switchboard'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Switchboard'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'),
                                       TRUE, TRUE, TRUE, TRUE, 1);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'dial'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Switchboard'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'),
                                       TRUE, TRUE, TRUE, TRUE, 2);
INSERT INTO "cti_profile_xlet" VALUES ((SELECT "id" FROM "cti_xlet" WHERE "plugin_name" = 'directory'),
                                       (SELECT "id" FROM "cti_profile" WHERE "name" = 'Switchboard'),
                                       (SELECT "id" FROM "cti_xlet_layout" WHERE "name" = 'dock'),
                                       TRUE, TRUE, TRUE, TRUE, 3);


/* client */
INSERT INTO "cti_profile_service" VALUES ((SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                          (SELECT "id" FROM "cti_service" WHERE "key" = 'enablednd'));
INSERT INTO "cti_profile_service" VALUES ((SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                          (SELECT "id" FROM "cti_service" WHERE "key" = 'fwdunc'));
INSERT INTO "cti_profile_service" VALUES ((SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                          (SELECT "id" FROM "cti_service" WHERE "key" = 'fwdbusy'));
INSERT INTO "cti_profile_service" VALUES ((SELECT "id" FROM "cti_profile" WHERE "name" = 'Client'),
                                          (SELECT "id" FROM "cti_service" WHERE "key" = 'fwdrna'));


INSERT INTO "cticontexts" VALUES(DEFAULT,'default','xivodir,internal','Display','Contexte par défaut',1);
INSERT INTO "cticontexts" VALUES(DEFAULT, '__switchboard_directory', 'xivodir', 'switchboard', '', 1);


INSERT INTO "ctidirectories" VALUES(DEFAULT,'xivodir', 'phonebook', '', '["phonebook.firstname","phonebook.lastname","phonebook.displayname","phonebook.society","phonebooknumber.office.number"]','["phonebooknumber.office.number","phonebooknumber.mobile.number"]','Répertoire XiVO Externe',1);
INSERT INTO "ctidirectories" VALUES(DEFAULT,'internal','internal','','["userfeatures.firstname","userfeatures.lastname"]','','Répertoire XiVO Interne',1);


INSERT INTO "ctidirectoryfields" VALUES(1, 'phone', 'phonebooknumber.office.number');
INSERT INTO "ctidirectoryfields" VALUES(1, 'firstname', 'phonebook.firstname');
INSERT INTO "ctidirectoryfields" VALUES(1, 'lastname', 'phonebook.lastname');
INSERT INTO "ctidirectoryfields" VALUES(1, 'fullname', 'phonebook.fullname');
INSERT INTO "ctidirectoryfields" VALUES(1, 'company', 'phonebook.society');
INSERT INTO "ctidirectoryfields" VALUES(1, 'mail', 'phonebook.email');
INSERT INTO "ctidirectoryfields" VALUES(1, 'reverse', 'phonebook.fullname');
INSERT INTO "ctidirectoryfields" VALUES(2, 'firstname', 'userfeatures.firstname');
INSERT INTO "ctidirectoryfields" VALUES(2, 'lastname', 'userfeatures.lastname');
INSERT INTO "ctidirectoryfields" VALUES(2, 'phone', 'extensions.exten');


INSERT INTO "ctidisplays" VALUES(DEFAULT,'Display','{"10": [ "Nom","","","{db-firstname} {db-lastname}" ],"20": [ "Numéro","phone","","{db-phone}" ],"30": [ "Entreprise","","Inconnue","{db-company}" ],"40": [ "E-mail","","","{db-mail}" ], "50": [ "Source","","","{xivo-directory}" ]}',1,'Affichage par défaut');
INSERT INTO "ctidisplays" VALUES(DEFAULT, 'switchboard', '{ "10": [ "", "status", "", ""],"20": [ "Name", "name", "", "{db-firstname} {db-lastname}"],"30": [ "Number", "number_office", "", "{db-phone}"]}', 1, '');


INSERT INTO "ctimain" VALUES(DEFAULT, 'xivocti', '127.0.0.1', 5038, 'xivo_cti_user', 'phaickbebs9', '0.0.0.0', 5003, 1, '0.0.0.0', 5013, 0, '127.0.0.1', 5004, 1, '127.0.0.1', 5005, 1, '', '', 10, 5, 0, 1);


INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'-2','Inexistant','#030303');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'-1','Désactivé','#000000');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'0','Disponible','#0DFF25');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'1','En ligne OU appelle','#FF032D');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'2','Occupé','#FF0008');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'4','Indisponible','#FFFFFF');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'8','Sonne','#1B0AFF');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'9','(En Ligne OU Appelle) ET Sonne','#FF0526');
INSERT INTO "ctiphonehints" VALUES(DEFAULT,1,'16','En Attente','#F7FF05');


INSERT INTO "ctireversedirectories" VALUES(DEFAULT,'["xivodir"]');


INSERT INTO "ctisheetactions" VALUES(DEFAULT,'XiVO','Modèle de fiche de base.','dest','{"10": [ "Nom","title","","{xivo-calleridname}",0 ],"20": [ "Numéro","text","","{xivo-calleridnum}",0 ],"30": [ "Origine","text","","{xivo-origin}",0 ]}','{"10": [ "Nom","title","","{xivo-calledidname}" ],"20": [ "Numéro","body","","{xivo-calleridnum}" ],"30": [ "Origine","body","","{xivo-origin}" ]}','','{}',0,1,1);


INSERT INTO "ctisheetevents" VALUES(DEFAULT,'','','XiVO','','');


INSERT INTO "ctistatus" VALUES(DEFAULT,1,'available','Disponible','enablednd(false)','#08FD20','1,2,3,4,5',0);
INSERT INTO "ctistatus" VALUES(DEFAULT,1,'away','Sorti','enablednd(false)','#FDE50A','1,2,3,4,5',1);
INSERT INTO "ctistatus" VALUES(DEFAULT,1,'outtolunch','Parti Manger','enablednd(false)','#001AFF','1,2,3,4,5',1);
INSERT INTO "ctistatus" VALUES(DEFAULT,1,'donotdisturb','Ne pas déranger','enablednd(true)','#FF032D','1,2,3,4,5',1);
INSERT INTO "ctistatus" VALUES(DEFAULT,1,'berightback','Bientôt de retour','enablednd(false)','#FFB545','1,2,3,4,5',1);
INSERT INTO "ctistatus" VALUES(DEFAULT,1,'disconnected','Déconnecté','agentlogoff()','#202020','',0);


INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*31.','extenfeatures','agentstaticlogin');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*32.','extenfeatures','agentstaticlogoff');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*30.','extenfeatures','agentstaticlogtoggle');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*37.','extenfeatures','bsfilter');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*664.','extenfeatures','callgroup');
INSERT INTO "extensions" VALUES (DEFAULT,1,'xivo-features','*34','extenfeatures','calllistening');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*667.','extenfeatures','callmeetme');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*665.','extenfeatures','callqueue');
INSERT INTO "extensions" VALUES (DEFAULT,1,'xivo-features','*26','extenfeatures','callrecord');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*666.','extenfeatures','calluser');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*36','extenfeatures','directoryaccess');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*25','extenfeatures','enablednd');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*90','extenfeatures','enablevm');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*90.','extenfeatures','enablevmslt');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*23.','extenfeatures','fwdbusy');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*22.','extenfeatures','fwdrna');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*21.','extenfeatures','fwdunc');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*20','extenfeatures','fwdundoall');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*48378','extenfeatures','autoprov');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*27','extenfeatures','incallfilter');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*10','extenfeatures','phonestatus');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*735.','extenfeatures','phoneprogfunckey');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*8.','extenfeatures','pickup');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*9','extenfeatures','recsnd');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*99.','extenfeatures','vmboxmsgslt');
INSERT INTO "extensions" VALUES (DEFAULT,1,'xivo-features','_*93.','extenfeatures','vmboxpurgeslt');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*97.','extenfeatures','vmboxslt');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','*98','extenfeatures','vmusermsg');
INSERT INTO "extensions" VALUES (DEFAULT,1,'xivo-features','*92','extenfeatures','vmuserpurge');
INSERT INTO "extensions" VALUES (DEFAULT,1,'xivo-features','_*92.','extenfeatures','vmuserpurgeslt');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*96.','extenfeatures','vmuserslt');
INSERT INTO "extensions" VALUES (DEFAULT,0,'xivo-features','_*11.','extenfeatures','paging');


INSERT INTO "features" VALUES (DEFAULT,0,0,0,'features.conf','general','parkext','700');
INSERT INTO "features" VALUES (DEFAULT,0,0,0,'features.conf','general','parkpos','701-750');
INSERT INTO "features" VALUES (DEFAULT,0,0,0,'features.conf','general','context','parkedcalls');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkinghints','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkingtime','45');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','comebacktoorigin','yes');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','courtesytone',NULL);
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkedplay','caller');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkedcalltransfers','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkedcallreparking','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkedcallhangup','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkedcallrecording','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkeddynamic','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','adsipark','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','findslot','next');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','parkedmusicclass','default');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','transferdigittimeout','5');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','xfersound',NULL);
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','xferfailsound',NULL);
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','pickupexten','*8');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','pickupsound','');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','pickupfailsound','');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','featuredigittimeout','1500');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','atxfernoanswertimeout','15');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','atxferdropcall','no');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','atxferloopdelay','10');
INSERT INTO "features" VALUES (DEFAULT,0,0,1,'features.conf','general','atxfercallbackretries','2');
INSERT INTO "features" VALUES (DEFAULT,1,0,0,'features.conf','featuremap','blindxfer','*1');
INSERT INTO "features" VALUES (DEFAULT,1,0,0,'features.conf','featuremap','disconnect','*0');
INSERT INTO "features" VALUES (DEFAULT,1,0,0,'features.conf','featuremap','automon','*3');
INSERT INTO "features" VALUES (DEFAULT,1,0,0,'features.conf','featuremap','atxfer','*2');


INSERT INTO "func_key_type" ("name") VALUES ('speeddial');


INSERT INTO "func_key_destination_type" (id, name) VALUES (1, 'user'),
                                                          (2, 'group'),
                                                          (3, 'queue'),
                                                          (4, 'conference');


INSERT INTO "musiconhold" VALUES (DEFAULT,0,0,0,'musiconhold.conf','default','mode','files');
INSERT INTO "musiconhold" VALUES (DEFAULT,0,0,1,'musiconhold.conf','default','application','');
INSERT INTO "musiconhold" VALUES (DEFAULT,0,0,0,'musiconhold.conf','default','random','no');
INSERT INTO "musiconhold" VALUES (DEFAULT,0,0,0,'musiconhold.conf','default','directory','/var/lib/xivo/moh/default');


INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','bindport',4569);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','bindaddr','0.0.0.0');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','iaxthreadcount',10);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','iaxmaxthreadcount',100);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','iaxcompat','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','authdebug','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','delayreject','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','trunkfreq',20);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','trunktimestamps','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,1,'iax.conf','general','regcontext',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','minregexpire',60);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','maxregexpire',60);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','bandwidth','high');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,1,'iax.conf','general','tos',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','jitterbuffer','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','forcejitterbuffer','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','maxjitterbuffer',1000);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','maxjitterinterps',10);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','resyncthreshold',1000);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,1,'iax.conf','general','accountcode',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','amaflags','default');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','adsi','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','transfer','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','language','fr_FR');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','mohinterpret','default');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,1,'iax.conf','general','mohsuggest',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','encryption','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','maxauthreq',3);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','codecpriority','host');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,1,'iax.conf','general','disallow',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,1,'iax.conf','general','allow',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','rtcachefriends','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','rtupdate','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','rtignoreregexpire','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','rtautoclear','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','pingtime',20);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','lagrqtime',10);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','nochecksums','no');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','autokill','yes');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','calltokenoptional','0.0.0.0');
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','srvlookup',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','jittertargetextra',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','forceencryption',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','trunkmaxsize',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','trunkmtu',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','cos',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','allowfwdownload',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','parkinglot',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','maxcallnumbers',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','maxcallnumbers_nonvalidated',NULL);
INSERT INTO "staticiax" VALUES (DEFAULT,0,0,0,'iax.conf','general','shrinkcallerid',NULL);


INSERT INTO "staticmeetme" VALUES (DEFAULT,0,0,0,'meetme.conf','general','audiobuffers',32);
INSERT INTO "staticmeetme" VALUES (DEFAULT,0,0,0,'meetme.conf','general','schedule','yes');
INSERT INTO "staticmeetme" VALUES (DEFAULT,0,0,0,'meetme.conf','general','logmembercount','yes');
INSERT INTO "staticmeetme" VALUES (DEFAULT,0,0,0,'meetme.conf','general','fuzzystart',300);
INSERT INTO "staticmeetme" VALUES (DEFAULT,0,0,0,'meetme.conf','general','earlyalert',3600);
INSERT INTO "staticmeetme" VALUES (DEFAULT,0,0,0,'meetme.conf','general','endalert',120);


INSERT INTO "staticqueue" VALUES (DEFAULT,0,0,0,'queues.conf','general','persistentmembers','yes');
INSERT INTO "staticqueue" VALUES (DEFAULT,0,0,0,'queues.conf','general','autofill','no');
INSERT INTO "staticqueue" VALUES (DEFAULT,0,0,0,'queues.conf','general','monitor-type','no');
INSERT INTO "staticqueue" VALUES (DEFAULT,0,0,0,'queues.conf','general','updatecdr','no');
INSERT INTO "staticqueue" VALUES (DEFAULT,0,0,0,'queues.conf','general','shared_lastcall','no');


INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','bindport',5060);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','autocreatepeer','persist');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','autocreate_context','xivo-initconfig');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','autocreate_type','friend');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','allowguest','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','allowsubscribe','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','allowoverlap','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','promiscredir','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','autodomain','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','domain',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','allowexternaldomains','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','usereqphone','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','realm','xivo');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','alwaysauthreject','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','useragent','XiVO PBX');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','buggymwi','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','regcontext',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','callerid','xivo');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','fromdomain',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','sipdebug','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','dumphistory','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','recordhistory','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','callevents','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','tos_sip',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','tos_audio',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','tos_video',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','t38pt_udptl','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','t38pt_usertpsource','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','localnet',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','externip',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','externhost',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','externrefresh',10);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','matchexterniplocally','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','outboundproxy',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','g726nonstandard','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','disallow',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','allow',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','t1min',100);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','relaxdtmf','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rfc2833compensate','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','compactheaders','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtptimeout',0);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtpholdtimeout',0);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtpkeepalive',0);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','directrtpsetup','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','notifymimetype','application/simple-message-summary');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','srvlookup','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','pedantic','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','minexpiry',60);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','maxexpiry',3600);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','defaultexpiry',120);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','registertimeout',20);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','registerattempts',0);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','notifyringing','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','notifyhold','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','allowtransfer','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','maxcallbitrate',384);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','autoframing','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jbenable','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jbforce','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jbmaxsize',200);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jbresyncthreshold',1000);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jbimpl','fixed');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jblog','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','context',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','nat','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','dtmfmode','info');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','qualify','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','useclientcode','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','progressinband','never');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','language','fr_FR');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','mohinterpret','default');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','mohsuggest',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','vmexten','*98');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','trustrpid','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','sendrpid','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','insecure','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtcachefriends','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtupdate','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','ignoreregexpire','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtsavesysname','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','rtautoclear','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,1,'sip.conf','general','subscribecontext',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','match_auth_username','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','udpbindaddr','0.0.0.0');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tcpenable','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tcpbindaddr',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlsenable','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlsbindaddr',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlscertfile',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlscafile',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlscadir','/var/lib/asterisk/certs/cadir');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlsdontverifyserver','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tlscipher',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','tos_text',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','cos_sip',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','cos_audio',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','cos_video',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','cos_text',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','mwiexpiry',3600);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','qualifyfreq',60);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','qualifygap',100);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','qualifypeers',1);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','parkinglot',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','permaturemedia',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','sdpsession',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','sdpowner',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','authfailureevents','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','dynamic_exclude_static','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','contactdeny',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','contactpermit',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','shrinkcallerid','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','regextenonqualify','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','timer1',500);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','timerb',32000);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','session-timers',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','session-expires',600);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','session-minse',90);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','session-refresher','uas');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','hash_users',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','hash_peers',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','hash_dialogs',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','notifycid','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','callcounter','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','stunaddr',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','directmedia','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','ignoresdpversion','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','jbtargetextra',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','encryption','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','externtcpport',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','externtlsport',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','media_address',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','use_q850_reason','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','snom_aoc_enabled','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','subscribe_network_change_event','yes');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','maxforwards',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','disallowed_methods',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','domainsasrealm',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','textsupport',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','videosupport',NULL);
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','auth_options_requests','no');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','transport','udp');
INSERT INTO "staticsip" VALUES (DEFAULT,0,0,0,'sip.conf','general','prematuremedia','no');


INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','maxmsg',100);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','silencethreshold',256);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','minsecs',0);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','maxsecs',0);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','maxsilence',15);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','review','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','operator','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','format','wav');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','maxlogins',3);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','envelope','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','saycid','no');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','cidinternalcontexts',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','sayduration','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','saydurationm',2);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','forcename','no');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','forcegreetings','no');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','tempgreetwarn','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','maxgreet',0);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','skipms',3000);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','sendvoicemail','no');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','usedirectory','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','nextaftercmd','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','dialout',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','callback',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','exitcontext',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','attach','yes');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','volgain',0);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','mailcmd','/usr/sbin/sendmail -t');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','serveremail','xivo');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','charset','UTF-8');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','fromstring','XiVO PBX');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','emaildateformat','%Y-%m-%d à %H:%M:%S');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','pbxskip','no');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','emailsubject','Messagerie XiVO');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','emailbody',E'Bonjour ${VM_NAME},\n\nVous avez reçu un message d''une durée de ${VM_DUR} minute(s), il vous reste actuellement ${VM_MSGNUM} message(s) non lu(s) sur votre messagerie vocale : ${VM_MAILBOX}.\n\nLe dernier a été envoyé par ${VM_CALLERID}, le ${VM_DATE}. Si vous le souhaitez vous pouvez l''écouter ou le consulter en tapant le *98 sur votre téléphone.\n\nMerci.\n\n-- Messagerie XiVO --');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','pagerfromstring','XiVO PBX');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','pagersubject',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','pagerbody',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','adsifdn','0000000F');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','adsisec','9BDBF7AC');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','adsiver',1);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','searchcontexts','no');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,0,'voicemail.conf','general','externpass','/usr/share/asterisk/bin/change-pass-vm');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','externnotify',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','smdiport',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','odbcstorage',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','odbctable',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,1,0,0,'voicemail.conf','zonemessages','eu-fr','Europe/Paris|''vm-received'' q ''digits/at'' kM');
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','moveheard',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','forward_urgent_auto',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','userscontext',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','smdienable',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','externpassnotify',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','externpasscheck',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','directoryinfo',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','pollmailboxes',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','pollfreq',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','imapgreetings',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','greetingsfolder',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','imapparentfolder',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','tz',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','hidefromdir',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','messagewrap',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','minpassword',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-password',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-newpassword',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-passchanged',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-reenterpassword',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-mismatch',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-invalid-password',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','vm-pls-try-again',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','listen-control-forward-key',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','listen-control-reverse-key',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','listen-control-pause-key',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','listen-control-restart-key',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','listen-control-stop-key',NULL);
INSERT INTO "staticvoicemail" VALUES (DEFAULT,0,0,1,'voicemail.conf','general','backupdeleted',NULL);


INSERT INTO "general" VALUES (DEFAULT, 'Europe/Paris', NULL, NULL, 0);


INSERT INTO "agentglobalparams" VALUES (DEFAULT,'general','multiplelogin','no');
INSERT INTO "agentglobalparams" VALUES (DEFAULT,'general','persistentagents','yes');
INSERT INTO "agentglobalparams" VALUES (DEFAULT,'agents','autologoffunavail','no');
INSERT INTO "agentglobalparams" VALUES (DEFAULT,'agents','maxlogintries','3');
INSERT INTO "agentglobalparams" VALUES (DEFAULT,'agents','endcall','no');


INSERT INTO "sccpgeneralsettings" VALUES (DEFAULT, 'directmedia', 'no');
INSERT INTO "sccpgeneralsettings" VALUES (DEFAULT, 'dialtimeout', '5');
INSERT INTO "sccpgeneralsettings" VALUES (DEFAULT, 'keepalive', '10');
INSERT INTO "sccpgeneralsettings" VALUES (DEFAULT, 'language', 'en_US');
INSERT INTO "sccpgeneralsettings" VALUES (DEFAULT, 'allow', '');


DROP TYPE IF EXISTS "queue_statistics" CASCADE;
CREATE TYPE "queue_statistics" AS (
    received_call_count bigint,
    answered_call_count bigint,
    answered_call_in_qos_count bigint,
    abandonned_call_count bigint,
    received_and_done bigint,
    max_hold_time integer,
    mean_hold_time integer
);
ALTER TYPE "queue_statistics" OWNER TO asterisk;


DROP FUNCTION IF EXISTS "fill_simple_calls" (text, text);
CREATE FUNCTION "fill_simple_calls"(period_start text, period_end text)
  RETURNS void AS
$$
  INSERT INTO "stat_call_on_queue" (callid, "time", queue_id, status)
    SELECT
      callid,
      CAST ("time" AS TIMESTAMP) as "time",
      (SELECT id FROM stat_queue WHERE name=queuename) as queue_id,
      CASE WHEN event = 'FULL' THEN 'full'::call_exit_type
           WHEN event = 'DIVERT_CA_RATIO' THEN 'divert_ca_ratio'
           WHEN event = 'DIVERT_HOLDTIME' THEN 'divert_waittime'
           WHEN event = 'CLOSED' THEN 'closed'
           WHEN event = 'JOINEMPTY' THEN 'joinempty'
      END as status
    FROM queue_log
    WHERE event IN ('FULL', 'DIVERT_CA_RATIO', 'DIVERT_HOLDTIME', 'CLOSED', 'JOINEMPTY') AND
          "time" BETWEEN $1 AND $2;
$$
LANGUAGE SQL;
ALTER FUNCTION "fill_simple_calls" (period_start text, period_end text) OWNER TO asterisk;


DROP FUNCTION IF EXISTS "fill_leaveempty_calls" (text, text);
CREATE OR REPLACE FUNCTION "fill_leaveempty_calls" (period_start text, period_end text)
  RETURNS void AS
$$
INSERT INTO stat_call_on_queue (callid, time, waittime, queue_id, status)
SELECT
  callid,
  enter_time as time,
  EXTRACT(EPOCH FROM (leave_time - enter_time))::INTEGER as waittime,
  queue_id,
  'leaveempty' AS status
FROM (SELECT
        CAST (time AS TIMESTAMP) AS enter_time,
        (select CAST (time AS TIMESTAMP) from queue_log where callid=main.callid AND event='LEAVEEMPTY' LIMIT 1) AS leave_time,
        callid,
        (SELECT id FROM stat_queue WHERE name=queuename) AS queue_id
      FROM queue_log AS main
      WHERE callid IN (SELECT callid FROM queue_log WHERE event = 'LEAVEEMPTY')
            AND event = 'ENTERQUEUE'
            AND time BETWEEN $1 AND $2) AS first;
$$
LANGUAGE SQL;
ALTER FUNCTION "fill_leaveempty_calls" (period_start text, period_end text) OWNER TO asterisk;


DROP FUNCTION IF EXISTS "get_queue_statistics" (text, int, int);
CREATE FUNCTION "get_queue_statistics" (queue_name text, in_window int, xqos int)
  RETURNS "queue_statistics" AS
$$
    SELECT
        -- received_call_count
        count(*),
        -- answered_call_count
        count(case when call_picker <> '' then 1 end),
        -- answered_call_in_qos_count
        count(case when call_picker <> '' and hold_time < $3 then 1 end),
        -- abandonned_call_count
        count(case when hold_time is not null and (call_picker = '' or call_picker is null) then 1 end),
        -- received_and_done
        count(hold_time),
        -- max_hold_time
        max(hold_time),
         -- mean_hold_time
        cast (round(avg(hold_time)) as int)
    FROM
        queue_info
    WHERE
        queue_name = $1 and call_time_t > $2;
$$
LANGUAGE SQL;
ALTER FUNCTION "get_queue_statistics" (queue_name text, in_window integer, xqos integer) OWNER TO asterisk;


DROP FUNCTION IF EXISTS "set_agent_on_pauseall" ();
CREATE FUNCTION "set_agent_on_pauseall" ()
  RETURNS trigger AS
$$
DECLARE
    "number" text;
BEGIN
    SELECT "agent_number" INTO "number" FROM "agent_login_status" WHERE "interface" = NEW."agent";
    IF FOUND THEN
        NEW."agent" := 'Agent/' || "number";
    END IF;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;
ALTER FUNCTION "set_agent_on_pauseall" () OWNER TO asterisk;


CREATE TRIGGER "change_queue_log_agent"
    BEFORE INSERT ON "queue_log"
    FOR EACH ROW
    WHEN (NEW."event" = 'PAUSEALL' OR NEW."event" = 'UNPAUSEALL')
    EXECUTE PROCEDURE "set_agent_on_pauseall"();



INSERT INTO "directories" VALUES (DEFAULT,'internal' , NULL, 'internal' , '', 'XiVO internal users');
INSERT INTO "directories" VALUES (DEFAULT,'phonebook', NULL, 'phonebook', '', 'XiVO phonebook');


INSERT INTO "resolvconf" VALUES(DEFAULT, '', '', NULL, NULL, NULL, NULL, '');


INSERT INTO "user" VALUES (DEFAULT,NULL,'root','proformatique','root',1,0,EXTRACT(EPOCH from now()),0,'');


INSERT INTO "dhcp" VALUES (DEFAULT,0,'','','');


INSERT INTO "mail" VALUES (DEFAULT,'','xivo-clients.proformatique.com','','','');


INSERT INTO "monitoring" VALUES (DEFAULT,0,NULL,NULL,NULL);


INSERT INTO "provisioning" VALUES(DEFAULT, '', '127.0.0.1', 'admin', 'admin', 0, 8666, 8667, 0, 0);


COMMIT;