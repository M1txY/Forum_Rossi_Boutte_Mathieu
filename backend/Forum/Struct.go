package Forum

import (
	"database/sql"
	"time"
)

type User struct {
	IDUser int
	Pseudo sql.NullString
	Passwd sql.NullString
	Mail   sql.NullString
}

type Topic struct {
	IDTopic            int
	Titre              sql.NullString
	DateCreation       time.Time
	DateCreationString string
	IDUser             int
}
type Reponse struct {
	IDMess  int
	IDMess1 int
}
type Own struct {
	IDTopic int
	IDCat   int
}
type Message struct {
	IDMess            int
	Contenu           sql.NullString
	Update            sql.NullTime
	UpdateParse       string
	NombreLike        sql.NullInt64
	DateCreation      time.Time
	DateCreationParse string
	IDUser            int
}
type Liker struct {
	IDUser int
	IDMess int
}

type Contains struct {
	IDTopic int
	IDMess  int
}
type Category struct {
	IDCat int
	Titre sql.NullString
	Url   sql.NullString
}
