CREATE VIEW view_data_usage AS SELECT stat_id, data_id, usage_type, 0 AS x_times_used, 0 AS x_last_time_used,0 AS times_used,0 AS last_time_used FROM data_usage_stat WHERE 0
/* view_data_usage(stat_id,data_id,usage_type,x_times_used,x_last_time_used,times_used,last_time_used) */;
