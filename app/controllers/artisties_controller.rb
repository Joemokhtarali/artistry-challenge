class ArtistiesController < ApplicationController
    before_action :find_artisty, only: [:show, :edit, :update]

    def index
        @artisties = Artisty.all 
    end 

    def show 

    end 

    def new 
        @artisty = Artisty.new 
        @artists = Artist.all
        @instruments = Instrument.all 
        
    end 

    def create 
        @artisty = Artisty.create(artisty_params)
        if @artisty.valid? 

        redirect_to artisty_path(@artisty)
        else 
            flash[:errors] = @artisty.errors.full_messages
        redirect_to new_artisty_path
        end 

    end 

    def edit 
        
    end 

    def update 
        @artisty.update(artisty_params)

        redirect_to artisty_path(@artisty)
    end 

    private 

    def artisty_params
        params.require(:artisty).permit(:artist_id, :instrument_id)
    end 

    def find_artisty 
        @artisty = Artisty.find(params[:id])
    end 
end
