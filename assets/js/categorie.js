let plus = document.querySelector("#plus");
let newCat = document.querySelector("#new-cat");
let titleInput = document.querySelector("#new-cat-title");
let messageInput = document.querySelector("#first-message");
let submit = document.querySelector("#new-cat-subbmit");
let catList = document.querySelector("#cat-list");
plus.addEventListener('click', displayNewCat);
submit.addEventListener('click', submitData);

function displayNewCat() {
  console.log("click confirmed")
  newCat.style.display = 'block';
}

function submitData() {
  let message = messageInput.value;
  let title = titleInput.value;

  catList.innerHTML += `
    <div class="box_ctn">
      <img src="https://cdn.discordapp.com/attachments/1022765930511605791/1115953424169717912/1f3c0.png" alt="">
      <div class="box_content">
        <h3>${title}</h3>
        <div class="content-ctn">
          <p>${message}</p>
        </div>
      </div>
    </div>`;

  newCat.style.display = 'none';
  messageInput.value = '';
  titleInput.value = '';
}