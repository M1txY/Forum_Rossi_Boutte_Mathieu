package Forum

import (
	"crypto/sha256"
	"database/sql"
	"encoding/hex"
	"fmt"
)

func Signin(db *sql.DB, pseudo string, passwd string) (bool, int) {
	listUser := ListeUser(db)
	Pass := sha256.Sum256([]byte(passwd))
	passwd = hex.EncodeToString(Pass[:])
	err := ""
	id_user := 0
	fmt.Println(passwd)
	verif := false
	for i := 0; i < len(listUser); i++ {
		fmt.Println("2:" + listUser[i].Passwd.String)
		if pseudo == listUser[i].Pseudo.String && passwd == listUser[i].Passwd.String {
			err = "succes"
			verif = true
			id_user = listUser[i].IDUser
		} else if pseudo != listUser[i].Pseudo.String && passwd != listUser[i].Passwd.String {
			err = "identifiant et mdp erroné"
		} else if pseudo != listUser[i].Pseudo.String {
			err = "pseudo erroné"
			verif = false
		} else if passwd != listUser[i].Passwd.String && pseudo == listUser[i].Pseudo.String {
			err = "mdp erroné"
			verif = false
			break
		}
	}
	fmt.Println(err)
	return verif, id_user
}
