class AddMalepriceToFabrics < ActiveRecord::Migration[5.0]
  def change
    add_column :fabrics, :maleprice, :integer
  end
end
