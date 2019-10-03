class BankAccount
  
  attr_reader :name
  attr_accessor :balance, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(x)
    @balance += x
  end
  
  def display_balance
    print ("Your balance is #{balance}")
  end
  
  
end
  