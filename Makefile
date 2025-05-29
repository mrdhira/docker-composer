# Db
docker-db-up:
	docker compose -f ./composer/database-compose.yml -p "database" up -d

docker-db-down:
	docker compose -f ./composer/database-compose.yml -p "database" down

docker-db-logs:
	docker compose -f ./composer/database-compose.yml -p "database" logs

docker-db-logs-f:
	docker compose -f ./composer/database-compose.yml -p "database" logs -f

# Kong
docker-kong-up:
	docker compose -f ./composer/kong-compose.yml -p "kong" up -d

docker-kong-down:
	docker compose -f ./composer/kong-compose.yml -p "kong" down

docker-kong-logs:
	docker compose -f ./composer/kong-compose.yml -p "kong" logs

docker-kong-logs-f:
	docker compose -f ./composer/kong-compose.yml -p "kong" logs -f

# Traefik
docker-traefik-prep:
	touch ./traefik/acme.json && chmod 600 ./traefik/acme.json

docker-traefik-up:
	docker compose -f ./composer/traefik-compose.yml -p "traefik" up -d

docker-traefik-down:
	docker compose -f ./composer/traefik-compose.yml -p "traefik" down

docker-traefik-logs:
	docker compose -f ./composer/traefik-compose.yml -p "traefik" logs
	
docker-traefik-logs-f:
	docker compose -f ./composer/traefik-compose.yml -p "traefik" logs -f

# Metabase
docker-metabase-up:
	docker compose -f ./composer/metabase-compose.yml -p "metabase" up -d

docker-metabase-down:
	docker compose -f ./composer/metabase-compose.yml -p "metabase" down

docker-metabase-logs:
	docker compose -f ./composer/metabase-compose.yml -p "metabase" logs
	
docker-metabase-logs-f:
	docker compose -f ./composer/metabase-compose.yml -p "metabase" logs -f

# Hoppscotch
docker-hoppscotch-up:
	docker compose -f ./composer/hoppscotch-compose.yml -p "hoppscotch" up -d

docker-hoppscotch-down:
	docker compose -f ./composer/hoppscotch-compose.yml -p "hoppscotch" down

docker-hoppscotch-logs:
	docker compose -f ./composer/hoppscotch-compose.yml -p "hoppscotch" logs
	
docker-hoppscotch-logs-f:
	docker compose -f ./composer/hoppscotch-compose.yml -p "hoppscotch" logs -f

# Hashicorp
docker-hashicorp-up:
	docker compose -f ./composer/hashicorp-compose.yml -p "hashicorp" up -d

docker-hashicorp-down:
	docker compose -f ./composer/hashicorp-compose.yml -p "hashicorp" down

docker-hashicorp-logs:
	docker compose -f ./composer/hashicorp-compose.yml -p "hashicorp" logs
	
docker-hashicorp-logs-f:
	docker compose -f ./composer/hashicorp-compose.yml -p "hashicorp" logs -f

# Pritunl
docker-pritunl-up:
	docker compose -f ./composer/pritunl-compose.yml -p "pritunl" up -d
docker-pritunl-down:	
	docker compose -f ./composer/pritunl-compose.yml -p "pritunl" down
docker-pritunl-logs:
	docker compose -f ./composer/pritunl-compose.yml -p "pritunl" logs
docker-pritunl-logs-f:
	docker compose -f ./composer/pritunl-compose.yml -p "pritunl" logs -f
docker-pritunl-stack-deploy:
	docker stack deploy -c ./composer/pritunl-compose.yml pritunl
docker-pritunl-stack-services:
	docker stack services pritunl