class UvlReceiptsController < ApplicationController
  before_action :set_uvl_receipt, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @q = UvlReceipt.ransack(params[:q])
    @uvl_receipts = @q.result(distinct: true).order(created_at: 'DESC').paginate(page: params[:page], per_page: 10)
  end

  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'uvl_receipts/pdfuvlreceipt', pdf: 'pdfuvlreceipt' }
    end
  end

  def bill_download
    @user = current_user
    @q = UvlReceipt.ransack(params[:q])
    @uvl_receipts = @q.result(distinct: true).order(created_at: 'ASC').where(cancellation_id: nil).paginate(page: params[:page], per_page: 50)
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'uvl_receipts/pdfbilldownload', pdf: 'pdfbilldownload' }
    end
    @totale
    @totalegenerale
    @ufficio
    @contanti
    @contantitotale
    @pos
    @postotale
    @bonifico
    @bonificototale
    @ccpostale
    @ccpostaletotale
    @altro
    @altrototale
  end

  def new
    @uvl_receipt = UvlReceipt.new
    authorize! :create, @uvl_receipt
  end

  def edit
    authorize! :update, @uvl_receipt
  end

  def create
    @user = current_user
    @uvl_receipt = @user.uvl_receipts.build(uvl_receipt_params)
    @uvl_receipt.institute = @user.institute
    @uvl_receipt.date = Date.today
    respond_to do |format|
      if @uvl_receipt.save
        format.html { redirect_to @uvl_receipt, notice: 'Uvl receipt was successfully created.' }
        format.json { render :show, status: :created, location: @uvl_receipt }
      else
        format.html { render :new }
        format.json { render json: @uvl_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @uvl_receipt.update(uvl_receipt_params)
        format.html { redirect_to @uvl_receipt, notice: 'Uvl receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @uvl_receipt }
      else
        format.html { render :edit }
        format.json { render json: @uvl_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @uvl_receipt.destroy
    respond_to do |format|
      format.html { redirect_to uvl_receipts_url, notice: 'Uvl receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_uvl_receipt
      @uvl_receipt = UvlReceipt.find(params[:id])
    end

    def uvl_receipt_params
      params.require(:uvl_receipt).permit(:uvl_office_id, :customer_name, :customer_forname, :customer_birth_place, :customer_birth_date, :customer_fiscal_code, :customer_address, :customer_zip, :customer_city, :customer_province, :payment, :payment_typology_id, :practise_typology_id, :company, :lawyer_id, :category_id, :note, :cancellation_id, :cancellation_reason, :name, :date, :user_id, :institute, :pdf)
    end
end
