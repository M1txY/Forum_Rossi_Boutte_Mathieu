package Forum

import (
	"database/sql"
	"fmt"
)

func MainPage(db *sql.DB) struct {
	List []category
	auth bool
} {
	data, err := db.Query("SELECT * from category")
	if err != nil {
		fmt.Print(err)
	}
	var ListeCat []category
	for data.Next() {
		var cat category
		err := data.Scan(&cat.IDCat, &cat.Titre, &cat.url)
		if err != nil {
			panic(err.Error())
		}
		ListeCat = append(ListeCat, cat)
	}
	var CatStruct = struct {
		List []category
		auth bool
	}{
		ListeCat,
		false,
	}
	return CatStruct
}

func TopicByCat(db *sql.DB, id_cat int) {
	data, err := db.Query("SELECT * from topic as t JOIN own as o ON t.id_topic= o.id_topic  JOIN category as c ON c.id_cat =o.id_cat  WHERE c.id_cat =?", string(id_cat))
	if err != nil {
		fmt.Print(err)
	}
	var listTopic []topic
	for data.Next() {
		var Topic topic
		err := data.Scan(&Topic.IDTopic, &Topic.Titre, &Topic.IDUser, &Topic.DateCreation)
		if err != nil {
			panic(err.Error())
		}
		listTopic = append(listTopic, Topic)
	}

}

func MesssageForTopic(db *sql.DB, id_topic int) {

	data, err := db.Query("SELECT * FROM message as m JOIN contains as c ON m.id_mess=c.id_mess JOIN topic as t ON t.id_topic= c.id_topic WHERE t.id_topic =?", string(id_topic))
	if err != nil {
		fmt.Print(err)
	}
	var listTopic []topic
	for data.Next() {
		var Topic topic
		err := data.Scan(&Topic.IDTopic, &Topic.Titre, &Topic.IDUser, &Topic.DateCreation)
		if err != nil {
			panic(err.Error())
		}
		listTopic = append(listTopic, Topic)
	}
}
