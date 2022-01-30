class HomeController < ApplicationController
    def welcome
        @waifus = Waifu.all
    end
end