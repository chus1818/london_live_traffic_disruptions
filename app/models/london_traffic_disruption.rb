class LondonTrafficDisruption < ActiveRecord::Base
  serialize :cause_area, Hash
end
