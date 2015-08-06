class Score < ActiveRecord::Base
  belongs_to :profile
  belongs_to :workout
end
