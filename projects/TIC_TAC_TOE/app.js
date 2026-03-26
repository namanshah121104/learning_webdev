let info = document.getElementById('info')
let turn = "X"
let won = false;

function changeturn() {
    return turn == "X" ? "O" : "X";
}

function checkwinner() {
    let game = document.getElementsByClassName('game');
    let win = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]];
    win.forEach(e => {
        if ((game[e[0]].innerText == game[e[1]].innerText) && (game[e[1]].innerText == game[e[2]].innerText)&&(game[e[0]].innerText != '')){
            won = true;
            info.innerText = "Winner: " + game[e[0]].innerText;
        }
    })
}
const boxes = document.getElementsByClassName('box');

Array.from(boxes).forEach(box => {
    box.addEventListener('click', () => {
        const game = box.querySelector('.game');

        if (game.innerText !== '') return;

        game.innerText = turn;
        turn = changeturn();
        checkwinner();
        if (won == false) {
            info.innerText = "Turn of " + turn;
        }
            
    });
});
let reset = document.getElementById('reset');
reset.addEventListener('click', ()=>{
 let game = document.getElementsByClassName('game');
 Array.from(game).forEach(e=>{
     e.innerText = '';
 })
 won = false;
 turn = 'X';
 info.innerText = "Turn of " + turn;

})