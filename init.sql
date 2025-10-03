-- Adminer 5.4.0 PostgreSQL 18.0 dump
DROP DATABASE IF EXISTS "users";
CREATE DATABASE "users";
\connect "users";

DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('users_id_seq') NOT NULL,
    "name" text,
    "class" text,
    "created" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
)
WITH (oids = false);

INSERT INTO "users" ("id", "name", "class", "created", "updated") VALUES
(1,	'Tanjiro',	'A',	'2025-10-03 16:11:05.98911',	'2025-10-03 16:11:05.98911'),
(2,	'Nezuko',	'A',	'2025-10-03 16:11:14.440521',	'2025-10-03 16:11:14.440521'),
(3,	'Zenitsu',	'B',	'2025-10-03 16:11:20.92759',	'2025-10-03 16:11:20.92759'),
(4,	'Inosuke',	'A',	'2025-10-03 16:11:28.701719',	'2025-10-03 16:11:28.701719'),
(5,	'Muzen',	'B',	'2025-10-03 16:11:35.5952',	'2025-10-03 16:11:35.5952');

-- 2025-10-03 16:16:42 UTC