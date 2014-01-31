class AddStatusToPlanningApps < ActiveRecord::Migration

  def change
    add_reference :planning_apps, :app_status, index: true
    add_foreign_key(:planning_apps, :app_statuses)
  end

end
