# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

RedmineApp::Application.routes.draw do
    match '/repobrowser/toolbarmod', :to => 'jqueryfiletree#toolbarmod'
    match '/repobrowser/:project_id/show', :to => 'jqueryfiletree#show'
    match '/repobrowser/:project_id/content', :to => 'jqueryfiletree#content'
end
