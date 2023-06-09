package Forum

import (
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/http"
)

func LandinPage(w http.ResponseWriter, r *http.Request) {
	db, err := sql.Open("mysql",
		"root@tcp(127.0.0.1:3306)/forum")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	tmpl_index := template.Must(template.ParseFiles("../frontend/pages/index.html"))
	data := MainPage(db)
	c, erreur := r.Cookie("auth")
	fmt.Println(c)
	if erreur != nil {
		fmt.Println(erreur)
	} else if c.Value != "" {
		data.auth = true
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
	defer db.Close()
	fmt.Println(r.Method)
	tmpl_index := template.Must(template.ParseFiles("../frontend/pages/connexion.html"))
	if r.Method == "POST" {
		mail := r.FormValue("mail")
		passwd := r.FormValue("passwd")
		pseudo := r.FormValue("pseudo")
		fmt.Println(mail)
		fmt.Println(pseudo)
		fmt.Println(passwd)
		if pseudo == "" {
			verif := Signin(db, mail, passwd)
			if verif {
				http.SetCookie(w, &http.Cookie{
					Name:  "auth",
					Value: "true",
				})
			}
		}
	}
	erre := tmpl_index.Execute(w, nil)
	if erre != nil {
		fmt.Print(erre)
	}
}
