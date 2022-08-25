# Docker toolkits repository

## Table of Contents 
[PostgreSQL](#PostgreSQL)  
[PostgreSQL + Cloudbeaver](#PostgreSQL+Cloudbeaver)   

## 1. PostgreSQL 
<a name="PostgreSQL"/>

**Description:** Run Docker container with a postgre database inside. Database sample from [www.postgresql.org](https://www.postgresql.org/ftp/projects/pgFoundry/dbsamples/world/dbsamples-0.1/). Database files will be stored in your local folder.

1. Clone repository 

2. Launch commands in terminal

```
# move to the work dir
cd {path/folder_name}
```

```
# buuild the image
docker build . -f Dockerfile.txt -t my-test-postgres-db
```

```
# run the container
docker run --name my-postgres-container \
	-p 5432:5432 \
	-d -v "$(pwd)":/var/lib/postgresql/data -v "$(pwd)":/docker-entrypoint-initdb.d my-test-postgres-db
```

3. Connect to database using your database client

- Host: localhost
- Port: 5432
- User: postgres
- Password: postgres

4. Stop the container in terminal when you finish
```
docker stop my-postgres-container
```
Useful linkes:
- [habr.com](https://habr.com/ru/post/578744/)
- [hub.docker.com](https://hub.docker.com/_/postgres/)


## 2. PostgreSQL + Cloudbeaver 
<a name="PostgreSQL+Cloudbeaver"/> 

**Description:** Run Docker container with empty postgre database and cloudbeaver app using Docker-compose.

1. Clone repository 

2. Launch commands in terminal
```
cd {path/folder_name}
docker-compose up -d
```
3. Connect to database using cloudbeaver client

- set up admin credentials
- Host: postgres
- Port: 5432
- User: postgres
- Password: postgres

if there is no option to edit DB run the following query:
```
set default_transaction_read_only = off;
```
4. Stop the container in terminal when you finish
```
docker-compose down
```
