class PlanningApp < ActiveRecord::Base

  belongs_to :app_status

  validates :reference, presence: true, uniqueness: true

  def details_url
    "https://www.mygov.je//Planning/Pages/PlanningApplicationDetail.aspx?s=1&r=#{reference}"
  end

  search_syntax do # for dusen 'Google-like' search
    search_by :text do |scope, phrases|
      columns = [:description]
      scope.where_like(columns => phrases)
    end
  end

end # of class
