class CreateJoinTableAppConstraintsPlanningApps < ActiveRecord::Migration

  def change
    create_join_table :app_constraints, :planning_apps
  end

end
