class SpicesController < ApplicationController

def index
    render json: Spice.all
end

def create
    render json: Spice.create(spice_params), status: :created
end

def update
    spice = Spice.find_by(id: params[:id])
    spice.update(spice_params)
    render json: spice
end

def destroy
    spice = Spice.find_by(id: params[:id])
    spice.destroy
    head :no_content
end

private

def spice_params
    params.permit(:title, :description, :image, :notes, :rating)
end

end
