class UserKarmaPoints < ActiveRecord::Base
  belongs_to :user
  belongs_to :karma_points

end


