class CreateKites < ActiveRecord::Migration
  def change
    create_table :kites do |t|
      t.string :name
      t.string :origin
      t.string :color
      t.string :style
      t.integer :quantity
      t.text :additional_information

      t.timestamps null: false
    end
  end
end
