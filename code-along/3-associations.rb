# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database


# 1. insert new rows in the contacts table with relationship to a company

puts "There are #{Company.all.count} companies"
puts "There are #{Contact.all.count} contacts"

apple = Company.find_by({"name" => "Apple"})
amazon = Company.find_by({"name" => "Amazon"})

new_contact = Contact.new
new_contact["first_name"] = "Tim"
new_contact["last_name"] = "Cook"
new_contact["email"] = "tim.cook@apple.com"
new_contact["company_id"] = apple["id"]
new_contact.save

new_contact = Contact.new
new_contact["first_name"] = "Jeff"
new_contact["last_name"] = "Bezos"
new_contact["email"] = "jeff@amazon.com"
new_contact["company_id"] = amazon["id"]
new_contact.save

# 2. How many contacts work at Apple?
apple_contacts = Contact.where({"company_id" => apple["id"]})

if apple_contacts.all.count == 1
    puts "There is #{apple_contacts.all.count} contact at Apple"

else 
    puts "There are #{apple_contacts.all.count} contacts at Apple"

end
# 3. What is the full name of each contact who works at Apple?
