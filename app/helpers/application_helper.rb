
#ERBの補助処理
module ApplicationHelper
    def full_title(page_title='')
        base_title="Ruby on Rails Tutorial Sample App"
        if page_title.empty?#引数がない時
            base_title
        else#引数がある時
            page_title+"|"+base_title
        end
    end
end
