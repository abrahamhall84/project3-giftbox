# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


gifter1 = Gifter.create(first_name:'Bob', last_name: 'Hoskins', email: 'bobhoskins@email.com', address: '123 main street', username: 'bobbyh', password: 'pass123')
gifter2 = Gifter.create(first_name:'Becky', last_name: 'Slecky', email: 'beckyslecky@email.com', address: '123 market street', username: 'beckysleck', password: '123pass')
gifter3 = Gifter.create(first_name:'Vail', last_name: 'Grail', email: 'vailgrail@email.com', address: '123 broad street', username: 'vgrail', password: 'pass890')
gifter4 = Gifter.create(first_name:'George', last_name: 'Porge', email: 'gporge@email.com', address: '123 new street', username: 'gporgey', password: '890pass')
gifter5 = Gifter.create(first_name:'Bill', last_name: 'Sil', email: 'billsil@email.com', address: '123 old street', username: 'sillybilly', password: 'passabc')

giftee1 = Giftee.create(first_name:'June', last_name: 'Blume', email: 'juneblume@email.com', address: '123 down street', username: 'juneb', password: 'pass123')
giftee2 = Giftee.create(first_name:'Mike', last_name: 'Bikes', email: 'mikeyb@email.com', address: '123 up street', username: 'mikeybikey', password: 'pass123')
giftee3 = Giftee.create(first_name:'Jerry', last_name: 'Ferry', email: 'jerfer@email.com', address: '21 jump street', username: 'jerfer', password: 'pass123')
giftee4 = Giftee.create(first_name:'Jenny', last_name: 'Penny', email: 'jpenny@email.com', address: '123 side street', username: 'jpenny', password: 'pass123')
giftee5 = Giftee.create(first_name:'Andrew', last_name: 'Pandrew', email: 'andypandy@email.com', address: '123 abc street', username: 'andpand', password: 'pass123')

Item.create(product: 'apples', quantity: '4', pick_up_time: 'a', giftee_id:  giftee1.id)
Item.create(product: 'apples', quantity: '36', drop_off_time: 'c', gifter_id: gifter3.id)
Item.create(product: 'oranges', quantity: '48', drop_off_time: 'd', gifter_id: gifter4.id)
Item.create(product: 'oranges', quantity: '6', pick_up_time: 'b', giftee_id: giftee3.id)
Item.create(product: 'lemons', quantity: '32', drop_off_time: 'c', gifter_id: gifter5.id)
Item.create(product: 'lemons', quantity: '8', pick_up_time: 'a', giftee_id: giftee4.id)