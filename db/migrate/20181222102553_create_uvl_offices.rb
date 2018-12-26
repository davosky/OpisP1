class CreateUvlOffices < ActiveRecord::Migration
  def change
    create_table :uvl_offices do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
