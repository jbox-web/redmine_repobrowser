class ShowController < ApplicationController
  unloadable

  layout 'base'
  #before_filter :find_project, :except => [:show, :download]
  #before_filter :find_repository, :only => [:show, :download]
  #before_filter :authorize, :except => [:show, :download]

  def index
    @project = Project.find(2)
    #@project = Project.find(params[:project_id])
    #return if !User.current.allowed_to?(:browse_repository, @project)
    #@entries = @repository.entries(@path, @rev)
    #@repositories = @project.repositories
    @repository = @project.repository
    @entries = @repository.entries(path="Pictures")
    #@x = @repository.fetch_changesets
    #@entries ? render(:partial => 'dir_list_content') : render(:nothing => true)
    #render :text => @repository.identifier
    #render :text => @repository.entries
    #
    render :layout => 'reduced'
  end
end
