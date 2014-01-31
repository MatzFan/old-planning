class CreateParishes < ActiveRecord::Migration
  def change
    create_table :parishes do |t|
      t.string :name, unique: true

      t.timestamps
    end
    add_reference :planning_apps, :parish, index: true
  end
end
