let button = document.querySelector("#switch-button");
let conteneur = document.querySelector("#form-connexion");
let title = document.querySelector("#connexion-div h1");
let text = document.querySelector("p");
let urlParams = new URLSearchParams(window.location.search);
let buttonClicked = urlParams.get("button");
var connexionPage = false;

button.addEventListener("click", changePage);

document.addEventListener("DOMContentLoaded", () => {
  loadPage();
});

function loadPage() {
  if (urlParams.get("button") == "login") {
    connexionPage = true;
    changePage();
  } else{
    changePage();
  }
}
function changePage() {
  if (connexionPage === false) {
    conteneur.innerHTML = ""; // Modifier le contenu de l'élément parent
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
        <button type="submit">Créer un compte</button>
      </form>
    `;

    title.textContent = "Créez votre compte";
    text.textContent = "Déjà un compte ?";
    button.textContent = "Connectez-vous";
    connexionPage = true;
    conteneur.innerHTML += content;
  } else  {
    conteneur.innerHTML = ""; // Modifier le contenu de l'élément parent
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
      </form>
    `;

    title.textContent = "Connectez-vous";
    text.textContent = "Pas de compte ?";
    button.textContent = "Créez-en un";
    conteneur.innerHTML += content;
    connexionPage = false;
  }
}