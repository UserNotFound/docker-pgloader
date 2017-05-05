sed -i 's/__MYSQL_SERVER__/${MYSQL}/' /app/migrate.load
sed -i 's/__PSQL_SERVER__/${PSQL}/' /app/migrate.load
