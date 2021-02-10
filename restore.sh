DB_CONTAINER=db
DB_NAME=test_db
DB_USER=root
LOCAL_DUMP_PATH="./server/test/db_dump"

docker-compose up -d
docker-compose exec -T "${DB_CONTAINER}"  pg_restore --clean --no-acl --no-owner -U "${DB_USER}" -d "${DB_NAME}" < "${LOCAL_DUMP_PATH}"
#docker-compose stop "${DB_CONTAINER}"