class CreateExecutions < ActiveRecord::Migration
  def change
    create_table :executions do |t|
      t.belongs_to :test_object
      t.belongs_to :execution_types
      t.string :operating_system
      t.string :operating_system_version
      t.string :browser
      t.string :browser_version
      t.string :status
      t.string :tester
      t.text :comment
      t.timestamps
    end
  end
end
