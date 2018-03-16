class Client
  attr_reader :name, :address
  def initialize name, address
    @name = name
    @address = address
  end

  def test
    puts self.class
  end
end
