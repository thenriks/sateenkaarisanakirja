DB_NAME=test_db
DB_USER=root
pg_restore --clean --no-acl --no-owner -U "${DB_USER}" -d "${DB_NAME}" /db_dump || true
