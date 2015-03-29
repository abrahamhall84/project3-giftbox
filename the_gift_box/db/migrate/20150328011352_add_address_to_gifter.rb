class AddAddressToGifter < ActiveRecord::Migration
  def change
    add_column :gifters, :address, :text
  end
end
