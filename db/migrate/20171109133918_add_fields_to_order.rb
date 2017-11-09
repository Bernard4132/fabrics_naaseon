class AddFieldsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :title, :string
    add_column :orders, :delivery, :string
    add_column :orders, :name, :string
    add_column :orders, :phone, :string
    add_column :orders, :email, :string
    add_column :orders, :fulfilled, :boolean, default: false
  end
end
