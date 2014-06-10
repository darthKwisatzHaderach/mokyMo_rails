class CreateCaseSteps < ActiveRecord::Migration
  def change
    create_table :case_steps do |t|
      t.text :step
      t.text :step_result
      t.integer :case_id
      t.timestamps
    end
  end
end
