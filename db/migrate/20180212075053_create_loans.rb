class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :name
      t.float :bill
      t.integer :month
      t.references :basicpay, index: true, foreign_key: true
      t.float :balance

      t.timestamps null: false
    end
  end
end
