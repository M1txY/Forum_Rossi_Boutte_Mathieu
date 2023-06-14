let plus = document.querySelector("#plus");
let newTopic = document.querySelector("#new-topic");
let titleInput = document.querySelector("#new-topic-title");
let messageInput = document.querySelector("#first-message");
let submit = document.querySelector("#new-topic-subbmit");
let topicList = document.querySelector("#topic-list");
plus.addEventListener('click', displayNewCat);
submit.addEventListener('click', submitData);

function displayNewCat() {
  console.log("click confirmed")
  newTopic.style.display = 'block';
}

function submitData() {
  let message = messageInput.value;
  let title = titleInput.value;
  newTopic.style.display = 'block';
  messageInput.value = '';
  titleInput.value = '';
}