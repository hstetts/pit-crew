class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.boolean :phone_type
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :address_type
      t.string :preferred_contact
      t.boolean :marketing_opt
      t.boolean :existing_customer, default: false

      t.timestamps
    end
  end
end
