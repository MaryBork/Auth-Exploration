 class UserController< ApplicationController::Base

   def index
     @user = User.all
   end

   def new
     @user = User.new(user_params)
   end 

   def create
     @user = User.create(user_params)
     @user.authenticate(user_params[:email],user_params[:password])
   end


 end

private

  def user_params
    params.require(:params).permit(:name, :email, :password)
  end
