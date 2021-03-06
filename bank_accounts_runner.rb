require_relative('./bank_accounts_functions')

##number of bank accounts
bank_accounts_count = number_of_bank_accounts()
puts "number of accounts #{bank_accounts_count}"
puts "\n"

###first account owner
first_bank_owner = first_bank_account_holder()
puts "first bank account owner is #{first_bank_owner}"
puts "\n"

###print to screen name of all bank account owners
puts "name of bank acccount owners"
print_owner_names()
puts "\n"

##total cash in bank
total_cash = total_cash_in_bank()
puts "total in bank #{total_cash}"
puts "\n"

###last account owner

last_bank_owner = last_bank_account_holder()
puts "last bank account owner is #{last_bank_owner}"
puts "\n"

###average bank account value

average_balance = average_account_value()
puts "average ballance of acoounts is #{average_balance}"
puts "\n"

###total cash in business accounts

business_account_total = total_cash_in_bank("business")
puts "total ballence of business accounts is #{business_account_total}"
puts "\n"

###holder of largest bank account

largest_account = holder_of_largest_account
puts "the holder of the largest account ballance is #{largest_account}"
puts "\n"

###holder of largest personal account

largest_personal_account = largest_personal()
  puts "largest personal account holder is: #{largest_personal_account}"


###any other functionality you want to add.

new_account = create_new_account
puts "new account added #{new_account}"
puts "\n"