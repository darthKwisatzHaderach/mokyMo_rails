class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :status_kind
      t.text :comment
      t.belongs_to :execution
      t.belongs_to :check_list
      t.timestamps
    end
  end
end
