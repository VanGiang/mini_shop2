class AddDetailToProduct < ActiveRecord::Migration
  def change
    add_column :products, :detail, :string
  end
end
