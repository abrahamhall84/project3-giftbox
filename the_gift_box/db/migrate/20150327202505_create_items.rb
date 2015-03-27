class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :product
      t.integer :quantity
      t.string :pick_up_time
      t.string :drop_off_time
      t.integer :gifter_id
      t.integer :giftee_id

      t.timestamps null: false
    end
  end
end
