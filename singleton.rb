# frozen_string_literal: true

# SINGLETON
class MySingleton
  @instance = new

  private_class_method :new

  class << self
    attr_reader :instance
  end

  def some_business_logic; end
end

s1 = MySingleton.instance
s2 = MySingleton.instance

if s1.equal?(s2)
  print 'Singleton works, both variables contain the same instance.'
else
  print 'Singleton failed, variables contain different instances.'
end
