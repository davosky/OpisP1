# frozen_string_literal: true

class GenericSubscription < ActiveRecord::Base
  belongs_to :generic_office
  belongs_to :subscription_typology
  belongs_to :sex
  belongs_to :company_typology
  belongs_to :work_qualify
  belongs_to :work_level
  belongs_to :work_worker
  belongs_to :payment_typology
  belongs_to :category
  belongs_to :subscription_year
  belongs_to :generic_practise
  belongs_to :privacy_one
  belongs_to :privacy_two
  belongs_to :privacy_three
  belongs_to :cancellation
  belongs_to :user

  before_create :set_name
  def set_name
    last_name = GenericSubscription.maximum(:name)
    self.name = last_name.to_i + 1
  end

  before_create :set_id
  def set_id
    last_id = GenericSubscription.maximum(:id)
    self.id = last_id.to_i + 1
  end

  has_attached_file :pdf
  validates_attachment_content_type :pdf, content_type: ['application/pdf']

  validates :customer_name, presence: true
  validates :customer_forname, presence: true
  validates :customer_birth_place, presence: true
  validates :customer_birth_date, presence: true
  validates :customer_fiscal_code, presence: true, codice_fiscale_format: true
  validates :sex_id, presence: true
  validates :customer_address, presence: true
  validates :customer_zip, presence: true
  validates :customer_city, presence: true
  validates :customer_province, presence: true
  validates :customer_nationality, presence: true
  validates :payment, presence: true
  validates :payment_typology_id, presence: true
  validates :generic_office_id, presence: true
  validates :generic_practise_id, presence: true
  validates :subscription_year, presence: true
  validates :category_id, presence: true
  validates :privacy_one, presence: true
  validates :privacy_two, presence: true
  validates :privacy_three, presence: true
  validates_presence_of :cancellation_reason, if: -> { !cancellation_id.nil? }
end
