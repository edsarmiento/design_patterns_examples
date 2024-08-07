# Define the product interfaces
  class Chair
    def sit_on
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
  
  class CoffeeTable
    def place_items
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
  
  class Sofa
    def lie_on
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
  
  # Concrete products for Victorian style
  class VictorianChair < Chair
    def sit_on
      puts 'Sitting on a Victorian chair'
    end
  end
  
  class VictorianCoffeeTable < CoffeeTable
    def place_items
      puts 'Placing items on a Victorian coffee table'
    end
  end
  
  class VictorianSofa < Sofa
    def lie_on
      puts 'Lying on a Victorian sofa'
    end
  end
  
  # Concrete products for Modern style
  class ModernChair < Chair
    def sit_on
      puts 'Sitting on a Modern chair'
    end
  end
  
  class ModernCoffeeTable < CoffeeTable
    def place_items
      puts 'Placing items on a Modern coffee table'
    end
  end
  
  class ModernSofa < Sofa
    def lie_on
      puts 'Lying on a Modern sofa'
    end
  end
  
  # Abstract factory interface
  class FurnitureFactory
    def create_chair
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  
    def create_coffee_table
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  
    def create_sofa
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
  
  # Concrete factory for Victorian furniture
  class VictorianFurnitureFactory < FurnitureFactory
    def create_chair
      VictorianChair.new
    end
  
    def create_coffee_table
      VictorianCoffeeTable.new
    end
  
    def create_sofa
      VictorianSofa.new
    end
  end
  
  # Concrete factory for Modern furniture
  class ModernFurnitureFactory < FurnitureFactory
    def create_chair
      ModernChair.new
    end
  
    def create_coffee_table
      ModernCoffeeTable.new
    end
  
    def create_sofa
      ModernSofa.new
    end
  end
  
  # Example usage
  def client_code(factory)
    chair = factory.create_chair
    coffee_table = factory.create_coffee_table
    sofa = factory.create_sofa
  
    chair.sit_on
    coffee_table.place_items
    sofa.lie_on
  end
  
  # Using the Victorian furniture factory
  puts "Victorian Furniture:"
  victorian_factory = VictorianFurnitureFactory.new
  client_code(victorian_factory)
  
  # Using the Modern furniture factory
  puts "\nModern Furniture:"
  modern_factory = ModernFurnitureFactory.new
  client_code(modern_factory)
