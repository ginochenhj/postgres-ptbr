# postgres-ptbr

build image sample:

	$ docker build -t pgptbr:dockerfile postgres-ptbr/

running a new container example:

	$ docker network create --subnet=172.18.100.0/16 mynet
	$ docker run \
		--name jty-pf-postgres \
		-v "/pysicalpath/var/lib/postgresql/9.5/main":"/var/lib/postgresql/9.5/main" \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_PASSWORD=postgrespassword \
		-e PGDATA=/var/lib/postgresql/9.5/main \
		--net mynet --ip 172.18.100.200 \
		-d "pgptbr:dockerfile"

REMARK: don't foget copy postgres.conf and pg_hba.conf to /pysicalpath/var/lib/postgresql/9.5/main/ folder
