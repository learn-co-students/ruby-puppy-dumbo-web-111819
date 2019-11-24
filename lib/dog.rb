# Add your code here
class Dog
    attr_reader :name
    @@all=[]

    def initialize(name)
        @name=name
        save
    end
    
    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end
    
    def self.print_all
        self.all.each do |each_instance|
            puts each_instance.name
        end
    end
    
    def save
        @@all << self
    end

end