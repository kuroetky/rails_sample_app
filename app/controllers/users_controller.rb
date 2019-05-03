class UsersController < ApplicationController
  #GET /users/:id
  def show
    @user = User.find(params[:id])
    #=> app/veiws/users/show.html.erb
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #success
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      #failure
      render 'new'
    end
  end
  
  private
    #パラメータチェック関数
    def user_params
      params.require(:user).permit(
        :name, :email, :password,
        :password_confirmation)
    end
end
