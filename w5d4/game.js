//define reader, pass reader to game.run();
const game = new HanoiGame();
function completionCallback() {
  //what to do when the game is over
};

game.run(completionCallback, reader);

const readline = require('readline');

const reader = readline.createInterface({

  input: process.stdin,
  output: process.stdout
});
