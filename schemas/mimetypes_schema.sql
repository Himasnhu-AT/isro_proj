CREATE TABLE mimetypes (_id INTEGER PRIMARY KEY AUTOINCREMENT,mimetype TEXT NOT NULL);
CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);
