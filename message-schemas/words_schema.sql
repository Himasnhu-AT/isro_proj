CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER, sub_id INTEGER)
/* words(_id,index_text,source_id,table_to_use,sub_id) */;
