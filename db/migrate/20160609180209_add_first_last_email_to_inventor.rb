class AddFirstLastEmailToInventor < ActiveRecord::Migration
  def change
    add_column :inventors, :first_name, :string
    add_column :inventors, :last_name, :string
    add_column :inventors, :email, :string
  end
end
