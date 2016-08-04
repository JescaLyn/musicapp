class SessionsController < ApplicationController
  before_action :ensure_no_current_user, only: [:new, :create]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if @user
      login_user!(@user)
    else
      flash.now[:errors] = ["That user doesn't exist."]
      @user = User.new
      render :new
    end
  end

  def destroy
    logout_user!
  end
end
