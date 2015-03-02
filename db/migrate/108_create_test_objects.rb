class CreateTestObjects < ActiveRecord::Migration
  def change
    create_table :test_objects do |t|
      t.string :name
      t.string :version
      t.belongs_to :project
    end
  end
end
