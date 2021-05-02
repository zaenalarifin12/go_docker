package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	fmt.Println("go docker tutorial")

	http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprintf(writer, "hello world")
	})

	server := http.ListenAndServe(
		":8081",
		nil,
	)
	log.Fatal(server)
}
