class Profile < ActiveRecord::Base
  has_many :scores, dependent: :destroy
  belongs_to :user
end
