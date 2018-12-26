class UvlReceipt < ActiveRecord::Base
  belongs_to :uvl_office
  belongs_to :payment_typology
  belongs_to :practise_typology
  belongs_to :lawyer
  belongs_to :category
  belongs_to :cancellation
  belongs_to :user

  before_create :set_name
  def set_name
    last_name = UvlReceipt.maximum(:name)
    self.name = last_name.to_i + 1
  end

  has_attached_file :pdf
  validates_attachment_content_type :pdf, :content_type => ['application/pdf']

  validates :date, presence: true
  validates :user_id, presence: true
  validates :institute, presence: true
  validates :uvl_office_id, presence: true
  validates :customer_name, presence: true
  validates :customer_forname, presence: true
  validates :customer_birth_place, presence: true
  validates :customer_birth_date, presence: true
  validates :customer_fiscal_code, presence: true, codice_fiscale_format: true
  validates :customer_address, presence: true
  validates :customer_zip, presence: true
  validates :customer_city, presence: true
  validates :customer_province, presence: true
  validates :payment, presence: true
  validates :payment_typology_id, presence: true
  validates :practise_typology_id, presence: true
  validates :company, presence: true
  validates :category_id, presence: true
  validates :cancellation_reason, :if => lambda { self.cancellation_id != nil }, presence: true
end
