require 'test_helper'

class UvlSubscriptionsControllerTest < ActionController::TestCase
  setup do
    @uvl_subscription = uvl_subscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uvl_subscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uvl_subscription" do
    assert_difference('UvlSubscription.count') do
      post :create, uvl_subscription: { cancellation_id: @uvl_subscription.cancellation_id, cancellation_reason: @uvl_subscription.cancellation_reason, category_id: @uvl_subscription.category_id, company_address: @uvl_subscription.company_address, company_city: @uvl_subscription.company_city, company_name: @uvl_subscription.company_name, company_province: @uvl_subscription.company_province, company_typology_id: @uvl_subscription.company_typology_id, company_zip: @uvl_subscription.company_zip, customer_address: @uvl_subscription.customer_address, customer_birth_date: @uvl_subscription.customer_birth_date, customer_birth_place: @uvl_subscription.customer_birth_place, customer_city: @uvl_subscription.customer_city, customer_email: @uvl_subscription.customer_email, customer_fiscal_code: @uvl_subscription.customer_fiscal_code, customer_forname: @uvl_subscription.customer_forname, customer_mobile: @uvl_subscription.customer_mobile, customer_name: @uvl_subscription.customer_name, customer_nationality: @uvl_subscription.customer_nationality, customer_phone: @uvl_subscription.customer_phone, customer_province: @uvl_subscription.customer_province, customer_zip: @uvl_subscription.customer_zip, date: @uvl_subscription.date, institute: @uvl_subscription.institute, name: @uvl_subscription.name, note: @uvl_subscription.note, payment: @uvl_subscription.payment, payment_typology_id: @uvl_subscription.payment_typology_id, pdf: @uvl_subscription.pdf, practise_typology_id: @uvl_subscription.practise_typology_id, privacy_one_id: @uvl_subscription.privacy_one_id, privacy_three_id: @uvl_subscription.privacy_three_id, privacy_two_id: @uvl_subscription.privacy_two_id, sex_id: @uvl_subscription.sex_id, subscription_typology_id: @uvl_subscription.subscription_typology_id, subscription_year_id: @uvl_subscription.subscription_year_id, user_id: @uvl_subscription.user_id, uvl_office_id: @uvl_subscription.uvl_office_id, work_contract: @uvl_subscription.work_contract, work_employee_date: @uvl_subscription.work_employee_date, work_level_id: @uvl_subscription.work_level_id, work_qualify_id: @uvl_subscription.work_qualify_id, work_worker_id: @uvl_subscription.work_worker_id, work_workplace: @uvl_subscription.work_workplace }
    end

    assert_redirected_to uvl_subscription_path(assigns(:uvl_subscription))
  end

  test "should show uvl_subscription" do
    get :show, id: @uvl_subscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uvl_subscription
    assert_response :success
  end

  test "should update uvl_subscription" do
    patch :update, id: @uvl_subscription, uvl_subscription: { cancellation_id: @uvl_subscription.cancellation_id, cancellation_reason: @uvl_subscription.cancellation_reason, category_id: @uvl_subscription.category_id, company_address: @uvl_subscription.company_address, company_city: @uvl_subscription.company_city, company_name: @uvl_subscription.company_name, company_province: @uvl_subscription.company_province, company_typology_id: @uvl_subscription.company_typology_id, company_zip: @uvl_subscription.company_zip, customer_address: @uvl_subscription.customer_address, customer_birth_date: @uvl_subscription.customer_birth_date, customer_birth_place: @uvl_subscription.customer_birth_place, customer_city: @uvl_subscription.customer_city, customer_email: @uvl_subscription.customer_email, customer_fiscal_code: @uvl_subscription.customer_fiscal_code, customer_forname: @uvl_subscription.customer_forname, customer_mobile: @uvl_subscription.customer_mobile, customer_name: @uvl_subscription.customer_name, customer_nationality: @uvl_subscription.customer_nationality, customer_phone: @uvl_subscription.customer_phone, customer_province: @uvl_subscription.customer_province, customer_zip: @uvl_subscription.customer_zip, date: @uvl_subscription.date, institute: @uvl_subscription.institute, name: @uvl_subscription.name, note: @uvl_subscription.note, payment: @uvl_subscription.payment, payment_typology_id: @uvl_subscription.payment_typology_id, pdf: @uvl_subscription.pdf, practise_typology_id: @uvl_subscription.practise_typology_id, privacy_one_id: @uvl_subscription.privacy_one_id, privacy_three_id: @uvl_subscription.privacy_three_id, privacy_two_id: @uvl_subscription.privacy_two_id, sex_id: @uvl_subscription.sex_id, subscription_typology_id: @uvl_subscription.subscription_typology_id, subscription_year_id: @uvl_subscription.subscription_year_id, user_id: @uvl_subscription.user_id, uvl_office_id: @uvl_subscription.uvl_office_id, work_contract: @uvl_subscription.work_contract, work_employee_date: @uvl_subscription.work_employee_date, work_level_id: @uvl_subscription.work_level_id, work_qualify_id: @uvl_subscription.work_qualify_id, work_worker_id: @uvl_subscription.work_worker_id, work_workplace: @uvl_subscription.work_workplace }
    assert_redirected_to uvl_subscription_path(assigns(:uvl_subscription))
  end

  test "should destroy uvl_subscription" do
    assert_difference('UvlSubscription.count', -1) do
      delete :destroy, id: @uvl_subscription
    end

    assert_redirected_to uvl_subscriptions_path
  end
end
