# Making ATM class in Python
class ATM:
    def __init__(self, name, balance, password):
        self.name = name
        self.balance = balance
        self.password = password

    def check_balance(self):
        message = f"Account: {self.name}, Balance: {self.balance}"
        print(message)

    def deposit(self, money):
        self.balance += money
        print(f"New Balance: {self.balance}")
        print("Deposit successfully.")

    def change_name(self,new_name):
        self.name = new_name
        print(f"New name: {self.name}")
        print("Your account name has been changed.")
    
    def withdraw(self, money):
        self.balance -= money
        print(f"New Balance: {self.balance}")
        print("withdraw successfully.")
    
    def transfer(self, transfer_acc, money):
        self.balance -= money
        print(f"New Balance: {self.balance}")
        print(f"Transfer {money} to account NO:{transfer_acc} successfully.")
    
    def change_password(self,new_password):
        self.password = new_password
        print(f"Your password is already changed to {self.password}.")
    
    def forget_password(self,email)-> None:
        print(f"Your password is already sent to {email}.")
    
kplus = ATM("ryu",90000,12345)
kplus.check_balance()
        
