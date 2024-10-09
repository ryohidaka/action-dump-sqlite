#!/bin/bash

# Arguments
DB_NAME=$1
OUTPUT_FILE=$2
TABLE_NAMES=$3

# Log start of the script
echo "::debug::Starting the SQLite dump process..."

# Log the database and output file
echo "::notice title=Database::$DB_NAME"
echo "::notice title=Output File::$OUTPUT_FILE"

# Check if TABLE_NAMES is empty
if [ -z "$TABLE_NAMES" ]; then
    # Dump all tables
    echo "::debug::No tables specified. Dumping entire database..."
    sqlite3 $DB_NAME ".output $OUTPUT_FILE" ".dump"
else
    # Dump only specified tables
    echo "::debug::Dumping specified tables: $TABLE_NAMES..."
    IFS=',' read -ra TABLE_ARRAY <<<"$TABLE_NAMES"
    sqlite3 $DB_NAME ".output $OUTPUT_FILE"
    for TABLE in "${TABLE_ARRAY[@]}"; do
        sqlite3 $DB_NAME ".dump '$TABLE'" >>$OUTPUT_FILE
    done
fi

# Log completion
echo "::notice::Dump process completed. Data saved to $OUTPUT_FILE"
