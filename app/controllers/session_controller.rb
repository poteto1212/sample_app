class SessionController < ApplicationController
    def new
       
    end
    
    #postを検知して呼び出される  
    #newメソッドで生成されたフォームが送信された時に  
    def create
        #ネストで送られて来ることを意識して取り組もう
        user=User.find_by(email: params[:session][:email].downcase)
        
        if user && user.authenticate(params[:session][:password])
            #sessionhelperから受け取ったメソッド
            log_in user
            #userにリダイレクト
            redirect_to user
            
        else
            #エラー時の処理
            flash[:denger]='メールアドレスもしくはパスワードが間違っています'
            render 'new'
        end
    end
    
    def destory
    end
end
