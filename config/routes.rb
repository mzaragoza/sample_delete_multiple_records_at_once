Rails.application.routes.draw do

  match "/pages_delete_selected" => "pages#delete_selected", :as => :delete_selected, via: :all
  root 'pages#index'
end
