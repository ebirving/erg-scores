class Workout < ActiveRecord::Base
  # was wondering if you wanted to have a has many through relationship between profiles and workouts
  # u kind of already have a join table through scores. We can use that associations so that
  # profiles can have many workouts and vice versa.
  has_many :scores, dependent: :destroy
end
