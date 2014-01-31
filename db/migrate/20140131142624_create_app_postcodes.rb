class CreateAppPostcodes < ActiveRecord::Migration
  def change
    create_table :app_postcodes do |t|
      t.string :code, unique: true

      t.timestamps
    end
    add_reference :planning_apps, :app_postcodes, index: true
  end
end
