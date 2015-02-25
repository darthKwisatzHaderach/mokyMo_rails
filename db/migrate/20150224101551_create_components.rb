class CreateComponent < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.belongs_to :project
    end
    add_column :suites, :component_id, :integer
  end
end
