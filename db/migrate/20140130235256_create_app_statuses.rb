class CreateAppStatuses < ActiveRecord::Migration
  def change
    create_table :app_statuses do |t|
      t.string :description, unique: true

      t.timestamps
    end
  end
end
