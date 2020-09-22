class UsersController < ApplicationController
  before_action :authenticate_user!, expect: [:index]
  before_action :gest_test_user, only: [:edit,:update,:destroy]

  def index
    # @users = User.all
    @users = User.all.page(params[:page]).per(6)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path, alert: '不正なアクセスです'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice:'更新に成功しました'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end

  def gest_test_user
    @user = User.find(params[:id])
    if @user.email == "test@example.com"
      flash[:notice] = "テストユーザーのため変更できません"
      redirect_to root_path
    end
  end
end
