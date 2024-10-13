# Variables
GO_CMD=air
FRONTEND_CMD=cd web && pnpm run dev
PROD_BUILD_DIR=web/dist

# Default target for development
.PHONY: dev
dev:
	@echo "Starting development servers..."
	$(GO_CMD) & $(FRONTEND_CMD)

# Clean task to remove previous builds
.PHONY: clean
clean:
	@echo "Cleaning up previous builds..."
	rm -rf $(PROD_BUILD_DIR)

# Build the frontend for production
.PHONY: build-frontend
build-frontend:
	@echo "Building frontend with Vite..."
	cd web && pnpm install && pnpm run build

# Build the Go binary for production
.PHONY: build-backend
build-backend:
	@echo "Building backend Go binary..."
	go build -o go-react-typescript-template main.go

# Lint task
.PHONY: lint
lint:
	@echo "Running linters..."
	golangci-lint run ./... && cd web && pnpm run lint

# Production build task
.PHONY: build
build: clean build-frontend build-backend
	@echo "Production build completed."

# Run the production server
.PHONY: serve
serve:
	@echo "Starting the production server..."
	./go-react-typescript-template

# Run all tests
.PHONY: test
test:
	@echo "Running tests..."
	go test ./...

# Docker build task
.PHONY: docker-build
docker-build:
	@echo "Building Docker image..."
	docker build -t go-react-typescript-template .
