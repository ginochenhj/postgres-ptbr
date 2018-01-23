# postgres-ptbr

build image sample:

	$ docker build -t pgptbr:dockerfile postgres-ptbr/

running a new container example:

	$ docker network create --subnet=172.18.0.0/16 mynet
	$ docker run \
		--name mypostgres-server \
		-v "/physicalpath/var/lib/postgresql/9.5/main":"/var/lib/postgresql/9.5/main" \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_PASSWORD=postgrespassword \
		-e PGDATA=/var/lib/postgresql/9.5/main \
		--net mynet --ip 172.18.0.200 \
		-d "pgptbr:dockerfile"

REMARK: don't foget copy postgres.conf and pg_hba.conf to /physicalpath/var/lib/postgresql/9.5/main/ folder
