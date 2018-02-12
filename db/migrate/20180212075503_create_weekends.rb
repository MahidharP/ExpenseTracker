class CreateWeekends < ActiveRecord::Migration
  def change
    create_table :weekends do |t|
      t.string :date
      t.float :claim

      t.timestamps null: false
    end
  end
end
