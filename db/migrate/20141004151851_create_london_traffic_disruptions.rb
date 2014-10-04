class CreateLondonTrafficDisruptions < ActiveRecord::Migration
  def change
    create_table :london_traffic_disruptions do |t|
      t.integer :ltd_id
      t.string :status
      t.string :severity
      t.string :level_of_interest
      t.string :category
      t.string :sub_category
      t.datetime :start_time
      t.string :location
      t.string :corridor
      t.text :comments
      t.text :current_update
      t.datetime :remark_time
      t.datetime :last_mod_time
      t.text :course_area

      t.timestamps
    end
  end
end
