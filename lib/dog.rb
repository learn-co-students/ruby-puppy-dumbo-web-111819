require 'pry'
class Dog

    attr_reader
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end
    def self.clear_all
        @@all = []
    end

    def self.print_all
        self.all.each { |dog| puts dog.name }
        # binding.pry
    end
    
    def save
        @@all << self
    end
    
    
end
# a1 = Dog.new("a")
# a2 = Dog.new("b")
# binding.pry
# 0