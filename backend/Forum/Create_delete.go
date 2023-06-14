package Forum

import (
	"crypto/sha256"
	"database/sql"
	"encoding/hex"
	"fmt"
)

func CreateTopic(db *sql.DB, titre string, date string, idUser int, id_cat int) {
	data, err := db.Exec("INSERT INTO topic(titre, Date_creation, id_user) VALUES (?,? ,?)", titre, date, idUser)
	if err != nil {
		fmt.Print(err)
	}
	fmt.Println(data)
	result, err := db.Query("SELECT count(*) as nb_topic from topic")
	if err != nil {
		fmt.Println(err)
	}
	var nbTopic int
	for result.Next() {
		result.Scan(&nbTopic)
	}
	fmt.Println("nb :")
	fmt.Println(nbTopic)
	_, erreur := db.Exec("INSERT INTO `own`(`id_topic`, `id_cat`) values (?,?)", nbTopic, id_cat)
	if erreur != nil {
		fmt.Println(erreur)
	}
}

func CreateUser(db *sql.DB, Pseudo string, Passwd string, mail string) {
	Pass := sha256.Sum256([]byte(Passwd))
	Passwd = hex.EncodeToString(Pass[:])
	fmt.Println(mail)
	if verif_user(db, Pseudo, mail) {
		_, err := db.Exec("INSERT INTO user(Pseudo, passwd, mail) VALUES(?,?,?)", Pseudo, Passwd, mail)
		if err != nil {
			fmt.Println(err)
		}
	}
}
func CreateMessage(db *sql.DB, contenu string, date string, id_user int, id_topic int) {
	data, err := db.Exec("INSERT INTO message(Contenu, Date_creation, id_user) VALUES(?,? ,?)", contenu, date, id_user)

	if err != nil {
		fmt.Print(err)
	}
	fmt.Println(data)
	result, err := db.Query("SELECT count(*) as nb_topic from message")
	if err != nil {
		fmt.Println(err)
	}
	var nb_message int
	for result.Next() {
		fmt.Println(result.Scan(&nb_message))
		fmt.Println(nb_message)
	}
	db.Exec("INSERT INTO `contain`(`id_topic`, `id_mess`) values (?,?)", id_topic, nb_message)
}
