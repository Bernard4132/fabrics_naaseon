class AddGenderToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :gender, :string
  end
end
