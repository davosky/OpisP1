class CreateIncaReceipts < ActiveRecord::Migration
  def change
    create_table :inca_receipts do |t|
      t.references :inca_office, index: true, foreign_key: true
      t.string :customer_name
      t.string :customer_forname
      t.string :customer_birth_place
      t.date :customer_birth_date
      t.string :customer_fiscal_code
      t.string :customer_address
      t.string :customer_zip
      t.string :customer_city
      t.string :customer_province
      t.decimal :payment, precision: 8, scale: 2, default: 0
      t.references :payment_typology, index: true, foreign_key: true
      t.text :note
      t.references :cancellation, index: true, foreign_key: true
      t.string :cancellation_reason
      t.integer :name
      t.date :date
      t.references :user, index: true, foreign_key: true
      t.string :institute
      t.attachment :pdf

      t.timestamps null: false
    end
  end
end
