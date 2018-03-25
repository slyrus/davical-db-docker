sed \
    -e 's/@DAVICAL_DB_HOST@/'"${DAVICAL_DB_HOST}/g" \
    -e 's/@DAVICAL_DB_NAME@/'"${DAVICAL_DB_NAME}/g" \
    -e 's/@DAVICAL_DBA_USER@/'"${DAVICAL_DBA_USER}/g" \
    -e 's/@DAVICAL_DBA_PASSWORD@/'"${DAVICAL_DBA_PASSWORD}/g" \
    -e 's/@DAVICAL_APP_USER@/'"${DAVICAL_APP_USER}/g" \
    -e 's/@DAVICAL_APP_PASSWORD@/'"${DAVICAL_APP_PASSWORD}/g" \
    /docker-entrypoint-initdb.d/01-davical.sql.template > /var/run/postgresql/01-davical.sql

