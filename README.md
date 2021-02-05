# TicTacToe
This project involves building a Tic Tac Toe game. The main goal is to put into practice the main concepts of Object Oriented Programming, getting users input and printing the result to the screen, building a game logic and creating the game.

## Game Instructions
* This game uses a board of 9 spaces divided into  3rows and 3colums.
* The game is played between two players and each player gets a token(X,O).
* Each player can choose one valid space at a time.
* The next player gets to choose a valid space and the game continues until there is a win or draw.

### How To Play The Game
1. The game asks the user to enter a number between 1 - 9 to display on the board
2. If the number is a valid number (i.e the space is not taken or in the range of 1-9) the number displays on the board as the token of the player(X, O)
3. If any user enters an invalid number, the game says "this is an invalid move, enter another number", this happens until the user enters a valid number, then the game continues.
4. When the board is full and there are no winning combinations(i.e no same token applies in any row, columns or diagonal) the game is a draw, the players also gets a text "This is a draw game"
5. If there is a winning combination, the player with the token that applies to the winning combination gets a win text "congratulations, you have won"

### Winning Move
>**The first player to get 3 of his or her marks in a row (up, down, across, or diagonally) is the winner.**

**These are examples of win moves**

 ----> [1, 5, 9] **Player "X" chooses these combinations and wins the game.**

     X | O |   
     ----------
       | X | O
     ----------
       |   | X

 ----> [3, 6, 9] **Player "O" chooses these combinations and wins the game**

     X | O | O  
     ----------
       | X | O
     ----------
       | X | O

### Draw Move
> **This is an example of a draw move, the board is full and there is no win combinations.**

     X | O | O
     ----------
     O | X | X
     ----------
     X | O | O


# Getting Started

To get your own copy of our project simply clone the repository to your local machine.

Step 1: Type the following command into a git shell

git clone https://github.com/diamond-nicholas/TicTacToe.git

Step 2: Direct a terminal into the cloned repository directory

cd tictactoe then git checkout to readme_game_instructions

Step 3: Run the program from command line, then open it in a text editor

- Go into the "TicTacToe" directory
- Execute the "main.rb" file typing:

   ruby ./bin/main.rb

## BUILT WITH
- Ruby

- Vs-code

- Rubocop linters


## AUTHORS
👤 **Diamond Nicholas**
- GitHub:[@Diamond-Nicholas] (https://github.com/diamond-nicholas)
- Twitter: [@twitterhandle](https://twitter.com/diamondnich)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/diamond-nicholas/)


👤 **Mar y Sol Bautista**
- GitHub: [@marilirulita](https://github.com/marilirulita)
- Linkedin: [Mar y Sol Bautista](https://www.linkedin.com/in/mar-y-sol-bautista-alvarez-5a6894151/)
- Twiter: [@marylirulita](https://twitter.com/marylirulita)


## SHOW YOUR SUPPORT
Give a \* if you like the project

## 🤝 Contributing
Contributions, issues, and feature requests are welcome!
Feel free to check the issues page. Show your support
Give a ⭐️ if you like this project!

## Acknowledgments
The Odin Project
codecademy
lanch Schools


## 📝 License MIT
This project is [MIT](./LICENSE) licensed.
