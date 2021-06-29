class UsersController < ApplicationController
    
    def show
        #paramsは動的urlパラメーターを取得するメソッド
        @user=User.find(params[:id])
    end
    def new
        @user=User.new
    end
end
