require "pry"

class Dog 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.clear_all 
    @@all.clear
  end 
  
  def self.print_all
    @@all.each do |dog_objects|
      puts dog_objects.name
    end 
  end 
  
  def save
    @@all.push(self)
  end 
  
end 