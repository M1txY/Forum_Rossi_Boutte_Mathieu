let log = document.querySelector("#log");
let create = document.querySelector("#create");



function createOrLog(clicked) {
    let url = window.location.href+"/login?button=" + clicked;
    window.location.href = url;
}

log.addEventListener("click", function() {
    createOrLog('login');
});

create.addEventListener("click", function() {
    createOrLog('create');
});