 require_relative "../lib/dog.rb"
 
   class Dog
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.create(name)
    dog = self.new
    dog.name = name
    @@all << dog
  end
 
  def self.print_all
    self.all.each{|person| puts "#{dog.name}"}
  end
end
 
Dog.create("Pluto")
Person.create("Fido")
Dog.create("Maddy")
 
Person.print_all
   