class CreateGenericSubscriptions < ActiveRecord::Migration
  def change
    create_table :generic_subscriptions do |t|
      t.integer :name
      t.integer :generic_office_id
      t.integer :subscription_typology_id
      t.string :customer_name
      t.string :customer_forname
      t.integer :sex_id
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
      t.integer :company_typology_id
      t.integer :work_qualify_id
      t.integer :work_level_id
      t.string :work_contract
      t.integer :work_worker_id
      t.date :work_employee_date
      t.string :work_workplace
      t.decimal :payment, precision: 8, scale: 2, default: 0
      t.integer :payment_typology_id
      t.integer :category_id
      t.integer :subscription_year_id
      t.integer :generic_practise_id
      t.integer :privacy_one_id
      t.integer :privacy_two_id
      t.integer :privacy_three_id
      t.text :note
      t.integer :cancellation_id
      t.string :cancellation_reason
      t.date :date
      t.integer :user_id
      t.integer :institute

      t.timestamps null: false
    end
  end
end
