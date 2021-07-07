class Dog
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    save
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
   puts @@all.map{ |dog| dog.name }
    # @@all.each do |name|
    #   puts name
    # end
  end

end
