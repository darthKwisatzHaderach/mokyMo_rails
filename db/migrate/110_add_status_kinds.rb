class AddStatusKinds < ActiveRecord::Migration
  def change
  	create_table :status_kinds do |t|
      t.string :name
    end
  end
end
