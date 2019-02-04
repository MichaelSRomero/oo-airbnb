class Trip
  attr_accessor :guest, :listing, :duration
  @@all = []

  def initialize(attributes)
    attributes.each { |attr_key, value| send("#{attr_key}=", value) }
    @@all << self
  end

  def self.all
    @@all
  end
end
