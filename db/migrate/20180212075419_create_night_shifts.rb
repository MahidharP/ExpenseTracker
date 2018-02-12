class CreateNightShifts < ActiveRecord::Migration
  def change
    create_table :night_shifts do |t|
      t.string :date
      t.float :claim
      t.references :basicpay, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
