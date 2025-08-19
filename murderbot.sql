/* SELECT al.log_id, al.suspect_id, al.success_flag, al.access_time, cr.call_time, cr.call_duration, cr.recipient_relation, sl.relation_to_victim, sl.alibi
 FROM murderbot.access_logs_large as al
 INNER JOIN call_records_large as cr
 ON al.suspect_id = cr.suspect_id
 INNER JOIN suspects_large as sl
 ON cr.suspect_id = sl.suspect_id */
 
 /* Identify suspects who accessed the vault room successfully between the forensic time-frame */
 SELECT log_id, suspect_id, access_time
 FROM access_logs_large
 WHERE door_accessed = 'Vault Room'
	AND success_flag = 'True'
	AND access_time BETWEEN '2025-06-01 19:55:00' AND '2025-06-01 20:10:45';

/* Identify suspects' details who fall within this range from the suspect table */
SELECT sl.suspect_id, sl.name, al.access_time, sl.role, sl.relation_to_victim, sl.alibi
FROM suspects_large as sl
JOIN access_logs_large as al
ON sl.suspect_id = al.suspect_id
WHERE al.door_accessed = 'Vault Room'
	AND al.success_flag = 'True'
	AND al.access_time BETWEEN '2025-06-01 19:55:00' AND '2025-06-01 20:05:45';

/* analyzing suspects' behavior using door logs, call history
and forensic evidence time-frame */
SELECT *
FROM access_logs_large as al
JOIN call_records_large as cr
ON al.suspect_id = cr.suspect_id
JOIN suspects_large as sl
ON cr.suspect_id = sl.suspect_id
WHERE al.door_accessed = 'Vault Room'
	AND al.success_flag = 'True'
	AND al.access_time BETWEEN '2025-06-01 19:55:00' AND '2025-06-01 20:05:45';
    

SELECT *
FROM access_logs_large as al
JOIN call_records_large as cr
ON al.suspect_id = cr.suspect_id
JOIN suspects_large as sl
ON cr.suspect_id = sl.suspect_id
WHERE al.suspect_id IN (17, 28)
ORDER BY access_time DESC