class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :alias
      t.string :text
      t.string :group      
      t.timestamps
    end
  end
end
