package Forum

import (
	"database/sql"
	"time"
)

type user struct {
	IDUser int
	Pseudo sql.NullString
	Passwd sql.NullString
	Mail   sql.NullString
}

type topic struct {
	IDTopic      int
	Titre        sql.NullString
	DateCreation time.Time
	IDUser       int
}
type reponse struct {
	IDMess  int
	IDMess1 int
}
type own struct {
	IDTopic int
	IDCat   int
}
type message struct {
	IDMess       int
	Contenu      sql.NullString
	Update       time.Time
	NombreLike   sql.NullInt64
	DateCreation time.Time
	IDUser       int
}
type liker struct {
	IDUser int
	IDMess int
}

type contains struct {
	IDTopic int
	IDMess  int
}
type category struct {
	IDCat int
	Titre sql.NullString
}
