RailsAdmin.config do |config|

  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except ['MainPage', 'AboutUsPage', 'ContactsPage']
    end
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end


  config.model Category do
    field :name
    field :content, :ck_editor
    field :image
  end

  config.model MainPage do
    field :content, :ck_editor
  end

  config.model AboutUsPage do
    field :content, :ck_editor
  end

  config.model ContactsPage do
    field :content, :ck_editor
  end

end
