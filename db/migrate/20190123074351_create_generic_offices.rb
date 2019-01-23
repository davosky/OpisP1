class CreateGenericOffices < ActiveRecord::Migration
  def change
    create_table :generic_offices do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
