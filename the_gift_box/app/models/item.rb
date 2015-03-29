class Item < ActiveRecord::Base
  belongs_to :gifter
  belongs_to :giftee

  validates :product, :quantity, presence: true
  
end
