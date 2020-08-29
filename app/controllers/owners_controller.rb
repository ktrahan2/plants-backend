class OwnersController < ApplicationController
    def index
        owners = Owner.all
        render json: owners
    end

    def show
        owner = Owner.find(params[:id])
        render json: owner
    end

    def create
        owner = Owner.create(
            name: params[:name]
        )
        render json: owner
    end

    def update
        owner = Owner.find(params[:id])

        owner.update(
            name: params[:name]
        )

        render json: owner
    end

    def destroy
        owner = Owner.find(params[:id])

        owner.destroy

        render json: "#{owner[:name]} has been removed"
    end


end