package main

import (
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"main/Forum"
	"net/http"
)

func main() {
	http.HandleFunc("/", Forum.LandinPage)
	http.HandleFunc("/login", Forum.LoginPage)
	http.HandleFunc("/topic", Forum.TopicPAge)
	fs := http.FileServer(http.Dir("../assets"))
	http.Handle("/assets/", http.StripPrefix("/assets/", fs))
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Println(err)
	}
}
