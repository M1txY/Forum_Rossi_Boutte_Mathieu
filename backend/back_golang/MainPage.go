package back_golang

import (
	"database/sql"
	"fmt"
)

func MainPage(db *sql.DB) {
	data, err := db.Query("SELECT * from category")
	if err != nil {
		fmt.Print(err)
	}
	var ListeCat []category
	for data.Next() {
		var cat category
		err := data.Scan(&cat.IDCat, &cat.Titre)
		if err != nil {
			panic(err.Error())
		}
		ListeCat = append(ListeCat, cat)
		fmt.Println(ListeCat)
	}

	var CatStruct = struct{ ListCat []category }{ListeCat}
	fmt.Println(CatStruct)
}
