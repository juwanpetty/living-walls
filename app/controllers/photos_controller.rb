class PhotosController < ApplicationController

    def index
    end

    def new 
        @photo = Photo.new
    end

    def create
        @photo = Photo.new photo_params

        if @photo.save
            redirect_to @photo, notice: "Your article was successfuly saved."
        else
            render 'new', notice: "Your article was not saved successfully."
        end
    end

    private

    def photo_params
        params.require(:photo).permit(:location)
    end

end
