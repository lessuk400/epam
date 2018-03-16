class Order
  attr_reader :type, :name, :ammount, :special
  def initialize(client_obj)# peredavatu oject
    @client = client_obj.name
    @address = client_obj.address
  end

  def makeOrder
    Magazin.printAllFlowers
    puts "Type of flowers(R/A)"
    answer = gets.chomp
    if answer == "R"
      @type = 'real'
    else
      @type = 'artificial'
    end

    puts "Your choice is: "
    answer = gets.chomp
    until(Magazin.check(answer))
      puts "Wrong answer. Try again"
      answer = gets.chomp
    end
    @name = answer
    puts "Enter ammount: "
    ammount = gets.to_i
    until(ammount >= 0)
      puts "Wrong answer. Try again"
      @ammount = gets.to_i
    end
    puts "Special services(P - package, D - delivery. Use comma to separate(P, D))"
    @special = gets.chomp
    @price = Magazin.returnBucketPrice self
    puts "Price is: #{@price}"
  end

  def test
    puts self.class
  end
end