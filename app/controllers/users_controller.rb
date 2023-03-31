class UsersController < ApplicationController
    def resister
        @user=User.new(
            name: params[:name],
            email: params[:email],
            password: params[:password],
            check_password: params[:check_password]
        )
        if @user.save
            flash[:notice]="保存しました"
            redirect_to("/")
        else
            flash.now[:notice]="保存できませんでした"
            render :resister_form, status: :unprocessable_entity
        end
    end
    def login
        @user=User.find_by(email: params[:email], password: params[:password])
        if @user
            flash[:notice]="ログインしました"
            session[:user_id]=@user.id
            redirect_to("/")
        else
            flash.now[:notice]="メールアドレスかパスワードが間違っています"
            @email=params[:email]
            @password=params[:password]
            render :login_form,status: :unprocessable_entity
        end
    end
    def login_form
        @user=User.new
    end
    def resister_form
        @user=User.new
    end
    def index
        @users=User.all
    end
    
    def logout
        if @current_user
            flash[:notice]="ログアウトしました"
            session[:user_id]=nil
            redirect_to("/")
        end
    end
end
