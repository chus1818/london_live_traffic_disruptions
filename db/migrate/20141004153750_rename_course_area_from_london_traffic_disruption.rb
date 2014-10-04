class RenameCourseAreaFromLondonTrafficDisruption < ActiveRecord::Migration
  def change
    rename_column :london_traffic_disruptions, :course_area, :cause_area
  end
end
