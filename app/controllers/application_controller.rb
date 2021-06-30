class ApplicationController < ActionController::Base
#本クラスはヘルパーのモジュール化に関与
#上位クラスである本クラスにSessionHelperを組み込むと全てのコントローラでこれが使えるようになる。
   protect_from_forgery with: :exception
   include SessionHelper
end
