package main

import (
	"fmt"
	"log"
	"net/http"
	"path"
)

func main() {
	// Serve static files from the web/dist directory
	fileServer := http.FileServer(http.Dir(path.Join("web", "dist")))
	http.Handle("/", fileServer)

	// Setup API routes
	http.HandleFunc("/api/ping", func(w http.ResponseWriter, r *http.Request) {
		_, err := w.Write([]byte("Pong!"))
		if err != nil {
			fmt.Println("Error writing text to response")
		}
	})

	// Start the Go server on port 8080
	fmt.Println("Starting server on :8080...")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatalf("Could not start server: %s\n", err.Error())
	}
}
