CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);
CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);
CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);
CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);
