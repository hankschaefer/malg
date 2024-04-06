class PostsController < ApplicationController
    def index
        if current_user.group_id != nil
            @group = Group.find_by(id: current_user.group_id)
            @posts = Group.find_by(id: current_user.group_id).posts
        else
            @group = nil
            @posts = nil
        end
    end

    def show
        @post = Post.find params[:id]
    end

    def new
        @post = Post.new
        @group = Group.find(current_user.group_id)
    end

    def create
        @group = Group.find(post_params[:group_id])
        @post = @group.posts.create(post_params)
        @post.user_id = current_user.id
        redirect_to group_posts_path
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to group_posts_path, status: :see_other
      end

    def post_params
        params.require(:post).permit(:title, :picture, :user_id, :group_id)
    end
end
