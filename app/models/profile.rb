class Profile < ActiveRecord::Base
  # i like the use of this has_one association, nice to do this to circumvent customizing the devise model
  has_many :scores, dependent: :destroy
  belongs_to :user

end
