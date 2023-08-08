# Set phony targets
.PHONY = up down logs

# Variables
DC = docker-compose

# Commands
up:
	$(DC) up -d

down:
	${DC} down

restart: down up

logs:
	$(DC) logs -f
