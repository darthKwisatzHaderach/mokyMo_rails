class CreateCurrentStates < ActiveRecord::Migration
  def change
    create_table :current_states do |t|
      t.belongs_to :project
      t.belongs_to :component
    end
  end
end
