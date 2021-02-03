class AddGenderToProductorders < ActiveRecord::Migration[5.0]
  def change
    add_column :productorders, :gender, :string
  end
end
