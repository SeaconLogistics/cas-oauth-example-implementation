class AddCustomerNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :customer_number, :string
  end
end
