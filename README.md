# SQL. Codility task 2.

## Table of Contents 
[PostgreSQL + Cloudbeaver](#PostgreSQL+Cloudbeaver)   

## 1. PostgreSQL + Cloudbeaver 
<a name="PostgreSQL+Cloudbeaver"/> 

**Description:** Run Docker container with postgre database and cloudbeaver app using Docker-compose.
The table `participation` will be inside the database. 

1. Clone repository 

2. Launch commands in terminal
```
cd {path/folder_name}
docker-compose up -d
```
3. Connect to database using cloudbeaver client using address http://localhost:8080/ in your browser.
The connection will be ready to recieve request after ~30 sec after launching the container.

- at the beginning set up admin credentials in cloudbeaver
- Host: postgres
- Port: 5432
- User: postgres
- Password: postgres

4. Launch the `solution.sql` script in `scr` folder of current repository to get the answer of that task.

5. Stop the container in terminal when you finish
```
docker-compose down
```

P.S.
if there is no option to edit DB run the following query:
```
set default_transaction_read_only = off;
```
