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

    @@allFlowers.find {|obj| obj.type == order.type && obj.name == obj.name}

  end
end
