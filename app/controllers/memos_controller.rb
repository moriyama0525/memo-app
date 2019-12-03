class MemosController < ApplicationController
    def index
        @memos=Memo.all
    end
    def new
    end
    def create
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],category_id:params["memos"]["category_id"])
        redirect_to "/"
    end
    def destroy
        memo=Memo.find(params["id"])
        memo.destroy
        redirect_to "/"
    end
    def edit
        @memo=Memo.find(params["id"])
    end
    def update
        memo=Memo.find(params["id"])
        memo.title=params["memos"]["title"]
        memo.body=params["memos"]["body"]
        memo.category_id=params["memos"]["category_id"]
        memo.save
        redirect_to ("/")
    end
    def user
        
    end
    def login
        
    end
    def complete
        User.create(name: params["user"]["name"],password: params["user"]["password"])
        flash[:user] = "ユーザー登録を完了しました"
        redirect_to "/"
    end
    def user_login
        user1=User.find_by(name: params["user"]["name"],password: params["user"]["password"])
        if user1.nil?
            flash[:false]="ログインに失敗しました"
        elsif user1.name
            flash[:success] = "ログインに成功しました"
        else
            render plain: "エラー"
        end
        redirect_to "/"
    end
    def search
        @search_memo = Memo.search(params[:search])
    end
end