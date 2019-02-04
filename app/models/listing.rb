class Listing
  attr_reader :city
  @@all = []

  def initialize(city:)
    @city = city
    @@all << self
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    instance = self.trips
    instance.collect { |trip| trip.guest }
  end

  def trip_count
    self.trips.length
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city_name:)
    self.all.select { |listing| listing.city == city_name}
  end

  def self.most_popular
    highest_listing = nil
    self.all.each do |current_listing|
      if highest_listing == nil || current_listing.trip_count > highest_listing.trip_count
        highest_listing = current_listing
      end
    end

    return highest_listing
  end

end
