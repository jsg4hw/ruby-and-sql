# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************


# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Lucho"
new_salesperson["last_name"] = "Cerro"
new_salesperson["email"] = "lucho@lucho.com"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Sarah"
new_salesperson["last_name"] = "Rogers"
new_salesperson["email"] = "sarah@lucho.com"
new_salesperson.save

# 3. write code to display how many salespeople rows are in the database

puts "Salespeople: #{Salesperson.all.count}"
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

sarah = Salesperson.find_by({"first_name" => "Sarah"})
# puts sarah.inspect 
sarah["email"] = "sarah@sarah.com"
sarah.save
# puts sarah.inspect

# lucho 

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

# puts "#{sarah.first_name} #{sarah.last_name}"
all_salespeople = Salesperson.all
# puts all_salespeople.inspect  #is an array

for person in all_salespeople
    # Salesperson.all.count
    first_name = person["first_name"]
    last_name = person["last_name"]
    email = person["email"]
    puts "#{first_name} #{last_name} (#{email})"

end
