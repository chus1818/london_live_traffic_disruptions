class LondonTrafficDisruption < ActiveRecord::Base
  serialize :cause_area, Hash

  scope :active, -> { where status: ['Active', 'Active Long Term', 'Recurring Works'] }

  def cause_area
    read_attribute(:cause_area).normalize  
  end

  def longitude
    coordinates[0]
  end

  def latitude
    coordinates[1]
  end

  def coordinates
    @coordinates ||= cause_area[:display_point][:point][:coordinates_ll].split(',')
  end
end
