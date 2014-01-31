class AddForeignKeysToPlanningApps < ActiveRecord::Migration

  def change
    add_foreign_key(:planning_apps, :app_statuses)
    add_foreign_key(:planning_apps, :officers)
    add_foreign_key(:planning_apps, :app_postcodes)
    add_foreign_key(:planning_apps, :agent_names)
    add_foreign_key(:planning_apps, :app_roads)
    add_foreign_key(:planning_apps, :app_categories)
  end

end
