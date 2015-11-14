# docker-fauxton
Docker for Fauxton - Web UI for CouchDB

# RUN
```bash
docker run -d -p 8000:8000 --name fauxton 3apaxicom/fauxton
```
and open http://localhost:8000/

# Link to CouchDB container
```bash
docker run -d -p 8000:8000 --link=your_couchdb_container:db --name fauxton 3apaxicom/fauxton sh -c 'fauxton -c http://$DB_PORT_5984_TCP_ADDR:$DB_PORT_5984_TCP_PORT'
```

# docker-compose.yml
```yml
fauxton:
  image: 3apaxicom/fauxton
  ports:
    - 8000:8000
  links:
    - couchdb:db
  command:
    - sh
    - "-c"
    - "fauxton -c http://$DB_PORT_5984_TCP_ADDR:$DB_PORT_5984_TCP_PORT"
```
