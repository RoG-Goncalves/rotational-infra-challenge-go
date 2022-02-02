package main

import (
        "net/http"
        "fmt"
)

func main() {
        fmt.Printf("API RUNNING")
        http.Handle("/", http.FileServer(http.Dir("./static/")))
        http.ListenAndServe(":3000", nil)
}