class PostsController < ApplicationController
    def index
        if (current_user.group != nil)
            @posts = current_user.group.posts
        else
            @posts = nil
        end
    end

    def show
        @post = Post.find params[:id]
    end

    def new
        @post = Post.new
    end

    def create
        @user = current_user
        @post = @user.posts.create(post_params)
        redirect_to user_post_path(current_user, @post)
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to user_posts_path, status: :see_other
      end

    def post_params
        params.require(:post).permit(:title, :picture, :user_id)
    end
end
