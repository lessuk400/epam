class Services
  @@package_cost = 0.3
  @@delivery_cost = 0.2
  @@free_service = 500
  def self.additionalCost primaryCost
    if primaryCost > @@free_service
      puts "All services for your delivery will be for free"
      return 0
    end
    1
  end
  def setPackageCost new_cost
    @@package_cost = new_cost
  end

  def setDeliveryCost new_cost
    @@delivery_cost = new_cost
  end

  def setFreeService new_free_service
    @@free_service = new_free_service
  end

end


class Delivery < Services
  def self.additionalCost primaryCost
    super(primaryCost) * primaryCost * @@delivery_cost
  end
end

class Package < Services
  def self.additionalCost primaryCost
    super(primaryCost) * primaryCost * @@package_cost
  end
end
