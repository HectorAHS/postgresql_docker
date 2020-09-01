FROM postgres:12-alpine
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB postgres
COPY init-camunda-db.sh /docker-entrypoint-initdb.d
RUN chmod 0666 /docker-entrypoint-initdb.d/init-camunda-db.sh
COPY postgresql.conf /var/lib/postgresql/data/postgresql.conf
COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf