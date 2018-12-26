class UvlSubscriptionsController < ApplicationController
  before_action :set_uvl_subscription, only: [:show, :edit, :update, :destroy]

  def index
    @user = current_user
    @q = UvlSubscription.ransack(params[:q])
    @uvl_subscriptions = @q.result(distinct: true)
                           .order(created_at: 'DESC')
                           .paginate(page: params[:page], per_page: 10)
  end

  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'uvl_subscriptions/pdfuvlsubscription', pdf: 'pdfuvlsubscription' }
    end
  end

  def bill_download
    @q = UvlSubscription.ransack(params[:q])
    @uvl_subscriptions = @q.result(distinct: true)
                           .order(created_at: 'DESC')
                           .where(cancellation_id: nil)
                           .where.not(category_id: 9)
                           .paginate(page: params[:page], per_page: 50)
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'uvl_subscriptions/pdfbilldownload', pdf: 'pdfbilldownload' }
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

  def bill_downloadnidil
    @q = UvlSubscription.ransack(params[:q])
    @uvl_subscriptions = @q.result(distinct: true)
                           .order(created_at: 'DESC')
                           .where(cancellation_id: nil)
                           .where(category_id: 9)
                           .paginate(page: params[:page], per_page: 50)
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'uvl_subscriptions/pdfbilldownloadnidil', pdf: 'pdfbilldownloadnidil' }
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
    @uvl_subscription = UvlSubscription.new
    @tariffs = Tariff.all.order(position: 'ASC')
    authorize! :create, @uvl_subscription
  end

  def edit
    authorize! :update, @uvl_subscription
  end

  def create
    @user = current_user

    @uvl_subscription = @user.uvl_subscriptions.build(uvl_subscription_params)

    @uvl_subscription.institute = @user.institute
    @uvl_subscription.date = Date.today

    respond_to do |format|
      if @uvl_subscription.save
        format.html { redirect_to @uvl_subscription, notice: 'Uvl subscription was successfully created.' }
        format.json { render :show, status: :created, location: @uvl_subscription }
      else
        format.html { render :new }
        format.json { render json: @uvl_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @uvl_subscription.update(uvl_subscription_params)
        format.html { redirect_to @uvl_subscription, notice: 'Uvl subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @uvl_subscription }
      else
        format.html { render :edit }
        format.json { render json: @uvl_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @uvl_subscription.destroy
    respond_to do |format|
      format.html { redirect_to uvl_subscriptions_url, notice: 'Uvl subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_uvl_subscription
      @uvl_subscription = UvlSubscription.find(params[:id])
    end

    def uvl_subscription_params
      params.require(:uvl_subscription).permit(:uvl_office_id, :subscription_typology_id, :customer_name, :customer_forname, :sex_id, :customer_birth_place, :customer_birth_date, :customer_fiscal_code, :customer_nationality, :customer_address, :customer_zip, :customer_city, :customer_province, :customer_phone, :customer_mobile, :customer_email, :company_name, :company_address, :company_zip, :company_city, :company_province, :company_typology_id, :work_qualify_id, :work_level_id, :work_contract, :work_worker_id, :work_employee_date, :work_workplace, :payment, :payment_typology_id, :category_id, :subscription_year_id, :practise_typology_id, :privacy_one_id, :privacy_two_id, :privacy_three_id, :note, :cancellation_id, :cancellation_reason, :name, :date, :user_id, :institute, :pdf)
    end
end
