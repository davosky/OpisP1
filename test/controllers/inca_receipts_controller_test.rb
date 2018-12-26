require 'test_helper'

class IncaReceiptsControllerTest < ActionController::TestCase
  setup do
    @inca_receipt = inca_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inca_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inca_receipt" do
    assert_difference('IncaReceipt.count') do
      post :create, inca_receipt: { cancellation_id: @inca_receipt.cancellation_id, cancellation_reason: @inca_receipt.cancellation_reason, customer_address: @inca_receipt.customer_address, customer_birth_date: @inca_receipt.customer_birth_date, customer_birth_place: @inca_receipt.customer_birth_place, customer_city: @inca_receipt.customer_city, customer_fiscal_code: @inca_receipt.customer_fiscal_code, customer_forname: @inca_receipt.customer_forname, customer_name: @inca_receipt.customer_name, customer_province: @inca_receipt.customer_province, customer_zip: @inca_receipt.customer_zip, date: @inca_receipt.date, inca_office_id: @inca_receipt.inca_office_id, institute: @inca_receipt.institute, name: @inca_receipt.name, note: @inca_receipt.note, payment: @inca_receipt.payment, payment_typology_id: @inca_receipt.payment_typology_id, pdf: @inca_receipt.pdf, user_id: @inca_receipt.user_id }
    end

    assert_redirected_to inca_receipt_path(assigns(:inca_receipt))
  end

  test "should show inca_receipt" do
    get :show, id: @inca_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inca_receipt
    assert_response :success
  end

  test "should update inca_receipt" do
    patch :update, id: @inca_receipt, inca_receipt: { cancellation_id: @inca_receipt.cancellation_id, cancellation_reason: @inca_receipt.cancellation_reason, customer_address: @inca_receipt.customer_address, customer_birth_date: @inca_receipt.customer_birth_date, customer_birth_place: @inca_receipt.customer_birth_place, customer_city: @inca_receipt.customer_city, customer_fiscal_code: @inca_receipt.customer_fiscal_code, customer_forname: @inca_receipt.customer_forname, customer_name: @inca_receipt.customer_name, customer_province: @inca_receipt.customer_province, customer_zip: @inca_receipt.customer_zip, date: @inca_receipt.date, inca_office_id: @inca_receipt.inca_office_id, institute: @inca_receipt.institute, name: @inca_receipt.name, note: @inca_receipt.note, payment: @inca_receipt.payment, payment_typology_id: @inca_receipt.payment_typology_id, pdf: @inca_receipt.pdf, user_id: @inca_receipt.user_id }
    assert_redirected_to inca_receipt_path(assigns(:inca_receipt))
  end

  test "should destroy inca_receipt" do
    assert_difference('IncaReceipt.count', -1) do
      delete :destroy, id: @inca_receipt
    end

    assert_redirected_to inca_receipts_path
  end
end
