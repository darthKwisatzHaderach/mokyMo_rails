class CreateSuites < ActiveRecord::Migration
  def change
    create_table :suites do |t|
      t.string :title
      t.datetime :datetime
      t.string :priority
      t.string :tags
      t.timestamps
    end
  end
end
