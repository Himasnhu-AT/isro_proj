CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,hash_id TEXT,is_read_only INTEGER NOT NULL DEFAULT 0,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT, carrier_presence INTEGER NOT NULL DEFAULT 0, is_preferred_phone_account_migration_pending INTEGER NOT NULL DEFAULT 0, preferred_phone_account_component_name TEXT, preferred_phone_account_id TEXT );
CREATE INDEX data_raw_contact_id ON data (raw_contact_id);
CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);
CREATE INDEX data_hash_id_index ON data (hash_id);
CREATE TRIGGER data_updated AFTER UPDATE ON data BEGIN    UPDATE data     SET data_version=OLD.data_version+1      WHERE _id=OLD._id;   UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id; END;
CREATE TRIGGER data_deleted BEFORE DELETE ON data BEGIN    UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id;   DELETE FROM phone_lookup     WHERE data_id=OLD._id;   DELETE FROM status_updates     WHERE status_update_data_id=OLD._id;   DELETE FROM name_lookup     WHERE data_id=OLD._id; END;
