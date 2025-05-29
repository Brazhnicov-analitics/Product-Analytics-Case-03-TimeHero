BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "ab_test_data" (
	"ab_group"	TEXT,
	"total_users"	INTEGER,
	"users_with_task_completed"	INTEGER,
	"completion_rate"	FLOAT
);
CREATE TABLE IF NOT EXISTS "cluster_data" (
	"user_id"	INTEGER,
	"task_count"	INTEGER,
	"event_count"	INTEGER,
	"activity_cluster"	TEXT
);
CREATE TABLE IF NOT EXISTS "cohort_data" (
	"cohort_week"	DATE,
	"total_users"	INTEGER,
	"users_with_task_completed"	INTEGER,
	"completion_rate"	FLOAT
);
CREATE TABLE IF NOT EXISTS "funnel_data" (
	"event_stage"	TEXT,
	"user_count"	INTEGER
);
CREATE TABLE IF NOT EXISTS "retention_factors" (
	"task_completion_status"	TEXT,
	"total_users"	INTEGER,
	"users_active_7d"	INTEGER,
	"active_7d_rate"	FLOAT
);
INSERT INTO "ab_test_data" VALUES ('A',3533,2756,78.01);
INSERT INTO "ab_test_data" VALUES ('B',3467,2744,79.15);
INSERT INTO "cluster_data" VALUES (2743,9,6,'High Activity');
INSERT INTO "cluster_data" VALUES (3646,9,6,'High Activity');
INSERT INTO "cluster_data" VALUES (125,7,6,'High Activity');
INSERT INTO "cohort_data" VALUES ('2025-04-01',2072,1167,56.32);
INSERT INTO "cohort_data" VALUES ('2025-04-08',2469,1362,55.16);
INSERT INTO "cohort_data" VALUES ('2025-04-15',2481,1357,54.7);
INSERT INTO "cohort_data" VALUES ('2025-04-22',2614,1413,54.06);
INSERT INTO "cohort_data" VALUES ('2025-04-29',364,201,55.22);
INSERT INTO "funnel_data" VALUES ('install',7000);
INSERT INTO "funnel_data" VALUES ('registration',6500);
INSERT INTO "funnel_data" VALUES ('task_created',6000);
INSERT INTO "funnel_data" VALUES ('task_completed',5500);
INSERT INTO "retention_factors" VALUES ('Completed Task in 2 Days',5500,4500,81.82);
INSERT INTO "retention_factors" VALUES ('Did Not Complete Task in 2 Days',1500,0,0.0);
COMMIT;
