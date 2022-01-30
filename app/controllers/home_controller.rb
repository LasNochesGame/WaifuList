class HomeController < ApplicationController
    def welcome
        @waifus = Waifu.all
    end

    def search
        @waifus = Waifu.where('name like ? OR anime like ?',
        "%#{params[:q]}%", "%#{params[:q]}%")
    end

end