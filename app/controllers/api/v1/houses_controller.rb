class Api::V1::HousesController < ApplicationController
    def index
        @houses=House.all
    end

    def show
        @house=House.find(:params)
    end

    def new
   
    end
    
    def create
    #     @recipe = Recipe.find(params[:recipe_id])
    #     @recipe_food = @recipe.recipe_foods.new(params[:recipe_food].permit(:food_id, :quantity))
    # if @recipe_food.save
    #       redirect_to recipe_path(@recipe_food.recipe_id)
    # else
    #       render 'new'
    # end
    end
    
    def destroy
        # @recipe_food = RecipeFood.find(params[:id])
        # @recipe_food.destroy
        # redirect_to recipe_path(@recipe_food.recipe_id)
    end
end
