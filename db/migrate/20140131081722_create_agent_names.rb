class CreateAgentNames < ActiveRecord::Migration
  def change
    create_table :agent_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
