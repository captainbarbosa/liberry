require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  # test "should get index" do
  #   get :index
  #   assert_response :success
  # end

  test "should get new" do
    get :new
    assert_response :success

    assert_select "form"
  end

  # test "should get show" do
  #   @book = books(:one)
  #   get :show, id: @book.id
  #   assert_response :success
  # end

  test "should get edit" do
   @book = books(:one)
   get :edit, id: @book.id
   assert_response :success
   assert_select "form"
 end

 test "should get update" do
   @book = books(:one)
   patch :update, id: @book.id, book: { title: "The Martian" }
   assert_redirected_to controller: "books", action: "index"

   assert_equal "The Martian", assigns[:book].title
 end

 test "should get create" do
    post :create, book: { title: "Bob's Big Adventure" }
    assert assigns(:book).valid?
    assert_equal "Bob's Big Adventure", assigns(:book).title
    assert_redirected_to controller: "books", action: "index"
  end

  test "should get delete" do
    @book = books(:two)
    delete :destroy, id: @book.id
    assert_redirected_to controller: "books", action: "index"
  end
end
