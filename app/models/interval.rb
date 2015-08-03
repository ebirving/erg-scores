class Interval < ActiveRecord::Base
  belongs_to :workout
  has_many :scores
end
