class ApplicationController < ActionController::Base
  before_filter :set_categories

  def set_categories
    @categories = Category.all
  end

  protect_from_forgery with: :exception
end
