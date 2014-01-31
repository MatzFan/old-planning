class CreateAppRoads < ActiveRecord::Migration
  def change
    create_table :app_roads do |t|
      t.string :name, unique: true

      t.timestamps
    end
    add_reference :planning_apps, :app_road, index: true
  end
end
