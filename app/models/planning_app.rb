class PlanningApp < ActiveRecord::Base

  validates :reference, presence: true, uniqueness: true

  search_syntax do # for dusen 'Google-like' search
    search_by :text do |scope, phrases|
      columns = [:description]
      scope.where_like(columns => phrases)
    end
  end

end # of class
