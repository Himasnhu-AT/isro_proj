CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER,sub_id INTEGER DEFAULT -1);
CREATE INDEX addrMsgIdIndex ON addr (msg_id);
