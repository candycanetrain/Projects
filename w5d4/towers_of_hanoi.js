//require game


class HanoiGame {
  constructor() {
    this.stacks = [[3,2,1],[],[]];
  }

  promptMove(move, reader) {
    this.printStacks();

    //call something to ask user where they want to move
    reader.question(`Where would you like to move from? > `, function(from) {
      console.log(`You chose to move from : ${from}`);
      reader.question(`Where would you like to move to? > `, function(to) {
        console.log(`You chose to move TO : ${to}`);

        move(from, to) if valid();
        this.run();
      });
    });
    //pass start and end to a callback // move method
  }

  printStacks() {
    JSON.stringify(this.stacks);
  }

  run(completionCallback, reader) {
    //if game.won? run the completionCallback

    //until another stack (not starting stack) is full
      //get user input (from stack, to stack)
      //if valid?
          //move
          //check if game over?
        //else get user input
    //

  }

}
