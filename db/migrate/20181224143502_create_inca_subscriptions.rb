class CreateIncaSubscriptions < ActiveRecord::Migration
  def change
    create_table :inca_subscriptions do |t|
      t.references :inca_office, index: true, foreign_key: true
      t.references :subscription_typology, index: true, foreign_key: true
      t.string :customer_name
      t.string :customer_forname
      t.references :sex, index: true, foreign_key: true
      t.string :customer_birth_place
      t.date :customer_birth_date
      t.string :customer_fiscal_code
      t.string :customer_nationality
      t.string :customer_address
      t.string :customer_zip
      t.string :customer_city
      t.string :customer_province
      t.string :customer_phone
      t.string :customer_mobile
      t.string :customer_email
      t.string :company_name
      t.string :company_address
      t.string :company_zip
      t.string :company_city
      t.string :company_province
      t.references :company_typology, index: true, foreign_key: true
      t.references :work_qualify, index: true, foreign_key: true
      t.references :work_level, index: true, foreign_key: true
      t.string :work_contract
      t.references :work_worker, index: true, foreign_key: true
      t.date :work_employee_date
      t.string :work_workplace
      t.decimal :payment, precision: 8, scale: 2, default: 0
      t.references :payment_typology, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :subscription_year, index: true, foreign_key: true
      t.references :inca_practise, index: true, foreign_key: true
      t.references :privacy_one, index: true, foreign_key: true
      t.references :privacy_two, index: true, foreign_key: true
      t.references :privacy_three, index: true, foreign_key: true
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
