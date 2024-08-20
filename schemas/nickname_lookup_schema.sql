CREATE TABLE nickname_lookup (name TEXT,cluster TEXT);
CREATE UNIQUE INDEX nickname_lookup_index ON nickname_lookup (name, cluster);
