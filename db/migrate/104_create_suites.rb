class CreateSuites < ActiveRecord::Migration
  def change
    create_table :suites do |t|
      t.string :title
      t.string :priority
      t.string :tags
      t.belongs_to :component
      t.timestamps
    end
  end
end
