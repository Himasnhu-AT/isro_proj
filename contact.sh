#!/bin/bash

DB_FILE="contacts2.db"

mkdir -p schemas
mkdir -p data

tables=$(sqlite3 "$DB_FILE" .tables)

for table in $tables; do
    # Extract the schema of the table
    schema=$(sqlite3 "$DB_FILE" ".schema $table")
    
    # Save the schema to a file
    echo "$schema" > "schemas/${table}_schema.sql"
    
    # Extract the data from the table
    sqlite3 "$DB_FILE" "SELECT * FROM $table;" > "data/${table}_data.csv"
    
    echo "Extracted schema and data for table: $table"
done

echo "Extraction complete. Schemas are in the 'schemas/' directory and data is in the 'data/' directory."

