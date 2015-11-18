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

###total cash in bank

def total_cash_in_bank()
  money = 0
  for i in ACCOUNTS
      money += i[:amount]
  end
    return money
end

###last account owner

def last_bank_account_holder()
  ACCOUNTS[7][:holder_name]
end

###average bank account value

def average_account_value()
  money = 0
  for i in ACCOUNTS
      money += i[:amount]
  end
    return (money / 8)
end

###total cash in business accounts

def total_business_account_amount()
  money = 0
  for i in ACCOUNTS
    money += i[:amount] if i[:type] == "business"
  end
    return money
end























