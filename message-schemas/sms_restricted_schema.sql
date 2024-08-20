CREATE VIEW sms_restricted AS SELECT * FROM sms WHERE type=1 OR type=2
/* sms_restricted(_id,thread_id,address,person,date,date_sent,protocol,read,status,type,reply_path_present,subject,body,service_center,locked,sub_id,error_code,creator,seen) */;
