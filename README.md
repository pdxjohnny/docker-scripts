Docker Scripts
---

Docker compose files to run containers a services

Install A Service
---

To install a service cd to its directory
```bash
cd couchdb
```

Then run install
```bash
sudo -HE ./install.sh
```

That puts the docker-<service> file in init.d

Finally run 

```bash
docker-compose up
```

To confirm that the container is running correctly


