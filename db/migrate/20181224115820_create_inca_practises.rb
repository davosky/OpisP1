class CreateIncaPractises < ActiveRecord::Migration
  def change
    create_table :inca_practises do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
