package main

import (
	"database/sql"
	"fmt"
	"log"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

type user struct {
	IDUser int
	Pseudo sql.NullString
	Passwd sql.NullString
	Mail   sql.NullString
}

type topic struct {
	IDTopic      int
	Titre        sql.NullString
	DateCreation time.Time
	IDUser       int
}
type reponse struct {
	IDMess  int
	IDMess1 int
}
type own struct {
	IDTopic int
	IDCat   int
}
type message struct {
	IDMess       int
	Contenu      sql.NullString
	Update       time.Time
	NombreLike   sql.NullInt64
	DateCreation time.Time
	IDUser       int
}
type liker struct {
	IDUser int
	IDMess int
}

type contains struct {
	IDTopic int
	IDMess  int
}
type category struct {
	IDCat int
	Titre sql.NullString
}

func main() {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	result, err := db.Query("SELECT * from topic")
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
	}
}

func MainPage(db sql.DB) {
	data, err := db.Query("SELECT * from category")
	if err != nil {
		fmt.Print(err)
	}
	var ListeUser []user
	for data.Next() {
		var User user
		err := data.Scan(&User.IDUser, &User.Mail, &User.Pseudo, &User.Passwd)
		if err != nil {
			panic(err.Error())
		}
		ListeUser = append(ListeUser, User)
		fmt.Println(User)
	}

}
