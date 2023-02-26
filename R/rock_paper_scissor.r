# R language 
# Rock Paper Scissor game.
# Link to Play -> https://replit.com/@RyuTyu/Batch06RockPaperScissor#main.r
print("welcome to rock, paper, scissor game!")
print("You can type 'r' for rock, 'p' for paper and 's' for scissor.")
print("If you want to end the game please type q.")
win <- 0
lose <- 0
draw <- 0
loop <- 0
while(loop<1){
  bot <- sample(c("Rock","Paper","Scissor"),1)
  print("What do you choose?")
  rps <- readLines("stdin",n=1)
  if((rps=="r" & bot == "Rock")
  ||(rps=="p" & bot == "Paper")
  ||(rps=="s" & bot == "Scissor")){
    print((paste("I choose",bot,"Draw!")))
    draw = draw+1
  }else if ((rps=="p" & bot == "Rock")
  ||(rps=="s" & bot == "Paper")
  ||(rps=="r" & bot == "Scissor")){
    print((paste("I choose",bot,"You win!")))
    win = win +1
  }else if ((rps=="s" & bot == "Rock")
  ||(rps=="r" & bot == "Paper")
  ||(rps=="p" & bot == "Scissor")){
    print((paste("I choose",bot,"You lose!")))
    lose = lose +1
  }
  else if(rps=="q"){
    break
  }else{
    print("Invalid character please type again.")
  }
}
print("Result:")
print(paste("Win =",win,"Lose =",lose,"Draw =",draw))
print("Thanks for playing, see you again!")


