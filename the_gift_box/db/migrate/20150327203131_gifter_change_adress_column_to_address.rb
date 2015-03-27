class GifterChangeAdressColumnToAddress < ActiveRecord::Migration
  def change
    rename_column :gifter, adress:text, address:text
  end
end
