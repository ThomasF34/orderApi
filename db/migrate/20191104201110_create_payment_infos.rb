class CreatePaymentInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :payment_infos do |t|
      t.string :number
      t.string :expire_date
      t.string :cvv
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
