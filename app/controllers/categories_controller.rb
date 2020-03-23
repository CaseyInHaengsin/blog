class CategoriesController < ApplicationController
    before_action :set_category, only: [:edit, :update, :show, :destroy]
    def index
        @categories = Category.paginate(page: params[:page], per_page: 5)
    
        end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            flash[:success] = "Created category"
            redirect_to category_path(@category)
        else
            render 'new'
        end
    end

    def show

    end

    private
    def category_params
        params.require(:category).permit(:name)
    end
    def set_category
        @category = Category.find(params[:id])
    end

    

end