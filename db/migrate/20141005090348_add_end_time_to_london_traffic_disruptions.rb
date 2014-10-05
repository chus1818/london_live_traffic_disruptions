class AddEndTimeToLondonTrafficDisruptions < ActiveRecord::Migration
  def change
    add_column :london_traffic_disruptions, :end_time, :datetime
  end
end
