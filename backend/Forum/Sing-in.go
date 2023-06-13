package Forum

import (
	"crypto/sha256"
	"database/sql"
	"encoding/hex"
	"fmt"
	"regexp"
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

func VerifInpt(mail string, pseudo string, mdp string) (bool, string) {

	MailVerif := regexp.MustCompile(`^[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,4}$`).MatchString(mail)
	PseudoVerif := regexp.MustCompile("[0-9A-Za-z_]").MatchString(pseudo)
	MdpVerif := regexp.MustCompile(`[0-9A-Za-z_%+@&$]`).MatchString(pseudo)
	str, Bo := "", false
	if MdpVerif && PseudoVerif && MailVerif {
		Bo = true
		str = "tout ok"
	} else if !MailVerif && !MdpVerif && !PseudoVerif {
		str = "tout faux"
	} else if !MailVerif && MdpVerif && PseudoVerif {
		str = "mail incorrect"
	} else if !MdpVerif && MailVerif && PseudoVerif {
		str = "mdp incorrect"
	} else if !PseudoVerif && MailVerif && MdpVerif {
		str = "pseudo incorrect"
	} else if !PseudoVerif && !MailVerif && MdpVerif {
		str = "pseudo et mail faux "
	} else if !MdpVerif && !MailVerif && PseudoVerif {
		str = "mdp et mail incorrect"
	} else if !PseudoVerif && !MdpVerif && MailVerif {
		str = "pseudo et mdp faux"
	}
	return Bo, str
}

func Register(db *sql.DB, pseudo string, passwd string, mail string) {
	Inpt, err := VerifInpt(mail, pseudo, passwd)
	if Inpt {
		if verif_user(db, pseudo, mail) {
			CreateUser(db, pseudo, passwd, mail)
		}
	} else if err != "" {
		fmt.Println(err)
	}

}
