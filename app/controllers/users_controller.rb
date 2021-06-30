class UsersController < ApplicationController
    
    def show
        #paramsは動的urlパラメーターを取得するメソッド
        @user=User.find(params[:id])
    end
    
    #ユーザー登録フォームを作成するメソッド
    def new
        @user=User.new
    end
    
    #ユーザー登録処理
    #但しフォームが正しく入力されている時のみ
    
    #newの引数メソッドは下で定義する
    def create
        @user=User.new(user_params)
        
        #DBへの保存処理
        if @user.save
        #成功事時の表示テロップ
            flash[:success]="Welcome to the Sample App"
            #成功した際のリダイレクト先
            #登録ユーザーの詳細に飛べる
            redirect_to user_url(@user)
        #保存が上手くいかないとき・・・
        else
            #新規作成に飛ぶ
            render 'new'
        end
            
    end
    
    
    #クラス外部から呼び出せないようにする
    private
        def user_params
            #urlパラメータに含まれるpost値を取得する処理
            #ネスト構造を意識
            params.require(:user).permit(:name,:email,:password,:password_confirmation)
        end
    
end
