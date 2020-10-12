class PostsController < ApplicationController
    def new
    end
    def create
         @post = Post.new(post_params)
         if @post.save 
             flash[:success] = "Successfully saved"
             redirect_to root_path
         else 
            flash[:danger] = "Save failed"
            redirect_to new_post_path
         end
    end

    def show
         @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy 

        redirect_to user_path(current_user)
    end

    private

    def post_params
        params.require(:post).permit(:description,:image,:user_id)
    end
end
