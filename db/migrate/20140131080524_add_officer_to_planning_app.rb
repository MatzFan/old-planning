class AddOfficerToPlanningApp < ActiveRecord::Migration

  def change
    add_reference :planning_apps, :officer, index: true
    add_foreign_key(:planning_apps, :officers)
  end

end
