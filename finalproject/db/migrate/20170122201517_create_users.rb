class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :hotelconfirm
      t.integer :flightconfirm
      t.string :address
      t.string :birthday

      t.timestamp
    end
  end
end
