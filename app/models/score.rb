class Score < ActiveRecord::Base
  belongs_to :interval
  belongs_to :rower
end
