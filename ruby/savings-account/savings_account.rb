module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      -3.213
    elsif balance < 1000
      0.5
    elsif balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    interest = (balance * (self.interest_rate(balance) / 100))
    interest *= -1 if balance < 0
    balance + interest
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      years += 1
      current_balance = self.annual_balance_update(current_balance)
    end

    years
  end
end

p SavingsAccount.annual_balance_update(-1000.0)