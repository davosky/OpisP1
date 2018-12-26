class CreateTariffs < ActiveRecord::Migration
  def change
    create_table :tariffs do |t|
      t.integer :name
      t.references :category, index: true, foreign_key: true
      t.integer :position
      t.string :typology
      t.decimal :amount, precision: 8, scale: 2, default: 0

      t.timestamps null: false
    end
  end
end
