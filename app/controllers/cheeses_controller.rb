class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    # render json: cheese, except: [:created_at, :updated_at]
    render json: cheese, only: [:name, :price], methods: :summary
  end
end
