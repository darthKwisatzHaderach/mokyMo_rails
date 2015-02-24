class CreateCurrentStates < ActiveRecord::Migration
  def change
    create_table :current_states do |t|
      t.string :project
      t.string :component
    end
  end
end
