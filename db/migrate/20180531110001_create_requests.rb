class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :phonenumber
      t.string :paymentmethod
      t.string :deliverydet
      t.integer :fabric_id

      t.timestamps
    end
  end
end
