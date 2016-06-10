class AddServiceDateAndPassphraseToRobots < ActiveRecord::Migration
  def change
    add_column :robots, :service_date, :date
    add_column :robots, :passphrase, :string
  end
end
