class AddCtypeToFabrics < ActiveRecord::Migration[5.0]
  def change
    add_column :fabrics, :ctype, :string
  end
end
