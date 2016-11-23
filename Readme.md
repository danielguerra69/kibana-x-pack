# About

Elasticsearch & Kibana with x-pack plugin installed.
Build from the official elasticsearch repo.

# Usage

Before you start this container make sure
to set the max_map_count on your docker machine.

```bash
sudo sysctl vm.max_map_count=262144000
```

Start the elasticsearch container

```bash
docker run --name es-xpack -d danielguerra/elasticsearch-x-pack
```

Start kibana x-pack
```bash
docker run --link es-xpack:elasticsearch --name kb-xpack -d danielguerra/kibana-x-pack
```
login with
user: elastic
pass: changeme
