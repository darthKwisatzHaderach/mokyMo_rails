class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.text :description
      t.belongs_to :project
    end
  end
end
