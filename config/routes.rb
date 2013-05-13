# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

RedmineApp::Application.routes.draw do
    match 'projects/:id/jqueryfiletree/show', :to => 'jqueryfiletree#show'
    match 'projects/:id/wiki/:wikiid/jqueryfiletree/show', :to => 'jqueryfiletree#show'
    match 'projects/:id/jqueryfiletree/content', :to => 'jqueryfiletree#content'
    match 'projects/:id/wiki/:wikiid/jqueryfiletree/content', :to => 'jqueryfiletree#content'
end
