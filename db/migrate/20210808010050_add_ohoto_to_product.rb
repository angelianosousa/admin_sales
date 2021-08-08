class AddOhotoToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :photo, :string
  end
end
