#!/bin/bash

# Arguments
DB_NAME=$1
OUTPUT_FILE=$2

# Log start of the script
echo "::debug::Starting the SQLite dump process..."

# Log the database and output file
echo "::notice title=Database::$DB_NAME"
echo "::notice title=Output File::$OUTPUT_FILE"

# Execute SQLite dump command
echo "::debug::Dumping the SQLite database to the output file..."
sqlite3 $DB_NAME ".output $OUTPUT_FILE" ".dump"

# Log completion
echo "::notice::Dump process completed. Data saved to $OUTPUT_FILE"
