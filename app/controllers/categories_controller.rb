class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(number: Integer(params[:id]))
    @title = @category.name

  end

end
