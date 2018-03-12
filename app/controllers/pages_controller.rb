class PagesController < ApplicationController

    def index
        @photo = Photo.all.order('created_at desc').paginate(page: params[:page], per_page: 1)
        respond_to do |format|
            format.html
            format.js
        end
    end

end
