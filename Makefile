.PHONY: build
build: ## Create jar file and build docker image
	mvn clean package -DDATABASE_PASSWORD=postgres -DDATABASE_URL=jdbc:postgresql://localhost:5432/postgres -DDATABASE_USERNAME=postgres
	docker compose build;

.PHONY: up-db
up-db: ## Starts the database
	docker-compose up java_db;

.PHONY: up
up: ## Starts the application and all dependent services
	docker-compose up;

.PHONY: package
package:
	mvn clean package -DDATABASE_PASSWORD=postgres -DDATABASE_URL=jdbc:postgresql://localhost:5432/postgres -DDATABASE_USERNAME=postgres

.PHONY: package_2
package_2:
	mvn clean package -PLOCAL