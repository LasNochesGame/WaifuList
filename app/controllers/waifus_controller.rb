class WaifusController < ApplicationController 
    def new 
    end

    def create
        @waifu = Waifu.new(params.require(:waifu).permit(:name, :age, :anime, :description, :main, :avatar))
        @waifu.save
        redirect_to root_path
    end

    def edit
        @waifu = Waifu.find(params[:id])
    end

    def update
        @waifu = Waifu.find(params[:id])
        @waifu.update(params.require(:waifu).permit(:name, :age, :anime, :description, :main, :avatar))
        redirect_to root_path
    end

    def destroy
        @waifu = Waifu.find(params[:id])
        @waifu.delete
        redirect_to root_path
    end

    def show
        @waifu = Waifu.find(params[:id])
    end

    def index
        @waifus = Waifu.all
    end
end