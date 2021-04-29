class RegistrationsController < Devise::RegistrationsController

    def new
        redirect_to root_path unless current_user.nil?
        @user = User.new
    end

    def create
        @user = User.new(sign_up_params)
        if @user.save
            redirect_to root_path, success: "Your account has been created!"
        else
            render :new
        end
    end

    private
  
    def sign_up_params
      params.require(:user).permit( :name, 
                                    :email, 
                                    :password,
                                    :image_url, 
                                    :avatar, 
                                    :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit( :name, 
                                    :email, 
                                    :password,
                                    :image_url, 
                                    :avatar,
                                    :password_confirmation, 
                                    :current_password)
    end
end