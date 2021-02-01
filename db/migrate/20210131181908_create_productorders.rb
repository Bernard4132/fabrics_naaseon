class CreateProductorders < ActiveRecord::Migration[5.0]
  def change
    create_table :productorders do |t|
      t.integer :fabric_id
      t.integer :user_id
      t.integer :yardsnumber
      t.string :yardtype
      t.string :sewornot

      t.timestamps
    end
  end
end
