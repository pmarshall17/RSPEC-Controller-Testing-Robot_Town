class AddSerialNumberToRobot < ActiveRecord::Migration
  def change
    add_column :robots, :serial_number, :string
  end
end
