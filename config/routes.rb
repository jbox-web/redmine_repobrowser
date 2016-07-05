get '/repobrowser/toolbarmod', :to => 'repobrowser#toolbarmod'
get '/repobrowser/:project_id/show', :to => 'repobrowser#show'
post '/repobrowser/:project_id/content', :to => 'repobrowser#content'
