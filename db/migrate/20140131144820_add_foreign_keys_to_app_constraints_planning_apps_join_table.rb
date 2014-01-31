class AddForeignKeysToAppConstraintsPlanningAppsJoinTable < ActiveRecord::Migration

  def change
    add_foreign_key(:app_constraints_planning_apps, :app_constraints)
    add_foreign_key(:app_constraints_planning_apps, :planning_apps)
  end

end
