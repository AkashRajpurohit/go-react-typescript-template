# Build frontend
FROM node:22-alpine AS frontend-builder
WORKDIR /app/web
COPY web/package.json web/pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install --frozen-lockfile
COPY web/ ./
RUN pnpm run build

# Build backend
FROM golang:1.23.5-alpine AS backend-builder
WORKDIR /app
RUN apk update && \
	apk add upx ca-certificates tzdata
COPY go.* ./
RUN go mod download
COPY . .
COPY --from=frontend-builder /app/web/dist ./web/dist
RUN go build -a -installsuffix cgo -ldflags="-w -s" -o go-react-typescript-template . \
	&& upx -q go-react-typescript-template

# Application Image
FROM alpine:latest
WORKDIR /app
COPY --from=backend-builder /app/go-react-typescript-template .
COPY --from=backend-builder /app/web/dist ./web/dist
EXPOSE 8080
CMD ["./go-react-typescript-template"]