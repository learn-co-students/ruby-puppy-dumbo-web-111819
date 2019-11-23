require 'pry'

class Dog

attr_accessor :name

  @@all = []

  def initialize(name)
  @name = name
  save
  # binding.pry
  end

  def self.all
    @@all
    # binding.pry
  end

  def self.clear_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.print_all
   # binding.pry
   @@all.each do |name|
     puts name.name
   end
 end
end
