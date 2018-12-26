class IncaReceiptsController < ApplicationController
  before_action :set_inca_receipt, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @q = IncaReceipt.ransack(params[:q])
    @inca_receipts = @q.result(distinct: true).order(created_at: 'DESC').paginate(page: params[:page], per_page: 10)
  end

  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'inca_receipts/pdfincareceipt', pdf: 'pdfincareceipt' }
    end
  end

  def bill_download
    @user = current_user
      @q = IncaReceipt.ransack(params[:q])
      @inca_receipts = @q.result(distinct: true).order(created_at: 'ASC').where(cancellation_id: nil).paginate(page: params[:page], per_page: 50)
      respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'inca_receipts/pdfbilldownload', pdf: 'pdfbilldownload' }
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
    @inca_receipt = IncaReceipt.new
    authorize! :create, @inca_receipt
  end

  def edit
    authorize! :update, @inca_receipt
  end

  def create
    @user = current_user
    @inca_receipt = @user.inca_receipts.build(inca_receipt_params)
    @inca_receipt.institute = @user.institute
    @inca_receipt.date = Date.today
    respond_to do |format|
      if @inca_receipt.save
        format.html { redirect_to @inca_receipt, notice: 'Inca receipt was successfully created.' }
        format.json { render :show, status: :created, location: @inca_receipt }
      else
        format.html { render :new }
        format.json { render json: @inca_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @inca_receipt.update(inca_receipt_params)
        format.html { redirect_to @inca_receipt, notice: 'Inca receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @inca_receipt }
      else
        format.html { render :edit }
        format.json { render json: @inca_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @inca_receipt.destroy
    respond_to do |format|
      format.html { redirect_to inca_receipts_url, notice: 'Inca receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_inca_receipt
      @inca_receipt = IncaReceipt.find(params[:id])
    end

    def inca_receipt_params
      params.require(:inca_receipt).permit(:inca_office_id, :customer_name, :customer_forname, :customer_birth_place, :customer_birth_date, :customer_fiscal_code, :customer_address, :customer_zip, :customer_city, :customer_province, :payment, :payment_typology_id, :note, :cancellation_id, :cancellation_reason, :name, :date, :user_id, :institute, :pdf)
    end
end
