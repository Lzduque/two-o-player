class player
attr_accessor :lives
@lives = 3

player 1
player 2

question 1 --> player 1
this -> right answer: player 1 lives +=
automatic answer
or this -> wrong answer: player 1 lives -=
automatic answer
SCORE
if player 1 lives == 0
player 1 wins
GAME OVER
if player 2 lives == 0
player 2 wins
GAME OVER
otherwise... continue
NEW TURN

question 2 --> player 2
this -> right answer: player 2 lives +=
automatic answer
or this -> wrong answer: player 2 lives -=
automatic answer
SCORE
if player 1 lives == 0
player 1 wins
GAME OVER
if player 2 lives == 0
player 2 wins
GAME OVER
otherwise... continue
NEW TURN

NOUNS = CLASS
player -- holds the lives (score), help to control the players --> only need number of lives
game -- makes the questions, evaluates the answer, compare score, controls whose turn it is --> players

Which class will contain the game loop (where each instance of the loop is the other players turn)? --> game

Which class should manage who the current_player is? --> game

Which class(es) will contain user I/O and which will not have any? --> game controls, user doesnt have any