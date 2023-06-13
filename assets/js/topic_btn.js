
const plus_div = document.querySelector('#plus-div');
const btn_topic = document.querySelector('#btn_topic');

plus_div.addEventListener('click', () => {
    btn_topic.classList.remove('topic_ctn_unactive');
    btn_topic.classList.add('topic_ctn_active');
    
});