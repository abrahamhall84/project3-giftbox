class RemoveAdressFromGifter < ActiveRecord::Migration
  def change
    remove_column :gifters, :adress, :text
  end
end
