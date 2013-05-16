# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

RedmineApp::Application.routes.draw do
    match '/repobrowser/toolbarmod', :to => 'repobrowser#toolbarmod'
    match '/repobrowser/:project_id/show', :to => 'repobrowser#show'
    match '/repobrowser/:project_id/content', :to => 'repobrowser#content'
end
