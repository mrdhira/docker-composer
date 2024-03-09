# Db
docker-db-up:
	docker-compose -f database-compose.yml -p "database" up -d

docker-db-down:
	docker-compose -f database-compose.yml -p "database" down

docker-db-logs:
	docker-compose -f database-compose.yml -p "database" logs

docker-db-logs-f:
	docker-compose -f database-compose.yml -p "database" logs -f

# Kong
docker-kong-up:
	docker-compose -f kong-compose.yml -p "kong" up -d

docker-kong-down:
	docker-compose -f kong-compose.yml -p "kong" down

docker-kong-logs:
	docker-compose -f kong-compose.yml -p "kong" logs

docker-kong-logs-f:
	docker-compose -f kong-compose.yml -p "kong" logs -f

# Traefik
docker-traefik-prep:
	touch ./traefik/acme.json && chmod 600 ./traefik/acme.json

docker-traefik-up:
	docker-compose -f traefik-compose.yml -p "traefik" up -d

docker-traefik-down:
	docker-compose -f traefik-compose.yml -p "traefik" down

docker-traefik-logs:
	docker-compose -f traefik-compose.yml -p "traefik" logs
	
docker-traefik-logs-f:
	docker-compose -f traefik-compose.yml -p "traefik" logs -f

# Metabase
docker-metabase-up:
	docker-compose -f metabase-compose.yml -p "metabase" up -d

docker-metabase-down:
	docker-compose -f metabase-compose.yml -p "metabase" down

docker-metabase-logs:
	docker-compose -f metabase-compose.yml -p "metabase" logs
	
docker-metabase-logs-f:
	docker-compose -f metabase-compose.yml -p "metabase" logs -f