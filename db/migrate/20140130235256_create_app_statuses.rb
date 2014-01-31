class CreateAppStatuses < ActiveRecord::Migration
  def change
    create_table :app_statuses do |t|
      t.string :description, unique: true

      t.timestamps
    end
    add_reference :planning_apps, :app_status, index: true
  end
end
