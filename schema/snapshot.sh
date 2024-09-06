pg_dump -U "$1" -d "$2" -f schema_$(date '+%Y-%m-%d-%H:%M:%S').sql

