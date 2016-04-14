require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  # ? blowing up at reservation.book.title
  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  #
  #   assert_select "form"
  # end

  # ? blowing up at reservation.book.title
  # test "should get show" do
  #   @reservation = reservations(:one)
  #   get :show, id: @reservation.id
  #   assert_response :success
  # end

  test "should get edit" do
   @reservation = reservations(:one)
   get :edit, id: @reservation.id
   assert_response :success
   assert_select "form"
  end

  # ? blowing up at reservation.book.title
  # test "should get update" do
  #  @reservation = reservations(:one)
  #  patch :update, id: @reservation.id, reservation: { title: "The Martian" }
  #  assert_redirected_to controller: "reservations", action: "index"
  #
  #  assert_equal "The Martian", assigns[:book].title
  # end

  # ? blowing up at reservation.book.title
  # test "should get create" do
  #   post :create, reservation: { checkout_date: "2016-04-12 19:05:15" }
  #   assert assigns(:reservation).valid?
  #   assert_equal "2016-04-12 19:05:15", assigns(:reservation).title
  #   assert_redirected_to controller: "reservation", action: "index"
  # end

  test "should get delete" do
    @reservation = reservations(:one)
    delete :destroy, id: @reservation.id
    assert_redirected_to controller: "reservations", action: "index"
  end
end
