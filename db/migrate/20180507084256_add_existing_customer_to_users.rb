class AddExistingCustomerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :existing_customer, :boolean
  end
end
