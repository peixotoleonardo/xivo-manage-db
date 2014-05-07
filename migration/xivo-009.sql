/*
 * Copyright (C) 2014  Avencall
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

BEGIN;

DROP TABLE IF EXISTS "iproute" CASCADE;

DROP TABLE IF EXISTS "server" CASCADE;

ALTER TABLE "monitoring"
	ALTER "alert_emails" DROP DEFAULT,
	ALTER "dahdi_monitor_ports" DROP DEFAULT;

DROP INDEX IF EXISTS "mail__uidx__origin";
ALTER TABLE "mail"
    ADD CONSTRAINT "mail_origin_key" UNIQUE (origin),
    ALTER "mydomain" SET DEFAULT '0';

ALTER TABLE "netiface" ALTER "description" DROP NOT NULL;

ALTER TABLE "resolvconf" ALTER "description" DROP NOT NULL;

ALTER TABLE "session" ALTER "sessid" TYPE VARCHAR(32);

DROP INDEX IF EXISTS "stats_conf__uidx__name";
ALTER TABLE "stats_conf"
    ADD CONSTRAINT "stats_conf_name_key" UNIQUE (name),
	ALTER "default_delta" SET DEFAULT '0',
	ALTER "period1" SET DEFAULT '0',
	ALTER "period2" SET DEFAULT '0',
	ALTER "period3" SET DEFAULT '0',
	ALTER "period4" SET DEFAULT '0',
	ALTER "period5" SET DEFAULT '0',
	ALTER "description" DROP NOT NULL;

DROP INDEX IF EXISTS "stats_conf_agent_index";
ALTER TABLE "stats_conf_agent"
    ADD CONSTRAINT "stats_conf_agent_pkey" PRIMARY KEY (stats_conf_id, agentfeatures_id);

DROP INDEX IF EXISTS "stats_conf_group_index";
ALTER TABLE "stats_conf_group"
    ADD CONSTRAINT "stats_conf_group_pkey" PRIMARY KEY (stats_conf_id, groupfeatures_id);

DROP INDEX IF EXISTS "stats_conf_incall_index";
ALTER TABLE "stats_conf_incall"
    ADD CONSTRAINT "stats_conf_incall_pkey" PRIMARY KEY (stats_conf_id, incall_id);

DROP INDEX IF EXISTS "stats_conf_queue_index";
ALTER TABLE "stats_conf_queue"
    ADD CONSTRAINT "stats_conf_queue_pkey" PRIMARY KEY (stats_conf_id, queuefeatures_id);

DROP INDEX IF EXISTS "stats_conf_user_index";
ALTER TABLE "stats_conf_user"
    ADD CONSTRAINT "stats_conf_user_pkey" PRIMARY KEY (stats_conf_id, userfeatures_id);

DROP INDEX IF EXISTS "stats_conf_xivouser_index";
ALTER TABLE "stats_conf_xivouser"
    ADD CONSTRAINT "stats_conf_xivouser_pkey" PRIMARY KEY (stats_conf_id, user_id);


DROP INDEX IF EXISTS "accesswebservice__uidx__name";
ALTER TABLE ONLY "accesswebservice"
    ADD CONSTRAINT "accesswebservice_name_key" UNIQUE (name);


DROP INDEX IF EXISTS "netiface__uidx__ifname";
DROP INDEX IF EXISTS "netiface__idx__address";
DROP INDEX IF EXISTS "netiface__idx__broadcast";
DROP INDEX IF EXISTS "netiface__idx__disable";
DROP INDEX IF EXISTS "netiface__idx__family";
DROP INDEX IF EXISTS "netiface__idx__gateway";
DROP INDEX IF EXISTS "netiface__idx__hwtypeid";
DROP INDEX IF EXISTS "netiface__idx__mtu";
DROP INDEX IF EXISTS "netiface__idx__netmask";
DROP INDEX IF EXISTS "netiface__idx__netmask";
DROP INDEX IF EXISTS "netiface__idx__networktype";
DROP INDEX IF EXISTS "netiface__idx__type";
DROP INDEX IF EXISTS "netiface__idx__vlanid";
DROP INDEX IF EXISTS "netiface__idx__vlanrawdevice";
ALTER TABLE "netiface"
    ADD CONSTRAINT "netiface_ifname_key" UNIQUE (ifname);


DROP INDEX IF EXISTS "resolvconf__uidx__hostname";
ALTER TABLE "resolvconf"
    ADD CONSTRAINT "resolvconf_domain_key" UNIQUE (domain);

DROP INDEX IF EXISTS "entity__idx__disable";
DROP INDEX IF EXISTS "entity__idx__displayname";
DROP INDEX IF EXISTS "entity__uidx__name";
ALTER TABLE "entity"
    ADD CONSTRAINT "entity_name_key" UNIQUE (name);

DROP INDEX IF EXISTS "ldapserver__idx__disable";
DROP INDEX IF EXISTS "ldapserver__idx__host";
DROP INDEX IF EXISTS "ldapserver__idx__port";
DROP INDEX IF EXISTS "ldapserver__uidx__host_port";
DROP INDEX IF EXISTS "ldapserver__uidx__name";
ALTER TABLE "ldapserver"
    ADD CONSTRAINT "ldapserver_name_key" UNIQUE (name),
    ADD CONSTRAINT "ldapserver_host_port_key" UNIQUE (host, port);

DROP INDEX IF EXISTS "user__idx__login";
DROP INDEX IF EXISTS "user__idx__meta";
DROP INDEX IF EXISTS "user__idx__passwd";
DROP INDEX IF EXISTS "user__idx__time";
DROP INDEX IF EXISTS "user__idx__valid";

DROP INDEX IF EXISTS "musiconhold__uidx__filename_category_var_name";
ALTER TABLE "musiconhold"
    ADD UNIQUE ("filename", "category", "var_name");

DROP INDEX IF EXISTS "queuefeatures__uidx__name";
ALTER TABLE "queuefeatures"
    ADD UNIQUE ("name");

DROP INDEX IF EXISTS "queuemember__uidx__queue_name_channel_usertype_userid_category";
ALTER TABLE "queuemember"
    ADD UNIQUE ("queue_name", "channel", "usertype", "userid", "category");

DROP INDEX IF EXISTS "queueskill__uidx__name";
ALTER TABLE "queueskill"
    ADD UNIQUE ("name");

DROP INDEX IF EXISTS "user__uidx__login_meta";
ALTER TABLE "user"
    ADD UNIQUE ("login", "meta");

COMMIT;
