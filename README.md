# TicTacToe-Ruby-Project-

# Ruby Tic-Tac-Toe

## Game instructions

Tic-Tac-Toe is a very popular game, which consists in making a sequence of three symbols in either a row, column or diagonal in a 3x3 board.

Game strategy:

1. Win: If the player has two in a row, they can place a third to get three in a row.
2. Block: If the opponent has two in a row, the player must play the third themselves to block the opponent.
3. Fork: Create an opportunity where the player has two ways to win (two non-blocked lines of 2).
4. Blocking an opponent's fork: If there is only one possible fork for the opponent, the player should block it. Otherwise, the player should 5. block all forks in any way that simultaneously allows them to create two in a row. Otherwise, the player should create a two in a row to 6. force the opponent into defending, as long as it doesn't result in them creating a fork. For example, if "X" has two opposite corners and 7. "O" has the center, "O" must not play a corner move in order to win. (Playing a corner move in this scenario creates a fork for "X" to win.)
5. Center: A player marks the center. (If it is the first move of the game, playing a corner move gives the second player more opportunities to make a mistake and may therefore be the better choice; however, it makes no difference between perfect players.)
6. Opposite corner: If the opponent is in the corner, the player plays the opposite corner.
7. Empty corner: The player plays in a corner square.
8. Empty side: The player plays in a middle square on any of the 4 sides.

## Game construction

This is a tic-tac-toe game built with ruby and oop principle
In this game there are 5 main files

    1- main.rb which is the "main file is responsible for all other files, its the combination of the other files and for calling all the methods in the entire game"
    2- player.rb this is a liberary that's responsable of storing players variables such as (name, token).
    3- game.rb which is responsible for the game methods, validations, comparisions and board manipulation.
    4- board.rb which is responsible for showing the game interface
    5- helper.rb which helps the user for some useful methods

    ---------------------------------------------------------------------------------------------------------------------

    In this project all the logic and manipulation is put in the files inside lib folder except for these that require consistant
    outputs.

    ---------------------------------------------------------------------------------------------------------------------

    the game consists of 6 steps:
    1- get players names and validate them, and capitalize the player name and it checks it if its nit smaller than 3 characters.
    2- It gives random sign to players
    3- It creates player object
    4- display the board and ask for a move.
    5- validating the given move that it's not already taken or that it's not between 1-9, this proccess runs for both players.
    6- It checks for winner after every move and if there is no winner till 9 moves it shows draw.

## Built With

- Ruby
- VSCode
- Rubocop

## Live Demo

To quickly see our project in action, visit the [live demo](https://repl.it/@MkrtichSargsyan/TicTacToe-Ruby-Project-#bin/main.rb) on repl.it. Type bin/main.rb to execute the program.

## Getting Started

### Prerequisites

To get this project up and running, you must already have ruby installed on your computer.

### Installation

**To get this project set up on your local machine, follow these simple steps:**

1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Copy and paste the following code into the Terminal:
   git clone https://github.com/AkintoyeOlamide/TicTacToe-Ruby-Project-
4. Hit enter.
5. Once the repository has been cloned, navigate inside the repository and type:
   bin/main.rb
   This will run the game and you will be able to play it using the terminal.
6. Have fun!

## Authors

👤 **Mohammed Naqhid**

- GitHub: [@Mohammed Naqhid ](https://github.com/Naqhid)
- Twitter: [@naqhid](https://twitter.com/naqhid)
- LinkedIn: [@Naqhid](https://www.linkedin.com/in/mohammed-naqhid-ab3080189/)

👤 **Anand Kumar**

- GitHub: [@Mohammed Naqhid ](https://github.com/Naqhid)
- Twitter: [@naqhid](https://twitter.com/naqhid)
- LinkedIn: [@Naqhid](https://www.linkedin.com/in/mohammed-naqhid-ab3080189/)

## :handshake: Contributing

## Show your support

If you've read this far, you must like the project! Give us a :star:️!

## Acknowledgments

- This Project was part of an assignment available on The Odin Project.
- Our thanks to Microverse and all our peers and colleagues there.
