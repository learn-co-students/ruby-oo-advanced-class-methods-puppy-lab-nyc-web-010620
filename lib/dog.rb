# Add your code here

class Dog
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each { |dog| puts dog.name }
    end

    

end