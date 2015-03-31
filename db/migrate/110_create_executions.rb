class CreateExecutions < ActiveRecord::Migration
  def change
    create_table :executions do |t|
      t.belongs_to :test_object
      t.belongs_to :execution_types
      t.string :status
      t.text :comment
      t.timestamps
    end
  end
end
