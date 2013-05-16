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
INSERT INTO "schema_migrations" VALUES('20130515141118');
INSERT INTO "schema_migrations" VALUES('20130515141835');
INSERT INTO "schema_migrations" VALUES('20130515143444');
INSERT INTO "schema_migrations" VALUES('20130516030107');
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
INSERT INTO "days" VALUES(3,3,'Push/Pull',1,'2013-05-15 14:41:20.387281','2013-05-15 14:41:20.387281');
INSERT INTO "days" VALUES(4,4,'Legs/Core',1,'2013-05-15 16:33:05.014410','2013-05-15 16:33:05.014410');
CREATE TABLE "exercises" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "day_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "annotation" text);
INSERT INTO "exercises" VALUES(1,'俯卧撑',1,'2013-05-03 15:40:21.224672','2013-05-16 03:05:38.176943','test');
INSERT INTO "exercises" VALUES(2,'引体向前',1,'2013-05-03 16:26:31.252706','2013-05-16 03:16:55.285415','This text can''t too long');
INSERT INTO "exercises" VALUES(3,'坐姿屈臂撑',1,'2013-05-03 16:27:41.173103','2013-05-03 16:27:50.738868',NULL);
INSERT INTO "exercises" VALUES(4,'反向划船',1,'2013-05-03 16:28:24.587201','2013-05-03 16:28:30.369733',NULL);
INSERT INTO "exercises" VALUES(5,'后弓步',2,'2013-05-03 16:28:52.186500','2013-05-03 16:28:59.648540',NULL);
INSERT INTO "exercises" VALUES(6,'单腿罗马尼亚硬拉',2,'2013-05-03 16:29:27.585827','2013-05-03 16:29:33.160155',NULL);
INSERT INTO "exercises" VALUES(8,'深蹲',2,'2013-05-03 16:29:59.736133','2013-05-03 16:30:11.285854',NULL);
INSERT INTO "exercises" VALUES(9,'游泳',2,'2013-05-03 16:30:57.998334','2013-05-03 16:31:06.308483',NULL);
INSERT INTO "exercises" VALUES(10,'侧弓步',NULL,'2013-05-15 14:36:50.473368','2013-05-15 14:36:50.473368',NULL);
INSERT INTO "exercises" VALUES(11,'转体卷腹',NULL,'2013-05-15 16:35:20.914138','2013-05-15 16:35:20.914138',NULL);
CREATE TABLE "day_exercise_maps" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "day_id" integer, "exercise_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "day_exercise_maps" VALUES(1,1,1,'2013-05-15 14:15:13.817075','2013-05-15 14:15:13.817075');
INSERT INTO "day_exercise_maps" VALUES(2,1,2,'2013-05-15 16:26:47.995924','2013-05-15 16:26:47.995924');
INSERT INTO "day_exercise_maps" VALUES(3,1,3,'2013-05-15 16:28:59.127895','2013-05-15 16:28:59.127895');
INSERT INTO "day_exercise_maps" VALUES(4,1,4,'2013-05-15 16:29:19.615182','2013-05-15 16:29:19.615182');
INSERT INTO "day_exercise_maps" VALUES(5,2,5,'2013-05-15 16:30:08.557961','2013-05-15 16:30:08.557961');
INSERT INTO "day_exercise_maps" VALUES(6,2,6,'2013-05-15 16:30:15.324972','2013-05-15 16:30:15.324972');
INSERT INTO "day_exercise_maps" VALUES(7,2,7,'2013-05-15 16:30:21.045712','2013-05-15 16:30:21.045712');
INSERT INTO "day_exercise_maps" VALUES(8,2,8,'2013-05-15 16:30:31.765781','2013-05-15 16:30:31.765781');
INSERT INTO "day_exercise_maps" VALUES(9,2,9,'2013-05-15 16:31:05.972816','2013-05-15 16:31:05.972816');
INSERT INTO "day_exercise_maps" VALUES(10,3,1,'2013-05-15 16:31:24.540400','2013-05-15 16:31:24.540400');
INSERT INTO "day_exercise_maps" VALUES(11,3,2,'2013-05-15 16:31:32.956082','2013-05-15 16:31:32.956082');
INSERT INTO "day_exercise_maps" VALUES(12,3,3,'2013-05-15 16:31:38.052078','2013-05-15 16:31:38.052078');
INSERT INTO "day_exercise_maps" VALUES(13,3,4,'2013-05-15 16:31:43.236217','2013-05-15 16:31:43.236217');
INSERT INTO "day_exercise_maps" VALUES(14,4,10,'2013-05-15 16:33:45.267845','2013-05-15 16:33:45.267845');
INSERT INTO "day_exercise_maps" VALUES(15,4,6,'2013-05-15 16:34:05.564267','2013-05-15 16:34:05.564267');
INSERT INTO "day_exercise_maps" VALUES(16,4,8,'2013-05-15 16:34:35.243980','2013-05-15 16:34:35.243980');
INSERT INTO "day_exercise_maps" VALUES(17,4,11,'2013-05-15 16:35:38.168283','2013-05-15 16:35:38.168283');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('programs',4);
INSERT INTO "sqlite_sequence" VALUES('weeks',2);
INSERT INTO "sqlite_sequence" VALUES('days',4);
INSERT INTO "sqlite_sequence" VALUES('exercises',11);
INSERT INTO "sqlite_sequence" VALUES('day_exercise_maps',17);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_weeks_on_program_id" ON "weeks" ("program_id");
CREATE INDEX "index_days_on_week_id" ON "days" ("week_id");
CREATE INDEX "index_exercises_on_day_id" ON "exercises" ("day_id");
CREATE UNIQUE INDEX "index_exercises_on_name" ON "exercises" ("name");
COMMIT;
