class AddCaseProperties < ActiveRecord::Migration
  def change
  	add_column :cases, :title, :string
  	add_column :cases, :date, :date_time
  	add_column :cases, :priority, :string
  	add_column :cases, :planned_duration, :integer
  	add_column :cases, :tags, :string
  	add_column :cases, :objective, :text
  	add_column :cases, :test_data, :text
  	add_column :cases, :preconditions, :text
  	add_column :cases, :comment, :text
  end
end
