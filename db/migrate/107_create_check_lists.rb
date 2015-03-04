class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
      t.string :title
      t.string :priority
      t.string :tags
      t.text :description
      t.belongs_to :suite
      t.timestamps
    end
  end
end
