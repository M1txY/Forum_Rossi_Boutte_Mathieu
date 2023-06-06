package back_golang

import (
	"database/sql"
	"fmt"
)

func CreateTopic(db *sql.DB, titre string, date string, idUser int) {
	data, err := db.Exec("INSERT INTO topic(titre, Date_création, id_user) VALUES (" + titre + "," + date + "," + string(idUser) + ")")
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
	db.Exec("INSERT INTO `own`(`id_topic`, `id_cat`) values (" + string(nb_topic+1) + ",'1')")
}

func CreateUser(db *sql.DB, Pseudo string, Passwd string, mail string) {
	if verif_user(db, Pseudo, mail) {
		_, err := db.Exec("INSERT INTO user(Pseudo, passwd, mail) VALUES(" + Pseudo + "," + Passwd + "," + mail + "")
		if err != nil {
			fmt.Println(err)
		}
	}
}
