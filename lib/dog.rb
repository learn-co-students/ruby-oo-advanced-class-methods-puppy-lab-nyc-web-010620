class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end 

    # this class method acts as our direct interface to the `@@all` variable
    def self.all
        @@all
    end 

    # iterates over all of the individual dogs stored in the `@@all` array and `puts` out their name to the terminal
    def self.print_all
        dogs = self.all.each do |dog|
            puts dog.name 
        end 
        dogs 
    end 

    def self.clear_all
        self.all.clear 
    end 

    # Rather than pushing `self` into the `@@all` variable inside of
    # `#initialize`, we're extract this action into its own method. Call this method
    # `#save`. The method should handle the task of pushing `self` into `@@all`.
    #  Once written, update your code in `#initialize` so that it uses `#save`.
    def save
        @@all << self 
    end 

end 