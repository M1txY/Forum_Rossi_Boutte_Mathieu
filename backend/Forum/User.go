package Forum

import (
	"database/sql"
	"fmt"
)

func verif_user(db *sql.DB, pseudo string, mail string) bool {
	listUser := ListeUser(db)
	for i := 0; i < len(listUser); i++ {
		if pseudo == listUser[i].Pseudo.String {
			fmt.Println("pseudo déja utiliser")
			return false
		} else if mail == listUser[i].Mail.String {
			fmt.Println("mail déja utiliser")
			return false
		}
	}
	return true
}

func ListeUser(db *sql.DB) []user {
	data, err := db.Query("SELECT * from user")
	if err != nil {
		fmt.Println(err)
	}
	var ListeUser []user
	for data.Next() {
		var User user
		err := data.Scan(&User.IDUser, &User.Pseudo, &User.Passwd, &User.Mail)
		if err != nil {
			panic(err.Error())
		}
		ListeUser = append(ListeUser, User)

	}
	return ListeUser
}
