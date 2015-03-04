class CreateCurrentStates < ActiveRecord::Migration
  def change
    create_table :current_states do |t|
      t.integer :project
      t.integer :component
    end
  end
end
