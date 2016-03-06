class ContactsController < ApplicationController

  def index
    @page = ContactsPage.first
    @title = "Контакты"
  end

end
