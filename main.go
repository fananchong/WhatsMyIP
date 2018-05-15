package main

import (
	"flag"
	"fmt"
	"net/http"
	"strings"
)

func main() {
	port := 0
	flag.IntVar(&port, "port", 3000, "port")

	flag.Parse()

	server := NewWebService()
	server.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		addr := strings.Split(req.RemoteAddr, ":")[0]
		w.Write([]byte(addr))
	})
	server.ListenAndServe(fmt.Sprintf(":%d", port))
}
