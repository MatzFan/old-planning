class AddAppCategoryToPlanningApp < ActiveRecord::Migration

  def change
    add_reference :planning_apps, :app_category, index: true
    add_foreign_key(:planning_apps, :app_categories)
  end

end
