class PhotosController < ApplicationController

    def index
    end

    def new 
        @post = Post.new
    end

    def create
        @post = Post.new post_params

        if @post.save
            redirect_to @post, notice: "Your article was successfuly saved."
        else
            render 'new', notice: "Your article was not saved successfully."
    end

    private

    def post_params
        params.require(:post).permit(:location)
    end

end
