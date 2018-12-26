class CreateWorkQualifies < ActiveRecord::Migration
  def change
    create_table :work_qualifies do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
