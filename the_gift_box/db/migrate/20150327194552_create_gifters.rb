class CreateGifters < ActiveRecord::Migration
  def change
    create_table :gifters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :adress
      t.string :phone
      t.string :username
      t.string :password
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
