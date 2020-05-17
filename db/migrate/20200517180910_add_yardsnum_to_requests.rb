class AddYardsnumToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :yards, :integer
  end
end
