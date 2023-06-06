package main

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"main/Forum"
)

func main() {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	Forum.CreateUser(db, "pseudo", "jesuisici", "ici@ici2.com")
}
