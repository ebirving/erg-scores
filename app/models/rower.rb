class Rower < ActiveRecord::Base
  has_many :scores
  has_many :workouts, through: :scores
end
