package main

import (
	"net/http"
)

func sayHelloWorld(w http.ResponseWriter, r *http.Request) {
	message := "Hello world"

	w.Write([]byte(message))
}

func main() {
	http.HandleFunc("/", sayHelloWorld)
	if err := http.ListenAndServe(":80", nil); err != nil {
		panic(err)
	}
}
