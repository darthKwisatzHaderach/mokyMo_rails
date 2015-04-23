class CreateExecutionTypes < ActiveRecord::Migration
  def change
    create_table :execution_types do |t|
      t.string :name      
    end
  end
end
