class PagesController < ApplicationController

    def index
        @photo = Photo.all.limit(20).order('created_at desc')
    end

    def about
        
    end

end
