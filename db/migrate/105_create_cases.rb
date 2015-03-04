class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.string :priority
      t.string :tags
      t.text :objective
      t.text :test_data
      t.text :preconditions
      t.text :comment
      t.belongs_to :suite
      t.timestamps
    end
  end
end
