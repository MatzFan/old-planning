class AppStatus < ActiveRecord::Base

  has_many :planning_apps

  validates :description, uniqueness: true

end
