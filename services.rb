class Services
  @@package_cost = 0.3
  @@delivery_cost = 0.2
  
  def setPackageCost new_cost
    @@package_cost = new_cost
  end

  def setDeliveryCost new_cost
    @@delivery_cost = new_cost
  end

end

class Package < Services
  def self.additionalCost primaryCost
    primaryCost += primaryCost * @@package_cost
  end
end

class Delivery < Services
  def self.additionalCost primaryCost
    primaryCost += primaryCost * @@delivery_cost
  end
end
