# R langauge
# Chatbot for ordering pizza
# Link to test -> https://replit.com/@RyuTyu/Batch06ChatbotPizza#main.r

print("Hello! this is Pizza and Steak house!")
print(" what's your name?")
user_name <- readLines("stdin",n=1)
print(paste("Hi", user_name))
price <- 0
reorder <- 0
while(reorder < 1){
  ## select pizza or steak
loop1 <- 0
while(loop1 < 1){
  print("What would you like to order 1.Pizza($10) or 2.Beef steak?($15) (Please type only number.)")
menu <- readLines("stdin",n=1)
  if (menu == "1"){
  print("You have ordered Pizza.")
    price = price + 10
    break
  }else if (menu == "2"){
  print("You have ordered Beef steak.")
    price = price + 15
    break
  }else {
    print("Invalid order please try again.")
  }
}

## select pizza topping
loop2 <-0
while(loop2<1){
  if(menu == "1"){
    print("Please select topping do you need 1.Hawaiian, 2.Meat lover, 3.Pepperoni")
    topping <- readLines("stdin",n=1)
    loop2_1 <-0
    while(loop2_1<1){
      if(topping=="1"){
        print("You selected Hawaiian for topping.")
        menu <- "Hawaiian pizza $10"
        break
      }else if(topping=="2"){
        print("You selected Meat lover for topping.")
        menu <- "Meat lover pizza $10"
        break
      }else if(topping=="3"){
        print("You selected Pepperoni for topping.")
        menu <- "Peperoni pizza $10"
        break
      }else {
        print("Invalid order please try again.")
      }
    }
    break
## select steak deegree
  }else{
    print("Please select deegree of steak. 1.Well 2.Medium 3.Medium-rare")
    degree <- readLines("stdin",n=1)
    loop2_2 <-0
    while(loop2_2<1){
      if(degree=="1"){
        print("You selected Well done steak.")
        menu <- "Well done steak $15"
        break
      }else if(degree=="2"){
        print("You selected Medium steak.")
        menu <- "Medium steak $15"
        break
      }else if(degree=="3"){
        print("You selected Medium-rare steak.")
        menu <- "Medium-rare steak $15"
        break
      }else{
        print("Invalid order please try again.")
      }
    }
    break
  }
}
## select drink
print("What would you like for drink?")
print("1.Coca-Cola ($2) 2.Lemon soda ($2) 3.Water ($1) 4.No drink")   
drink <- readLines("stdin",n=1)
loop3 <- 0
while(loop3<1){
  if(drink == "1"){
    drink <- "Coca-Cola $2"
    price = price + 2
    break
  }else if(drink =="2"){
    drink <- "Lemon soda $2" 
    price = price + 2
    break
  }else if(drink =="3"){
    drink <- "Water $1"
    price = price + 1
    break
  }else if(drink=="4"){
    drink <- "No drink"
    break
  }else{
    print("Invalid order please try again.")
  }
}
## delivery info
print("Do you prefer 1.self pick-up or 2.delivery service?(+$5)")
status <- readLines("stdin",n=1)

loop4 <- 0
while(loop4<1){
  if(status =="1"){
  status ="Self pick-up"
  break
  }else if(status == "2"){
  status= "Delivery service $5"
  price = price + 5
  print("Please type your delivery address.")
  address <- readLines("stdin",n=1)
  break
  }
}
## summary
print("Order summary:")
print(paste(menu))
print(paste(drink))
print(paste(status))
print(paste("Total price : $",price))
if(status == "Delivery service $5"){
  print(paste("Address : ",address))
}
print("Confirm your order? 1.Confirm 2.Reorder")
confirm <- readLines("stdin",n=1)
if (confirm == "1"){
  break
}else if (confirm == "2"){
  print("Please order again.")
}
}
print("Your order will be ready in 30 minutes.")
print((paste("Thank you very much",user_name,".")))
print("please enjoy your meal!")


  
