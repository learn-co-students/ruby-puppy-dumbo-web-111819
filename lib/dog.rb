class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        all_dogs = @@all.map{ |dog| dog.name}
            puts all_dogs
    end
    
    def save
        @@all << self
    end
end