package Forum

import (
	"fmt"
	"html/template"
	"net/http"
)

func LandinPage(w http.ResponseWriter, r *http.Request) {
	tmpl_index := template.Must(template.ParseFiles("../../frontend/pages/index.html"))
	err := tmpl_index.Execute(w, nil)
	if err != nil {
		fmt.Print(err)
	}
}
