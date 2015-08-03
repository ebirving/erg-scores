class Score < ActiveRecord::Base
  belongs_to :rower
  belongs_to :workout
end
