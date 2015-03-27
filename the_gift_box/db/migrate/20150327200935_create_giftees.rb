class CreateGiftees < ActiveRecord::Migration
  def change
    create_table :giftees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :address
      t.string :phone
      t.string :username
      t.string :password
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
