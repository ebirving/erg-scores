class Workout < ActiveRecord::Base
  belongs_to :rower
  has_many :scores, dependent: :destroy
end
