package main

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"log"
)

func main() {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	/*result, err := db.Query("SELECT * from topic")
	if err != nil {
		panic(err.Error())
	}

	for result.Next() {
		var cat category
		err := result.Scan(&cat.IDCat, &cat.Titre)
		if err != nil {
			panic(err.Error())
		}
		fmt.Println(cat.Titre)
	}*/
}
