class Dog

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        
        self.save
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each { |dog|
            puts dog.name
        }
    end

    def save
        @@all << self
    end
end