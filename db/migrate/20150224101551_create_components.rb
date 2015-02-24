class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.integer :project_id
    end
  end
end
