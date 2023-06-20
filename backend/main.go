package main

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"main/Forum"
	"math/rand"
	"time"
)

func main() {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum?parseTime=true")
	if err != nil {
		log.Fatal(err)
	}
	rand.Seed(time.Now().UnixNano())

	Sport := []string{
		"basket",
		"tir sportif",
		"football",
		"handball",
		"rugby",
		"volley",
		"tennis",
	}

	for id_user := 11; id_user <= 20; id_user++ {
		for id_topic := 1; id_topic <= 25; id_topic++ {
			contenu := Sport[rand.Intn(7)]
			Forum.CreateMessage(db, contenu, time.Now().Format("2006-01-02 15:04:05"), id_user, id_topic)
		}
	}

	/*	http.HandleFunc("/", Forum.LandinPage)
		http.HandleFunc("/login", Forum.LoginPage)
		http.HandleFunc("/topic", Forum.TopicPAge)
		http.HandleFunc("/categories", Forum.CatPage)
		fs := http.FileServer(http.Dir("../assets"))
		http.Handle("/assets/", http.StripPrefix("/assets/", fs))
		err := http.ListenAndServe(":8080", nil)
		if err != nil {
			fmt.Println(err)
		}*/
}
