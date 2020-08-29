class PlentsController < ApplicationController
    def index
        plent = Plent.all
        render json: plent, include: [:owner]
    end

    def show 
        plent = Plent.find(params[:id])
        render json: plent
    end

    def create
        plent = Plent.create(
            name: params[:name],
            age: params[:age],
            owner_id: params[:owner_id]
        )
        render json: plent
    end

    def update
        plent = Plent.find(params[:id])

        plent.update(
            name: params[:name]
        )
        render json: plent

    end

    def destroy
        plent = Plent.find(params[:id])

        plent.destroy

        render json: "#{plent.name} has been eradicated"

    end 

end
