require 'test_helper'

module WizcmsArticle
  class Admin::PagesControllerTest < ActionController::TestCase
    setup do
      @page = pages(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:pages)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create page" do
      assert_difference('Page.count') do
        post :create, page: { brief: @page.brief, cite_key: @page.cite_key, content: @page.content, keywords: @page.keywords, parent_id: @page.parent_id, published: @page.published, title: @page.title }
      end

      assert_redirected_to admin_page_path(assigns(:page))
    end

    test "should show page" do
      get :show, id: @page
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @page
      assert_response :success
    end

    test "should update page" do
      patch :update, id: @page, page: { brief: @page.brief, cite_key: @page.cite_key, content: @page.content, keywords: @page.keywords, parent_id: @page.parent_id, published: @page.published, title: @page.title }
      assert_redirected_to admin_page_path(assigns(:page))
    end

    test "should destroy page" do
      assert_difference('Page.count', -1) do
        delete :destroy, id: @page
      end

      assert_redirected_to admin_pages_path
    end
  end
end
