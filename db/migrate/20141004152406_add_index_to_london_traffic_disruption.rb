class AddIndexToLondonTrafficDisruption < ActiveRecord::Migration
  def change
    add_index :london_traffic_disruptions, :ltd_id
  end
end
