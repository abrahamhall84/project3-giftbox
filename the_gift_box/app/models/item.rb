class Item < ActiveRecord::Base
  belongs to :gifter
  belongs to :giftee
  
end
