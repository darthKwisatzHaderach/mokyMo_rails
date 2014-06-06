class AddSuiteId < ActiveRecord::Migration
  def change
  	add_column :cases, :suite_id, :integer
  end
end
