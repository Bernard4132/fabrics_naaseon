class AddPaidToProductorders < ActiveRecord::Migration[5.0]
  def change
    add_column :productorders, :paid, :boolean, :default => false
  end
end
