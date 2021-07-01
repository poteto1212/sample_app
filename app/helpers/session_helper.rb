module SessionHelper
    
    #渡されたユーザーでログインする
    def log_in(user)
        session[:user_id]=user.id
    end
    
    #現在ログイン中のユーザーを返す
    #||はOR演算子
    #find_byは初回一致
    #sessionがある時のみ呼び出される
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    #ログインユーザーのみに許可された処理
    #current_userがある時のみ呼び出される
    
    def logged_in?
        !current_user.nil?
    end
    
    
    #ログアウト処理
    def log_out
        #セッションからユーザーIdを削除
        session.delete(:user_id)
        #セッションは空にしておく
        @current_user=nil
        
    end
    
    
end
