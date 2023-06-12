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
	fmt.Println(c)
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
			verif, id := Signin(db, mail, passwd)
			idString := strconv.Itoa(id)
			fmt.Println(idString)
			if verif {
				http.SetCookie(w, &http.Cookie{
					Name:  "id_user",
					Value: "" + idString + "",
				})
			}
		}
	}
	erre := tmpl_index.Execute(w, nil)
	if erre != nil {
		fmt.Print(erre)
	}
}
