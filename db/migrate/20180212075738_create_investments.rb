class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :name
      t.float :amount
      t.integer :month
      t.references :basicpay, index: true, foreign_key: true
      t.float :total

      t.timestamps null: false
    end
  end
end
