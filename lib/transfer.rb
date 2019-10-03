class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    (sender.valid? && receiver.valid?) ? true : false
  end
  
  def execute_transaction
    if amount > sender.balance
      return "Transaction rejected. Please check your account balance."
    else
      if valid? && @status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        @status = "complete"
        return status
      else
        nil
      end
    end
  end

end
  