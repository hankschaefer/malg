class UsersController < ApplicationController
    
    def profile
    end

    def show
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    
        redirect_to root_path, status: :see_other
      end
end
