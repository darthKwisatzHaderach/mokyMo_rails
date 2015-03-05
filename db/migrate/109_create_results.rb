class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.boolean :results
      t.text :comment
      t.belongs_to :execution
      t.belongs_to :check_list
      t.timestamps
    end
  end
end
