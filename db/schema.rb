# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181226145127) do

  create_table "cancellations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "company_typologies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inca_offices", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inca_practises", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inca_receipts", force: :cascade do |t|
    t.integer  "inca_office_id",       limit: 4
    t.string   "customer_name",        limit: 255
    t.string   "customer_forname",     limit: 255
    t.string   "customer_birth_place", limit: 255
    t.date     "customer_birth_date"
    t.string   "customer_fiscal_code", limit: 255
    t.string   "customer_address",     limit: 255
    t.string   "customer_zip",         limit: 255
    t.string   "customer_city",        limit: 255
    t.string   "customer_province",    limit: 255
    t.decimal  "payment",                            precision: 8, scale: 2, default: 0.0
    t.integer  "payment_typology_id",  limit: 4
    t.text     "note",                 limit: 65535
    t.integer  "cancellation_id",      limit: 4
    t.string   "cancellation_reason",  limit: 255
    t.integer  "name",                 limit: 4
    t.date     "date"
    t.integer  "user_id",              limit: 4
    t.string   "institute",            limit: 255
    t.string   "pdf_file_name",        limit: 255
    t.string   "pdf_content_type",     limit: 255
    t.integer  "pdf_file_size",        limit: 8
    t.datetime "pdf_updated_at"
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
  end

  add_index "inca_receipts", ["cancellation_id"], name: "index_inca_receipts_on_cancellation_id", using: :btree
  add_index "inca_receipts", ["inca_office_id"], name: "index_inca_receipts_on_inca_office_id", using: :btree
  add_index "inca_receipts", ["payment_typology_id"], name: "index_inca_receipts_on_payment_typology_id", using: :btree
  add_index "inca_receipts", ["user_id"], name: "index_inca_receipts_on_user_id", using: :btree

  create_table "inca_subscriptions", force: :cascade do |t|
    t.integer  "inca_office_id",           limit: 4
    t.integer  "subscription_typology_id", limit: 4
    t.string   "customer_name",            limit: 255
    t.string   "customer_forname",         limit: 255
    t.integer  "sex_id",                   limit: 4
    t.string   "customer_birth_place",     limit: 255
    t.date     "customer_birth_date"
    t.string   "customer_fiscal_code",     limit: 255
    t.string   "customer_nationality",     limit: 255
    t.string   "customer_address",         limit: 255
    t.string   "customer_zip",             limit: 255
    t.string   "customer_city",            limit: 255
    t.string   "customer_province",        limit: 255
    t.string   "customer_phone",           limit: 255
    t.string   "customer_mobile",          limit: 255
    t.string   "customer_email",           limit: 255
    t.string   "company_name",             limit: 255
    t.string   "company_address",          limit: 255
    t.string   "company_zip",              limit: 255
    t.string   "company_city",             limit: 255
    t.string   "company_province",         limit: 255
    t.integer  "company_typology_id",      limit: 4
    t.integer  "work_qualify_id",          limit: 4
    t.integer  "work_level_id",            limit: 4
    t.string   "work_contract",            limit: 255
    t.integer  "work_worker_id",           limit: 4
    t.date     "work_employee_date"
    t.string   "work_workplace",           limit: 255
    t.decimal  "payment",                                precision: 8, scale: 2, default: 0.0
    t.integer  "payment_typology_id",      limit: 4
    t.integer  "category_id",              limit: 4
    t.integer  "subscription_year_id",     limit: 4
    t.integer  "inca_practise_id",         limit: 4
    t.integer  "privacy_one_id",           limit: 4
    t.integer  "privacy_two_id",           limit: 4
    t.integer  "privacy_three_id",         limit: 4
    t.text     "note",                     limit: 65535
    t.integer  "cancellation_id",          limit: 4
    t.string   "cancellation_reason",      limit: 255
    t.integer  "name",                     limit: 4
    t.date     "date"
    t.integer  "user_id",                  limit: 4
    t.string   "institute",                limit: 255
    t.string   "pdf_file_name",            limit: 255
    t.string   "pdf_content_type",         limit: 255
    t.integer  "pdf_file_size",            limit: 8
    t.datetime "pdf_updated_at"
    t.datetime "created_at",                                                                   null: false
    t.datetime "updated_at",                                                                   null: false
  end

  add_index "inca_subscriptions", ["cancellation_id"], name: "index_inca_subscriptions_on_cancellation_id", using: :btree
  add_index "inca_subscriptions", ["category_id"], name: "index_inca_subscriptions_on_category_id", using: :btree
  add_index "inca_subscriptions", ["company_typology_id"], name: "index_inca_subscriptions_on_company_typology_id", using: :btree
  add_index "inca_subscriptions", ["inca_office_id"], name: "index_inca_subscriptions_on_inca_office_id", using: :btree
  add_index "inca_subscriptions", ["inca_practise_id"], name: "index_inca_subscriptions_on_inca_practise_id", using: :btree
  add_index "inca_subscriptions", ["payment_typology_id"], name: "index_inca_subscriptions_on_payment_typology_id", using: :btree
  add_index "inca_subscriptions", ["privacy_one_id"], name: "index_inca_subscriptions_on_privacy_one_id", using: :btree
  add_index "inca_subscriptions", ["privacy_three_id"], name: "index_inca_subscriptions_on_privacy_three_id", using: :btree
  add_index "inca_subscriptions", ["privacy_two_id"], name: "index_inca_subscriptions_on_privacy_two_id", using: :btree
  add_index "inca_subscriptions", ["sex_id"], name: "index_inca_subscriptions_on_sex_id", using: :btree
  add_index "inca_subscriptions", ["subscription_typology_id"], name: "index_inca_subscriptions_on_subscription_typology_id", using: :btree
  add_index "inca_subscriptions", ["subscription_year_id"], name: "index_inca_subscriptions_on_subscription_year_id", using: :btree
  add_index "inca_subscriptions", ["user_id"], name: "index_inca_subscriptions_on_user_id", using: :btree
  add_index "inca_subscriptions", ["work_level_id"], name: "index_inca_subscriptions_on_work_level_id", using: :btree
  add_index "inca_subscriptions", ["work_qualify_id"], name: "index_inca_subscriptions_on_work_qualify_id", using: :btree
  add_index "inca_subscriptions", ["work_worker_id"], name: "index_inca_subscriptions_on_work_worker_id", using: :btree

  create_table "lawyers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "payment_typologies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "practise_typologies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "privacy_ones", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "privacy_threes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "privacy_twos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subscription_typologies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subscription_years", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tariffs", force: :cascade do |t|
    t.integer  "name",        limit: 4
    t.integer  "category_id", limit: 4
    t.integer  "position",    limit: 4
    t.string   "typology",    limit: 255
    t.decimal  "amount",                  precision: 8, scale: 2, default: 0.0
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "tariffs", ["category_id"], name: "index_tariffs_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.boolean  "manager"
    t.boolean  "regular"
    t.string   "name",                   limit: 255
    t.string   "address",                limit: 255
    t.string   "mobile",                 limit: 255
    t.string   "pec",                    limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "institute",              limit: 255
    t.string   "office",                 limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "uvl_offices", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "uvl_receipts", force: :cascade do |t|
    t.integer  "uvl_office_id",        limit: 4
    t.string   "customer_name",        limit: 255
    t.string   "customer_forname",     limit: 255
    t.string   "customer_birth_place", limit: 255
    t.date     "customer_birth_date"
    t.string   "customer_fiscal_code", limit: 255
    t.string   "customer_address",     limit: 255
    t.string   "customer_zip",         limit: 255
    t.string   "customer_city",        limit: 255
    t.string   "customer_province",    limit: 255
    t.decimal  "payment",                            precision: 8, scale: 2, default: 0.0
    t.integer  "payment_typology_id",  limit: 4
    t.integer  "practise_typology_id", limit: 4
    t.string   "company",              limit: 255
    t.integer  "lawyer_id",            limit: 4
    t.integer  "category_id",          limit: 4
    t.text     "note",                 limit: 65535
    t.integer  "cancellation_id",      limit: 4
    t.string   "cancellation_reason",  limit: 255
    t.integer  "name",                 limit: 4
    t.date     "date"
    t.integer  "user_id",              limit: 4
    t.string   "institute",            limit: 255
    t.string   "pdf_file_name",        limit: 255
    t.string   "pdf_content_type",     limit: 255
    t.integer  "pdf_file_size",        limit: 8
    t.datetime "pdf_updated_at"
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
  end

  add_index "uvl_receipts", ["cancellation_id"], name: "index_uvl_receipts_on_cancellation_id", using: :btree
  add_index "uvl_receipts", ["category_id"], name: "index_uvl_receipts_on_category_id", using: :btree
  add_index "uvl_receipts", ["lawyer_id"], name: "index_uvl_receipts_on_lawyer_id", using: :btree
  add_index "uvl_receipts", ["payment_typology_id"], name: "index_uvl_receipts_on_payment_typology_id", using: :btree
  add_index "uvl_receipts", ["practise_typology_id"], name: "index_uvl_receipts_on_practise_typology_id", using: :btree
  add_index "uvl_receipts", ["user_id"], name: "index_uvl_receipts_on_user_id", using: :btree
  add_index "uvl_receipts", ["uvl_office_id"], name: "index_uvl_receipts_on_uvl_office_id", using: :btree

  create_table "uvl_subscriptions", force: :cascade do |t|
    t.integer  "uvl_office_id",            limit: 4
    t.integer  "subscription_typology_id", limit: 4
    t.string   "customer_name",            limit: 255
    t.string   "customer_forname",         limit: 255
    t.integer  "sex_id",                   limit: 4
    t.string   "customer_birth_place",     limit: 255
    t.date     "customer_birth_date"
    t.string   "customer_fiscal_code",     limit: 255
    t.string   "customer_nationality",     limit: 255
    t.string   "customer_address",         limit: 255
    t.string   "customer_zip",             limit: 255
    t.string   "customer_city",            limit: 255
    t.string   "customer_province",        limit: 255
    t.string   "customer_phone",           limit: 255
    t.string   "customer_mobile",          limit: 255
    t.string   "customer_email",           limit: 255
    t.string   "company_name",             limit: 255
    t.string   "company_address",          limit: 255
    t.string   "company_zip",              limit: 255
    t.string   "company_city",             limit: 255
    t.string   "company_province",         limit: 255
    t.integer  "company_typology_id",      limit: 4
    t.integer  "work_qualify_id",          limit: 4
    t.integer  "work_level_id",            limit: 4
    t.string   "work_contract",            limit: 255
    t.integer  "work_worker_id",           limit: 4
    t.date     "work_employee_date"
    t.string   "work_workplace",           limit: 255
    t.decimal  "payment",                                precision: 8, scale: 2, default: 0.0
    t.integer  "payment_typology_id",      limit: 4
    t.integer  "category_id",              limit: 4
    t.integer  "subscription_year_id",     limit: 4
    t.integer  "practise_typology_id",     limit: 4
    t.integer  "privacy_one_id",           limit: 4
    t.integer  "privacy_two_id",           limit: 4
    t.integer  "privacy_three_id",         limit: 4
    t.text     "note",                     limit: 65535
    t.integer  "cancellation_id",          limit: 4
    t.string   "cancellation_reason",      limit: 255
    t.integer  "name",                     limit: 4
    t.date     "date"
    t.integer  "user_id",                  limit: 4
    t.string   "institute",                limit: 255
    t.string   "pdf_file_name",            limit: 255
    t.string   "pdf_content_type",         limit: 255
    t.integer  "pdf_file_size",            limit: 8
    t.datetime "pdf_updated_at"
    t.datetime "created_at",                                                                   null: false
    t.datetime "updated_at",                                                                   null: false
  end

  add_index "uvl_subscriptions", ["cancellation_id"], name: "index_uvl_subscriptions_on_cancellation_id", using: :btree
  add_index "uvl_subscriptions", ["category_id"], name: "index_uvl_subscriptions_on_category_id", using: :btree
  add_index "uvl_subscriptions", ["company_typology_id"], name: "index_uvl_subscriptions_on_company_typology_id", using: :btree
  add_index "uvl_subscriptions", ["payment_typology_id"], name: "index_uvl_subscriptions_on_payment_typology_id", using: :btree
  add_index "uvl_subscriptions", ["practise_typology_id"], name: "index_uvl_subscriptions_on_practise_typology_id", using: :btree
  add_index "uvl_subscriptions", ["privacy_one_id"], name: "index_uvl_subscriptions_on_privacy_one_id", using: :btree
  add_index "uvl_subscriptions", ["privacy_three_id"], name: "index_uvl_subscriptions_on_privacy_three_id", using: :btree
  add_index "uvl_subscriptions", ["privacy_two_id"], name: "index_uvl_subscriptions_on_privacy_two_id", using: :btree
  add_index "uvl_subscriptions", ["sex_id"], name: "index_uvl_subscriptions_on_sex_id", using: :btree
  add_index "uvl_subscriptions", ["subscription_typology_id"], name: "index_uvl_subscriptions_on_subscription_typology_id", using: :btree
  add_index "uvl_subscriptions", ["subscription_year_id"], name: "index_uvl_subscriptions_on_subscription_year_id", using: :btree
  add_index "uvl_subscriptions", ["user_id"], name: "index_uvl_subscriptions_on_user_id", using: :btree
  add_index "uvl_subscriptions", ["uvl_office_id"], name: "index_uvl_subscriptions_on_uvl_office_id", using: :btree
  add_index "uvl_subscriptions", ["work_level_id"], name: "index_uvl_subscriptions_on_work_level_id", using: :btree
  add_index "uvl_subscriptions", ["work_qualify_id"], name: "index_uvl_subscriptions_on_work_qualify_id", using: :btree
  add_index "uvl_subscriptions", ["work_worker_id"], name: "index_uvl_subscriptions_on_work_worker_id", using: :btree

  create_table "work_levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "work_qualifies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "work_workers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "inca_receipts", "cancellations"
  add_foreign_key "inca_receipts", "inca_offices"
  add_foreign_key "inca_receipts", "payment_typologies"
  add_foreign_key "inca_receipts", "users"
  add_foreign_key "inca_subscriptions", "cancellations"
  add_foreign_key "inca_subscriptions", "categories"
  add_foreign_key "inca_subscriptions", "company_typologies"
  add_foreign_key "inca_subscriptions", "inca_offices"
  add_foreign_key "inca_subscriptions", "inca_practises"
  add_foreign_key "inca_subscriptions", "payment_typologies"
  add_foreign_key "inca_subscriptions", "privacy_ones"
  add_foreign_key "inca_subscriptions", "privacy_threes"
  add_foreign_key "inca_subscriptions", "privacy_twos"
  add_foreign_key "inca_subscriptions", "sexes"
  add_foreign_key "inca_subscriptions", "subscription_typologies"
  add_foreign_key "inca_subscriptions", "subscription_years"
  add_foreign_key "inca_subscriptions", "users"
  add_foreign_key "inca_subscriptions", "work_levels"
  add_foreign_key "inca_subscriptions", "work_qualifies"
  add_foreign_key "inca_subscriptions", "work_workers"
  add_foreign_key "tariffs", "categories"
  add_foreign_key "uvl_receipts", "cancellations"
  add_foreign_key "uvl_receipts", "categories"
  add_foreign_key "uvl_receipts", "lawyers"
  add_foreign_key "uvl_receipts", "payment_typologies"
  add_foreign_key "uvl_receipts", "practise_typologies"
  add_foreign_key "uvl_receipts", "users"
  add_foreign_key "uvl_receipts", "uvl_offices"
  add_foreign_key "uvl_subscriptions", "cancellations"
  add_foreign_key "uvl_subscriptions", "categories"
  add_foreign_key "uvl_subscriptions", "company_typologies"
  add_foreign_key "uvl_subscriptions", "payment_typologies"
  add_foreign_key "uvl_subscriptions", "practise_typologies"
  add_foreign_key "uvl_subscriptions", "privacy_ones"
  add_foreign_key "uvl_subscriptions", "privacy_threes"
  add_foreign_key "uvl_subscriptions", "privacy_twos"
  add_foreign_key "uvl_subscriptions", "sexes"
  add_foreign_key "uvl_subscriptions", "subscription_typologies"
  add_foreign_key "uvl_subscriptions", "subscription_years"
  add_foreign_key "uvl_subscriptions", "users"
  add_foreign_key "uvl_subscriptions", "uvl_offices"
  add_foreign_key "uvl_subscriptions", "work_levels"
  add_foreign_key "uvl_subscriptions", "work_qualifies"
  add_foreign_key "uvl_subscriptions", "work_workers"
end
