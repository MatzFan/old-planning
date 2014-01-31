class CreateAgentNames < ActiveRecord::Migration
  def change
    create_table :agent_names do |t|
      t.string :name, unique: true

      t.timestamps
    end
    add_reference :planning_apps, :agent_name, index: true
  end
end
