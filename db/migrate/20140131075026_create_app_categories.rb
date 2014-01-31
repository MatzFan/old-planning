class CreateAppCategories < ActiveRecord::Migration
  def change
    create_table :app_categories do |t|
      t.string :code, unique: true
      t.string :description

      t.timestamps
    end
    add_reference :planning_apps, :app_category, index: true
  end
end
