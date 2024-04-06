class UsersController < ApplicationController
    
    def profile
    end

    def show
      if (current_user.group_id != nil)
        @current_group = Group.find_by(id: current_user.group_id)
      else 
        @current_group = nil
      end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    
        redirect_to root_path, status: :see_other
      end
end
