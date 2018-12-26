class CreateCancellations < ActiveRecord::Migration
  def change
    create_table :cancellations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
