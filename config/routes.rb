# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'show', :to => 'show#index'

RedmineApp::Application.routes.draw do
    match 'jqueryfiletree/content', :to => 'jqueryfiletree#content', :via => [:get, :post]
end
