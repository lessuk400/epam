
require './client.rb'
load './order.rb'
load './magazin.rb'
load './flower.rb'
load './services.rb'

new_client = Client.new('Alex', 'random street')
new_client.test
Magazin.new
Magazin.printAllFlowers
new_order = Order.new(new_client)
new_order.makeOrder
puts "all is ok"
