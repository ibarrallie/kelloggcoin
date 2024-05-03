# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]
#empty arrays like we did for the poker one, pushing into them to create the final number
# for transaction in blockchain
account_totals = Hash.new
# for transaction in blockchain
for transaction in blockchain
  to_user = transaction["to_user"]
  account_totals[to_user] = 0
  from_user = transaction["from_user"]
  account_totals[from_user] = 0
end

for transaction in blockchain
  to_user = transaction["to_user"]
  account_totals[to_user] = account_totals[to_user] + transaction["amount"]
  from_user = transaction["from_user"]
  account_totals[from_user] = account_totals[from_user] - transaction["amount"]
end
puts account_totals



# ben = []
# brian = []
# evan = []
# anthony = []
# for transaction in blockchain

#  #I just get the feeling i could do this cleaner as another loop, but I'm not 100% sure how
#   if transaction["to_user"] == "ben" 
#     ben.push(transaction["amount"])
#   end
#   if transaction["to_user"] == "brian"
#     brian.push(transaction["amount"])
#   end
#   if transaction["to_user"] == "evan"
#     evan.push(transaction["amount"])
#   end
#   if transaction["to_user"] == "anthony"
#     anthony.push(transaction["amount"])
#   end
#   if transaction["from_user"] == "ben"
#     ben.push((transaction["amount"])*-1)
#   end
#   if transaction["from_user"] == "brian"
#     brian.push((transaction["amount"])*-1)
#   end
#   if transaction["from_user"] == "evan"
#     evan.push((transaction["amount"])*-1)
#   end
#   if transaction["from_user"] == "anthony"
#     anthony.push((transaction["amount"])*-1)
#   end
# end
   
# puts "Ben, your total is #{(ben).sum}"
# puts "Brian, your total is #{(brian).sum}"
# puts "Evan, your total is #{(evan).sum}"
# puts "Anthony, your total is #{(anthony).sum}"
