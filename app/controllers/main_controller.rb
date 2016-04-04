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
    MessageMailerWorker.perform(params[:name], params[:email], params[:message])
    render :nothing => true, :status => :ok
  end
end
