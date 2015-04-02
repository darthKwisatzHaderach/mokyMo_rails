class AddDeletedAt < ActiveRecord::Migration
  def change
    add_column :projects, :deleted_at, :datetime
    add_index :projects, :deleted_at
    add_column :components, :deleted_at, :datetime
    add_index :components, :deleted_at
    add_column :suites, :deleted_at, :datetime
    add_index :suites, :deleted_at
    add_column :check_lists, :deleted_at, :datetime
    add_index :check_lists, :deleted_at
    add_column :test_objects, :deleted_at, :datetime
    add_index :test_objects, :deleted_at
    add_column :results, :deleted_at, :datetime
    add_index :results, :deleted_at
    add_column :executions, :deleted_at, :datetime
    add_index :executions, :deleted_at
    add_column :execution_types, :deleted_at, :datetime
    add_index :execution_types, :deleted_at
  end
end
