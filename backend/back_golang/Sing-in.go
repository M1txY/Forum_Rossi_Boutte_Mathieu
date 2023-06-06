package back_golang

import (
	"database/sql"
	"fmt"
)

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
