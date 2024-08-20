CREATE TABLE agg_exceptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL, raw_contact_id1 INTEGER REFERENCES raw_contacts(_id), raw_contact_id2 INTEGER REFERENCES raw_contacts(_id));
CREATE UNIQUE INDEX aggregation_exception_index1 ON agg_exceptions (raw_contact_id1, raw_contact_id2);
CREATE UNIQUE INDEX aggregation_exception_index2 ON agg_exceptions (raw_contact_id2, raw_contact_id1);
