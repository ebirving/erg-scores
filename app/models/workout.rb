class Workout < ActiveRecord::Base
  has_many :intervals
  has_many :scores, through :intervals
end
