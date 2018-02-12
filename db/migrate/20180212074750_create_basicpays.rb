class CreateBasicpays < ActiveRecord::Migration
  def change
    create_table :basicpays do |t|
      t.float :salary

      t.timestamps null: false
    end
  end
end
