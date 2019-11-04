class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :street
      t.string :city
      t.string :postalcode

      t.timestamps
    end
  end
end
