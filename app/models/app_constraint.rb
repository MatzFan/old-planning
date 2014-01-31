class AppConstraint < ActiveRecord::Base

  validates :description, uniqueness: true

end
