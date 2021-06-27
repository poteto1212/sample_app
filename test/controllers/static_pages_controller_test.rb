require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  #setupメソッドはテストが実行される直前に
  #Rubyばメソッド内で定義した変数もインスタンス変数として使える
  def setup
      @base_title =  "Ruby on Rails Tutorial Sample App"
  end
    
    
  test "should get home" do
    #urlに対するテスト
    get static_pages_home_url
    assert_response :success
    #HTMLテンプレートに対するテスト
    assert_select "title","Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title","Help | #{@base_title}"
  end


  #失敗時のテストコード
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title","About | #{@base_title}"
  end
  
  test "should get contact" do
      get static_pages_contact_url
      assert_response:success
      
  end    
  
end
