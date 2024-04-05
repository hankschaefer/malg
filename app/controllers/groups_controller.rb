class GroupsController < ApplicationController
    skip_forgery_protection

    def home
    end
    
    def new
        @group = Group.new
    end

    def index
        @group = Group.new
        @groups = Group.all
    end

    def join 
        @group = Group.find(params[:id])
        if (group_params[:password] == @group.password) 
            current_user.update_attribute(:group_id, @group.id)
            @group.users << current_user
            current_user.group = @group
            redirect_to root_path
        else
            flash[:notice] = "Wrong password!"
            render 'new'
        end
    end

    def leave
        @group = Group.find(params[:id])
        @group.users.delete(current_user)
        current_user.group = nil
        redirect_to root_path
    end

    def create
        @group = Group.new group_params
        @group.password = group_params[:password]
        if @group.save
            current_user.update_attribute(:group_id, @group.id)
            @group.users << current_user
            current_user.group = @group
            redirect_to home_group_path(current_user.id)
        else
            render 'new'
        end
    end

    def show
        @group = Group.find params[:id]
    end

    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        current_user.update_attribute(:group_id, nil)
    
        redirect_to root_path

        # @user = User.find(params[:user_id])
        # @group = @user.group.find(params[:id])
        # @group.destroy
        # redirect_to root_path, status: :see_other
    end
    
      private
        def group_params
          params.require(:group).permit(:name, :password, :group_id)
        end
end
