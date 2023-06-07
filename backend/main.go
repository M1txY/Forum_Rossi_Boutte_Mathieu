package main

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"main/Forum"
	"net/http"
)

func main() {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	Forum.CreateUser(db, "pseudo", "jesuisici", "ici@ici2.com")
	http.HandleFunc("/", Forum.LandinPage)

	fs := http.FileServer(http.Dir("../assets"))
	http.Handle("/Static/", http.StripPrefix("/Static/", fs))
	erre := http.ListenAndServe(":8080", nil)
	if erre != nil {
		fmt.Println(err)
	}
}
