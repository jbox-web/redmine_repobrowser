# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

RedmineApp::Application.routes.draw do
    match 'projects/:id/jqueryfiletree', :to => 'jqueryfiletree#content', :via => [:get, :post]
end
