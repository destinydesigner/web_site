PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20130427134313');
INSERT INTO "schema_migrations" VALUES('20130428021122');
INSERT INTO "schema_migrations" VALUES('20130503140228');
INSERT INTO "schema_migrations" VALUES('20130503142133');
INSERT INTO "schema_migrations" VALUES('20130503153053');
INSERT INTO "schema_migrations" VALUES('20130503153355');
INSERT INTO "schema_migrations" VALUES('20130503153515');
CREATE TABLE "sheets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "no" varchar(255), "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "programs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "level" integer, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "programs" VALUES(1,1,'Basic Program','2013-05-03 14:13:18.519920','2013-05-03 14:13:18.519920');
INSERT INTO "programs" VALUES(2,2,'1st Class Program','2013-05-03 14:13:40.237634','2013-05-03 14:13:40.237634');
INSERT INTO "programs" VALUES(3,3,'Master Class Program','2013-05-03 14:14:00.891032','2013-05-03 14:14:00.891032');
INSERT INTO "programs" VALUES(4,4,'Chief Class Program','2013-05-03 14:14:20.370822','2013-05-03 14:14:20.370822');
CREATE TABLE "weeks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "order" integer, "program_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "weeks" VALUES(1,1,1,'2013-05-03 15:12:46.652550','2013-05-03 15:13:06.227522');
INSERT INTO "weeks" VALUES(2,2,1,'2013-05-03 15:19:40.559351','2013-05-03 15:19:53.828735');
CREATE TABLE "days" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "order" integer, "section" varchar(255), "week_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "days" VALUES(1,1,'Push/Pull',1,'2013-05-03 15:38:15.856902','2013-05-03 15:39:10.039234');
INSERT INTO "days" VALUES(2,2,'Legs/Core',1,'2013-05-03 16:03:24.085486','2013-05-03 16:04:13.505685');
CREATE TABLE "exercises" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "day_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "exercises" VALUES(1,'俯卧撑',1,'2013-05-03 15:40:21.224672','2013-05-03 15:40:36.280961');
INSERT INTO "exercises" VALUES(2,'引体向前',1,'2013-05-03 16:26:31.252706','2013-05-03 16:26:41.974606');
INSERT INTO "exercises" VALUES(3,'坐姿屈臂撑',1,'2013-05-03 16:27:41.173103','2013-05-03 16:27:50.738868');
INSERT INTO "exercises" VALUES(4,'反向划船',1,'2013-05-03 16:28:24.587201','2013-05-03 16:28:30.369733');
INSERT INTO "exercises" VALUES(5,'后弓步',2,'2013-05-03 16:28:52.186500','2013-05-03 16:28:59.648540');
INSERT INTO "exercises" VALUES(6,'单腿罗马尼亚硬拉',2,'2013-05-03 16:29:27.585827','2013-05-03 16:29:33.160155');
INSERT INTO "exercises" VALUES(8,'深蹲',2,'2013-05-03 16:29:59.736133','2013-05-03 16:30:11.285854');
INSERT INTO "exercises" VALUES(9,'游泳',2,'2013-05-03 16:30:57.998334','2013-05-03 16:31:06.308483');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('programs',4);
INSERT INTO "sqlite_sequence" VALUES('weeks',2);
INSERT INTO "sqlite_sequence" VALUES('days',2);
INSERT INTO "sqlite_sequence" VALUES('exercises',9);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_weeks_on_program_id" ON "weeks" ("program_id");
CREATE INDEX "index_days_on_week_id" ON "days" ("week_id");
CREATE INDEX "index_exercises_on_day_id" ON "exercises" ("day_id");
COMMIT;
