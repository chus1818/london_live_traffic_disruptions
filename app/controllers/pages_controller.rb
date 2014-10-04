class PagesController < ApplicationController
  def main
    @disruptions = LondonTrafficDisruption.active

    @markers = Gmaps4rails.build_markers(@disruptions) do |disruption, marker|
      marker.lat disruption.latitude
      marker.lng disruption.longitude
    end
  end
end
