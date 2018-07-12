module Api
  module V1
    class RecipesController < BaseController

      def index
        render json: RecipeService.new(search_params).search
      end

      private

      def search_params
        params.permit(:q)
      end
    end
  end
end
