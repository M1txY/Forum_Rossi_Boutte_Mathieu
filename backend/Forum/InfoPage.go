package Forum

import (
	"database/sql"
	"fmt"
)

func MainPage(db *sql.DB) struct {
	ListCat   []Category
	ListTopic []Topic
	Auth      bool
} {
	data, err := db.Query("SELECT * from category")
	if err != nil {
		fmt.Print(err)
	}
	var ListeCat []Category
	for data.Next() {
		var cat Category
		err := data.Scan(&cat.IDCat, &cat.Titre, &cat.Url)
		if err != nil {
			panic(err.Error())
		}
		ListeCat = append(ListeCat, cat)
	}
	Top, err := db.Query("SELECT * from topic")
	if err != nil {
		fmt.Print(err)
	}
	var listTopic []Topic
	for Top.Next() {
		var topic Topic
		err := Top.Scan(&topic.IDTopic, &topic.Titre, &topic.DateCreation, &topic.IDUser)
		topic.DateCreationString = topic.DateCreation.Format("2006-01-02 15:04:05")
		if err != nil {
			fmt.Println(err.Error())
		}
		listTopic = append(listTopic, topic)
	}
	var CatStruct = struct {
		ListCat   []Category
		ListTopic []Topic
		Auth      bool
	}{
		ListeCat,
		listTopic,
		false,
	}
	return CatStruct
}

func TopicByCat(db *sql.DB, id_cat int) struct {
	ListeTopic []Topic
	Auth       bool
	Reponse    string
} {
	data, err := db.Query("SELECT t.id_topic,t.titre,t.Date_creation,t.id_user from topic as t LEFT JOIN own as o ON t.id_topic= o.id_topic LEFT JOIN category as c ON c.id_cat =o.id_cat WHERE c.id_cat =?", id_cat)
	if err != nil {
		fmt.Print(err)
	}
	var listTopic []Topic
	for data.Next() {
		var topic Topic
		err := data.Scan(&topic.IDTopic, &topic.Titre, &topic.DateCreation, &topic.IDUser)
		topic.DateCreationString = topic.DateCreation.Format("2006-01-02 15:04:05")
		if err != nil {
			fmt.Println(err.Error())
		}
		listTopic = append(listTopic, topic)
	}
	var TopicStruct = struct {
		ListeTopic []Topic
		Auth       bool
		Reponse    string
	}{
		listTopic,
		false,
		"",
	}
	return TopicStruct
}

func MesssageForTopic(db *sql.DB, id_topic int) struct {
	Liste   []Message
	Auth    bool
	Reponse string
} {

	data, err := db.Query("SELECT m.id_mess,m.Contenu,m.Update_,m.nombre_like,m.Date_creation,m.id_user FROM message as m JOIN contain as c ON m.id_mess=c.id_mess JOIN topic as t ON t.id_topic= c.id_topic WHERE t.id_topic =?", id_topic)
	if err != nil {
		fmt.Print(err)
	}
	var listMessage []Message
	for data.Next() {
		var mess Message
		err := data.Scan(&mess.IDMess, &mess.Contenu, &mess.IDUser, &mess.DateCreation, &mess.NombreLike, &mess.Update)
		mess.DateCreationParse = mess.DateCreation.Format("2006-01-02 15:04:05")
		mess.UpdateParse = mess.Update.Format("2006-01-02 15:04:05")
		if err != nil {
			panic(err.Error())
		}
		listMessage = append(listMessage, mess)
	}

	var MessStruct = struct {
		Liste   []Message
		Auth    bool
		Reponse string
	}{
		listMessage,
		false,
		"",
	}
	return MessStruct
}
