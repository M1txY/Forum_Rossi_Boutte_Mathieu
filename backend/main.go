package main

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"main/backend/back_golang"
)

func main() {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	Signin(db, "enzo", "passw")
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

func MainPage(db *sql.DB) {
	data, err := db.Query("SELECT * from category")
	if err != nil {
		fmt.Print(err)
	}
	var ListeCat []back_golang.category
	for data.Next() {
		var cat back_golang.category
		err := data.Scan(&cat.IDCat, &cat.Titre)
		if err != nil {
			panic(err.Error())
		}
		ListeCat = append(ListeCat, cat)
		fmt.Println(ListeCat)
	}

	var CatStruct = struct{ ListCat []back_golang.category }{ListeCat}
	fmt.Println(CatStruct)
}

func Signin(db *sql.DB, pseudo string, passwd string) {
	listUser := ListeUser(db)
	for i := 0; i < len(listUser); i++ {
		if pseudo == listUser[i].Pseudo.String && passwd == listUser[i].Passwd.String {
			fmt.Println("succes")
		} else if pseudo != listUser[i].Pseudo.String && passwd != listUser[i].Passwd.String {
			fmt.Println("identifiant et mdp erroné")
		} else if pseudo != listUser[i].Pseudo.String {
			fmt.Println("pseudo erroné")
		} else if passwd != listUser[i].Passwd.String && pseudo == listUser[i].Pseudo.String {
			fmt.Println("mdp erroné")
		}
	}
}
