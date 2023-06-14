package Forum

import (
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/http"
	"strconv"
)

func LandinPage(w http.ResponseWriter, r *http.Request) {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum?parseTime=true")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	tmpl_index := template.Must(template.ParseFiles("../frontend/pages/index.html"))
	data := MainPage(db)
	c, erreur := r.Cookie("id_user")
	if erreur != nil {
		fmt.Println(erreur)
	} else if c.Value != "" {
		data.Auth = true
	}

	erre := tmpl_index.Execute(w, data)
	if erre != nil {
		fmt.Print(erre)
	}
}

func LoginPage(w http.ResponseWriter, r *http.Request) {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	var data = struct {
		Auth    bool
		Reponse string
	}{
		false,
		"",
	}
	defer db.Close()
	fmt.Println(r.Method)
	tmpl_index := template.Must(template.ParseFiles("../frontend/pages/connexion.html"))
	if r.Method == "POST" {
		mail := r.FormValue("mail")
		passwd := r.FormValue("passwd")
		pseudo := r.FormValue("pseudo")
		fmt.Println("mail:" + mail)
		fmt.Println("pseudo :" + pseudo)
		fmt.Println("passwd:" + passwd)
		if mail == "" {
			verif, id, str := Signin(db, pseudo, passwd)
			idString := strconv.Itoa(id)
			if verif {
				http.SetCookie(w, &http.Cookie{
					Name:  "id_user",
					Value: "" + idString + "",
				})
				data.Auth = true
				data.Reponse = str
			}
		} else {
			str := Register(db, pseudo, passwd, mail)
			fmt.Println(str)
			data.Reponse = str
		}
	}
	erre := tmpl_index.Execute(w, data)
	if erre != nil {
		fmt.Print(erre)
	}
}

func TopicPAge(w http.ResponseWriter, r *http.Request) {
	tmpl_index := template.Must(template.ParseFiles("../frontend/pages/topic.html"))
	IdTopic, erre := strconv.Atoi(r.URL.Query().Get("Id"))
	fmt.Println(IdTopic)
	if erre != nil {
		fmt.Println(erre)
	}
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	c, erreur := r.Cookie("id_user")
	data := MesssageForTopic(db, IdTopic)
	if erreur != nil {
		fmt.Println(erreur)
	} else if c.Value != "" {
		data.Auth = true
	}
	Err := tmpl_index.Execute(w, data)
	if erre != nil {
		fmt.Print(Err)
	}
}

func CatPage(w http.ResponseWriter, r *http.Request) {
	tmpl_index := template.Must(template.ParseFiles("../frontend/pages/categorie.html"))
	IdTCat, erre := strconv.Atoi(r.URL.Query().Get("Id"))
	fmt.Println(IdTCat)
	if erre != nil {
		fmt.Println(erre)
	}
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	data := TopicByCat(db, IdTCat)
	c, erreur := r.Cookie("id_user")

	if erreur != nil {
		fmt.Println(erreur)
	} else if c.Value != "" {
		data.Auth = true
	}
	Err := tmpl_index.Execute(w, data)
	if erre != nil {
		fmt.Print(Err)
	}
}
