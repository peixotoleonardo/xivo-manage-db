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
ALTER TABLE "mail" ALTER "mydomain" SET DEFAULT '0';
ALTER TABLE "netiface" ALTER "description" DROP NOT NULL;
ALTER TABLE "resolvconf" ALTER "description" DROP NOT NULL;

ALTER TABLE "stats_conf" ALTER "description" DROP NOT NULL,

COMMIT;
