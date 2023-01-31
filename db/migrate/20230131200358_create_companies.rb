class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string "name" #give this table a column of type string with name "name"
      t.string "city" #these fields come from the crm-schema.sql
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end

#command rails db:migrate
#once you run this, you can't change anything