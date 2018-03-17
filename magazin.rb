class Magazin
  @@allFlowers = []
  def initialize flowers = ["Romashka", "Troyanda", "Tulpan", "Buzok", "Orhideya"]
  #massiv imen
    5.times do |i|
      @@allFlowers << RealFlower.new(flowers[i], rand(20)+10)
      @@allFlowers << ArtificialFlower.new(flowers[i], rand(20)+10)
    end
  end
  def self.printAllFlowers
    puts "You should choose from these flowers"
      @@allFlowers.each do |obj|
        puts obj
      end
      @@allFlowers
  end
  def self.check name
    true if @@allFlowers.collect{|obj| obj.name}.include?(name)

  end
  def self.returnBucketPrice order
    #perevirka na nayvnist u bazi mae bytu tyt
    flower = @@allFlowers.find {|obj| obj if obj.name == order.name &&  obj.type == order.type }
    price = flower.price*order.ammount
    primaryCost = price
    puts "Flowers cost: #{price}"
    if order.special.include?("D")
      price += Delivery.additionalCost primaryCost
      puts "You have chosen delivery. Total cost: #{price}"
    end
    if order.special.include?("P")
      price += Package.additionalCost primaryCost
      puts "You have chosen package. Total cost: #{price}"
    end
    price
  end

end
