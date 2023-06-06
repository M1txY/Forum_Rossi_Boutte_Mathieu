package Forum

import (
	"crypto/sha256"
	"database/sql"
	"encoding/hex"
	"fmt"
)

func CreateTopic(db *sql.DB, titre string, date string, idUser int, id_cat int) {
	data, err := db.Exec("INSERT INTO topic(titre, Date_création, id_user) VALUES (?,TIMESTAMP ,?)", titre, string(idUser))
	if err != nil {
		fmt.Print(err)
	}
	fmt.Println(data)
	result, err := db.Query("SELECT count(*) as nb_topic from topic")
	if err != nil {
		fmt.Println(err)
	}
	var nb_topic int
	for result.Next() {

		fmt.Println(result.Scan(&nb_topic))
		fmt.Println(nb_topic)
	}
	db.Exec("INSERT INTO `own`(`id_topic`, `id_cat`) values (?,?)", string(nb_topic+1), string(id_cat))
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
func CreateMessage(db *sql.DB, contenu string, id_user int, id_topic int) {
	data, err := db.Exec("INSERT INTO user(Contenu, Date_creation, id_user) VALUES(?,TIMESTAMP ,?)", contenu, id_user)

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
	db.Exec("INSERT INTO `contain`(`id_topic`, `id_mess`) values (?,?)", string(id_topic), string(nb_message+1))
}
