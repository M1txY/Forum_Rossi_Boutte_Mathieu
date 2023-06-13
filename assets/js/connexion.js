let button = document.querySelector("#switch-button");
let conteneur = document.querySelector("#form-connexion");
let title = document.querySelector("#connexion-div h1");
let text = document.querySelector("p");

let connexionPage = true;

button.addEventListener("click", changePage);

function changePage(){
    console.log("click")
    if(connexionPage===true){
    conteneur.innerHTML="";
        let content = `
        <form id="form-creation" action="POST">
          <div class="form-content">
            <label for="email">e-mail:</label>
            <input name="mail" type="text" id="email"/>
          </div>
  
          <div id="form-pseudo" class="form-content">
            <label for="pseudo">Pseudo:</label>
            <input type="text" name="pseudo" id="pseudo" />
          </div>
  
          <div id="form-password" class="form-content">
            <label for="mdp">mot de passe :</label>
            <input type="password" name="passwd" id="mdp" />
          </div>
          <button type="submit">Crée un compte </button>
         `;

    title.innerHTML = "";
    title.innerHTML += "Créer votre compte";
    text.innerHTML = "";
    text.innerHTML += "Déja un compte ?";
    button.innerHTML = "";
    button.innerHTML += "connectez-vous";
    connexionPage = false;
    console.log(connexionPage);
    conteneur.innerHTML += content;
  } else if (connexionPage === false) {
    conteneur.innerHTML = "";
    let content = `
  
        <form id="form-connexion" action="POST">
          <div class="form-content">
            <label for="email">e-mail:</label>
            <input  type="text"  id="email"/>
          </div>
  
          <div class="form-content">
            <label for="mdp">mot de passe :</label>
            <input type="password" id="mdp"/>
          </div>
  
         `;
    title.innerHTML = "";
    title.innerHTML += "Connectez vous";
    text.innerHTML = "";
    text.innerHTML += "Pas de compte ?";
    button.innerHTML = "";
    button.innerHTML += "créer en un";
    conteneur.innerHTML += content;
    connexionPage = true;
  }
}
