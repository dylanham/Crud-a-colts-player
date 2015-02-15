class CreateColts < ActiveRecord::Migration
  def change
    create_table :colts do |t|
      t.string :name
      t.integer :number
      t.string :position

      t.timestamps null: false
    end
  end
end
