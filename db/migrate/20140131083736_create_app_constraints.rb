class CreateAppConstraints < ActiveRecord::Migration
  def change
    create_table :app_constraints do |t|
      t.string :description, unique: true

      t.timestamps
    end
  end
end
