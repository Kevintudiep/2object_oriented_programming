class BankAccount

  @@interest_rate = 0.10
  @@accounts = []

  def initialize
    @balance = 0
  end

  def self.create
    new_account = self.new
    @@accounts << new_account
    return new_account
  end

  def self.total_funds
      account_total = 0
      @@accounts.each do |account|
      account_total += account.balance
    end
    return account_total
  end

  def self.interest_time
    # interest_total = 0
    @@accounts.each do |account|
      # interest_total = account.balance + (@@interest_rate * account.balance) (if you want to show balance plus interest)
      account.balance *= @@interest_rate
    end
    # account.balance
  end




  def balance
    return @balance
  end

  def balance=(balance)
    @balance = balance
  end

  def deposit(balance)
    @balance += balance
  end

  def withdraw(balance)
    @balance -= balance
  end



end

td_bank = BankAccount.create
puts td_bank

scotia_bank = BankAccount.create
puts scotia_bank

td_bank.deposit(1999)
puts td_bank.balance

scotia_bank.deposit(2000)
puts scotia_bank.balance


puts BankAccount.total_funds

BankAccount.interest_time

puts scotia_bank.balance
puts td_bank.balance
# td_bank = BankAccount.new
# puts td_bank.balance

# td_bank.deposit(2000)
# puts td_bank.balance
#
# td_bank.withdraw(500)
# puts td_bank.balance
