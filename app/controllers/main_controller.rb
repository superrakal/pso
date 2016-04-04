class MainController < ApplicationController

  def index
    @page = MainPage.first
    @title = "Главная"
  end

  def about_us
    @page = AboutUsPage.first
    @title = "О нас"
  end

  def send_message
    MessageMailer.new_message(params[:name], params[:email], params[:message]).deliver_now
    render :nothing => true, :status => :ok
  end

end
