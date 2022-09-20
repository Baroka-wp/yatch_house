class Api::V1::HousesController < ApplicationController
    def index
        @houses=House.all
        render json: @houses
    end

    def show
        @house=House.find(:params)
        render json: @house
    end

    def new
   
    end
    
    def create
        @house=House.new(house_params)
        @house.save
    end
    
    def destroy
        # @recipe_food = RecipeFood.find(params[:id])
        # @recipe_food.destroy
        # redirect_to recipe_path(@recipe_food.recipe_id)
    end
end
