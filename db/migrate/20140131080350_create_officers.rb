class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :name, unique: true

      t.timestamps
    end
    add_reference :planning_apps, :officer, index: true
  end
end
