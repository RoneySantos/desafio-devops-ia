FROM postgres
ENV POSTGRES_PASSWORD teste
ENV POSTGRES_DB teste
COPY create_database.sql /docker-entrypoint-initdb.d/

