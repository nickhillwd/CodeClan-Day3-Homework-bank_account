ACCOUNTS = [
  {
    holder_name: "Jay",
    amount: 55,
    type: "business"
  },
  {
    holder_name: "Rick",
    amount: 1,
    type: "personal"
  },
  {
    holder_name: "Keith",
    amount: 500,
    type: "business"
  },
  {
    holder_name: "Valerie",
    amount: 100,
    type: "personal"
  },
  {
    holder_name: "Michael",
    amount: 5,
    type: "personal"
  },
  {
    holder_name: "Kate",
    amount: 2000,
    type: "business"
  },
  {
    holder_name: "Tony",
    amount: 150,
    type: "personal"
  },
  {
    holder_name: "Sandy",
    amount: 4500,
    type: "business"
  },
]

##number of bank accounts

def number_of_bank_accounts()
  ACCOUNTS.length
end

###first account owner

def first_bank_account_holder()
  ACCOUNTS[0][:holder_name]
end

###print to screen name of all bank account owners

def print_owner_names
  for name in ACCOUNTS
    puts "#{name[:holder_name]}"
  end
end

# suggested to call the itterator variable as account, not name. as we are itterating through the accounts as a whole thing and not just the account names. This could cause confusion for someone else looking at the code.

###total cash in bank

def total_cash_in_bank(type = nil)
  total = 0
  for acc in ACCOUNTS
      total += acc[:amount] if !type || [:type] == type
  end
    return total
end

###last account owner

def last_bank_account_holder()
  ACCOUNTS.last[:holder_name]
end

###average bank account value

def average_account_value()
  money = 0
  for i in ACCOUNTS
      money += i[:amount]
  end
    return (money / ACCOUNTS.length)
end

# def average_account_value
# total_cash_in_bank / number_of_bank_accounts
# end

###total cash in business accounts

def total_business_account_amount()
  money = 0
  for i in ACCOUNTS
    money += i[:amount] if i[:type] == "business"
  end
    return money
end

###holder of largest bank account

# def account_balance_largest()
#   holder_name = ""
#   ACCOUNTS.select{|x| x[:holder_name] == holder_name }
#   .max_by{|x| x[:amount]}
#   return holder_name
# end

def holder_of_largest_account
  biggest = 0
  for i in ACCOUNTS
    if i[:amount] > biggest
      biggest = i[:amount]
      richest = i[:holder_name]
    end
  end
  return richest
end

# balance_largest = account_balance_largest(ACCOUNTS, 0)

def largest_personal
  max = 0
  account_holder = ""
  for account in ACCOUNTS
    if account[:type] == "personal" && account[:amount] > max
      max = account[:amount]
      account_holder = account[:holder_name]
    end
  end
  return account_holder
end

#etra code
#add a new account

def create_new_account()
  new_account = {}
  #get account holder
  puts "Who would you like to create an account for?"
  new_account[:holder_name] = gets.chomp
  #get account type
  puts "What type of account is it? (business/personal)"
  new_account[:type] = gets.chomp.downcase
  until new_account[:type] == "business" || new_account[:type] == "personal"
    puts "Invalid account type. Please enter business or personal:"
    new_account[:type] = gets.chomp.downcase
  end
  #get account amount
  puts "What is the initial amount?"
  new_account[:amount] = gets.chomp.to_i
  return new_account
end



















