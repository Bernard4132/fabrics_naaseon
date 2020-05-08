class AddFabpriceToFabrics < ActiveRecord::Migration[5.0]
  def change
    add_column :fabrics, :fabprice, :integer
  end
end
